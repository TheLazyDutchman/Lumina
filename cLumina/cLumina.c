#include <stdio.h>

#include "cLumina.h"
#include "parser.h"

void usage() {
	printf("usage: cLumina inputFile\n");
}

int main(int argc, char *argv[]) {
	if (argc < 2) {
		usage();
		return -1;
	}

	char *fileName = argv[1];

	Parser* parser = initParser(fileName);
	parse(parser);

	freeParser(parser);

	return 0;
}
