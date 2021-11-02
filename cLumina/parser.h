#ifndef cLumina_parser_header
#define cLumina_parser_header

#include "lexer.h"

typedef struct {
	Lexer* lexer;
	Token* current;
	Token* last;
} Parser;

Parser* initParser(char* fileName);
void freeParser(Parser* parser);

void number(Parser* parser);
void unary(Parser* parser);
void binary(Parser* parser);
void expression(Parser* parser);

void parse(Parser* parser);

#endif
