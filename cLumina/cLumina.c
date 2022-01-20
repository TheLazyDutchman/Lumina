#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <unistd.h>

#include <sys/wait.h>

#include "cLumina.h"
#include "parser.h"

void usage() {
	printf("usage: cLumina [-dump] [-debug] [-r] [-s] [-check] <inputFile>\n");
	printf("	-dump: dumps the lexer output to stdout\n");
	printf("	-debug: generate a file that can be debugged by gdb\n");
	printf("	-r: run the generated executable after compilation finished\n");
	printf("	-s: suppress compiler output in stdout\n");
	printf("	-check: checks inputfile for errors, but doesn't generate code\n");
}

pid_t createChild(char* program, char** args, bool suppressOutput) {
	pid_t child_pid = fork();
	if (child_pid == -1) {
		printf("[ERROR] could not generate child process to call '%s'\n", program);
		exit(1);
	}

	if (child_pid > 0) {
		if (!suppressOutput) {
			printf("[CMD]");
			while (*args != NULL) {
				printf(" %s", *args);
				args++;
			}
			printf("\n");
		}
	}
	else {
		execvp(program, args);
		printf("[ERROR] problem occurred when trying to call %s\n", program);
		exit(1);
	}

	return child_pid;
}

char* getFileNameWithExtension(const char* fileName, const char* extension) {
	int fileLen = strlen(fileName);
	int extLen = 0;
	if (extension != NULL) {
		extLen = strlen(extension);
	}

	char* dotPos = rindex(fileName, '.');
	char* slashPos = rindex(fileName, '/'); //TODO: I don't think all filepaths use '/', this should be more general
	if (dotPos > slashPos) {
		fileLen = dotPos - fileName;
	}

	char* buffer = malloc(fileLen + extLen + 1);

	memcpy(buffer, fileName, fileLen);
	memcpy(buffer + fileLen, extension, extLen);
	buffer[fileLen + extLen] = '\0';

	return buffer;
}

int main(int argc, char *argv[]) {
	ParseFlag flags = 0;
	char* fileName = NULL;
	bool runFile = false;
	bool debug = false;
	bool suppress = false;
	bool check = false;

	argv++;
	while (*argv != NULL) {
		if (strcmp(*argv, "-dump") == 0) {
			flags |= FLAG_DUMP;
		}
		else if (strcmp(*argv, "-r") == 0) {
			runFile = true;
		}
		else if (strcmp(*argv, "-debug") == 0) {
			debug = true;
		}
		else if (strcmp(*argv, "-s") == 0) {
			suppress = true;
		}
		else if (strcmp(*argv, "-check") == 0) {
			check = true;
		}
		else {
			fileName = *argv;
			break;
		}
		argv++;
	}

	if (fileName == NULL) {
		printf("[ERROR] expected fileName\n");
		usage();
		exit(1);
	}

	char* assemblyFile = getFileNameWithExtension(fileName, ".asm");

	if (check) {
		assemblyFile = "outputCheck.asm";
	}

	Parser* parser = initParser(fileName, assemblyFile, flags);

	if (!suppress) {
		printf("[FILE] read file '%s'\n", fileName);
	}

	parse(parser);

	if (parser->hadError) {
		if (check) {
			remove(assemblyFile);
			printf("[CHECK] got errors in '%s'\n", fileName);
		}

		exit(1);
	}

	if (check) {
		remove(assemblyFile);
		printf("[CHECK] successfully checked '%s'\n", fileName);
		exit(0);
	}

	freeParser(parser);

	char* nasmDebugArgs[] = {"nasm", "-f", "elf64", "-F", "dwarf", "-g", assemblyFile, NULL};
	char* nasmArgs[] = {"nasm", "-f", "elf64", assemblyFile, NULL};

	int nasmStatus;

	pid_t nasm_pid;
	
	if (debug) {
		nasm_pid = createChild("nasm", nasmDebugArgs, suppress);
	} else {
		nasm_pid = createChild("nasm", nasmArgs, suppress);
	}

	if (waitpid(nasm_pid, &nasmStatus, WUNTRACED | WCONTINUED) == -1) {
		printf("[ERROR] problem occurred while running nasm\n");
		exit(1);
	}

	char* objectFile = getFileNameWithExtension(assemblyFile, ".o");

	char* executable = getFileNameWithExtension(objectFile, NULL);

	char *linkerArgs[] = {"ld", "-o", executable, objectFile, NULL};
	int linkerStatus;

	pid_t linker_pid = createChild("ld", linkerArgs, suppress);

	if (waitpid(linker_pid, &linkerStatus, WUNTRACED | WCONTINUED) == -1) {
		printf("[ERROR] problem occurred while running linker\n");
		exit(1);
	}

	if (runFile) {
		int fileStatus;

		pid_t file_pid = createChild(executable, argv, suppress);

		if (waitpid(file_pid, &fileStatus, WUNTRACED | WCONTINUED) == -1) {
			printf("[ERROR] problem occurred while running file\n");
			exit(1);
		}
	}

	free(assemblyFile);
	free(objectFile);
	free(executable);

	return 0;

}
