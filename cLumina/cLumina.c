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

int main(int argc, char *argv[]) {
	ParseFlag flags = 0;
	char* fileName = NULL;

	argv++;
	while (*argv != NULL) {
		if (strcmp(*argv, "-dump") == 0) {
			flags |= FLAG_DUMP;
		}
		else {
			fileName = *argv;
		}
		argv++;
	}

	if (fileName == NULL) {
		printf("[ERROR] expected fileName\n");
		usage();
		exit(1);
	}

	Parser* parser = initParser(fileName, flags);
	parse(parser);
	freeParser(parser);

	char *nasmArgs[5] = {"nasm", "-f", "elf64", "output.asm", NULL};
	int nasmStatus;
	
	pid_t nasm_pid = createChild("nasm", nasmArgs);

	if (waitpid(nasm_pid, &nasmStatus, WUNTRACED | WCONTINUED) == -1) {
		printf("[ERROR] problem occurred while running nasm\n");
		exit(1);
	}

	char* outputName = strdup(fileName);
	char* lastDot = rindex(outputName, '.');
	int outputLen = lastDot - outputName;
	outputName[outputLen] = '\0';

	char *linkerArgs[6] = {"ld", "-s", "-o", outputName, "output.o", NULL};
	int linkerStatus;

	pid_t linker_pid = createChild("ld", linkerArgs);

	if (waitpid(linker_pid, &linkerStatus, WUNTRACED | WCONTINUED) == -1) {
		printf("[ERROR] problem occurred while running linker\n");
		exit(1);
	}

	free(outputName);

	return 0;

}
