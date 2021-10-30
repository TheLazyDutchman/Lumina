#ifndef cLumina_parser_header
#define cLumina_parser_header

#include "lexer.h"

typedef struct {
	Lexer* lexer;
	Token* current;
} Parser;

Parser* initParser(char* fileName);
void freeParser(Parser* parser);

void parse(Parser* parser);

#endif
