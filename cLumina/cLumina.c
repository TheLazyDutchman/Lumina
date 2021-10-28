#include <stdio.h>

#include "cLumina.h"
#include "lexer.h"

void usage() {
	printf("usage: cLumina inputFile\n");
}

int main(int argc, char *argv[]) {
	if (argc < 2) {
		usage();
		return -1;
	}

	char *fileName = argv[1];
	printf("[FILE] opening file '%s'\n", fileName);

	Lexer *lexer = initLexer(fileName);
	Token *token = nextToken(lexer);

	while (token->type != END_OF_FILE) {
		printf("[%s] at line %d: '%s'\n", tokenTypes[token->type], token->line, token->word);
		freeToken(token);
		token = nextToken(lexer);
	}
	printf("[%s] at line %d: '%s'\n", tokenTypes[token->type], token->line, token->word);
	freeToken(token);
	
	freeLexer(lexer);
	return 0;
}
