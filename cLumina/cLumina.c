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
	printf("usage: cLumina [-dump] [-r] <inputFile>\n");
	printf("	-dump: dumps the lexer output to stdout\n");
	printf("	-r: run the generated executable after compilation finished\n");
}

pid_t createChild(char* program, char** args) {
	pid_t child_pid = fork();
	if (child_pid == -1) {
		printf("[ERROR] could not generate child process to call '%s'\n", program);
		exit(1);
	}

	if (child_pid > 0) {
		printf("[CMD]");
		while (*args != NULL) {
			printf(" %s", *args);
			args++;
		}
		printf("\n");
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

	argv++;
	while (*argv != NULL) {
		if (strcmp(*argv, "-dump") == 0) {
			flags |= FLAG_DUMP;
		}
		else if (strcmp(*argv, "-r") == 0) {
			runFile = true;
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

	Parser* parser = initParser(fileName, assemblyFile, flags);
	parse(parser);

	if (parser->hadError) {
		exit(1);
	}

	freeParser(parser);

	char *nasmArgs[5] = {"nasm", "-f", "elf64", assemblyFile, NULL};
	int nasmStatus;
	
	pid_t nasm_pid = createChild("nasm", nasmArgs);

	if (waitpid(nasm_pid, &nasmStatus, WUNTRACED | WCONTINUED) == -1) {
		printf("[ERROR] problem occurred while running nasm\n");
		exit(1);
	}

	char* objectFile = getFileNameWithExtension(assemblyFile, ".o");

	char* executable = getFileNameWithExtension(objectFile, NULL);

	char *linkerArgs[6] = {"ld", "-s", "-o", executable, objectFile, NULL};
	int linkerStatus;

	pid_t linker_pid = createChild("ld", linkerArgs);

	if (waitpid(linker_pid, &linkerStatus, WUNTRACED | WCONTINUED) == -1) {
		printf("[ERROR] problem occurred while running linker\n");
		exit(1);
	}

	if (runFile) {
		createChild(executable, argv);
	}

	free(assemblyFile);
	free(objectFile);
	free(executable);

	return 0;

}
