#include <stdlib.h>

#include "parser.h"

Parser* initParser(char* fileName) {
	Parser* parser;

	parser->lexer = initLexer(fileName);
	parser->current = nextToken(parser->lexer);
	
	return parser;
}

void freeParser(Parser* parser) {
	freeLexer(parser->lexer);
	free(parser);
}

