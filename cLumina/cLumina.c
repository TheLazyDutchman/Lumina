#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "cLumina.h"
#include "parser.h"

void usage() {
	printf("usage: cLumina [-dump] [-r] <inputFile>\n");
	printf("	-dump: dumps the lexer output to stdout\n");
	printf("	-r: run the generated executable after compilation finished\n");
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

	//TODO: freeParser causes a segfault (probably tries to free a null pointer somewhere

	return 0;

}
