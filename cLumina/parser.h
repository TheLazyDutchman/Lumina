#ifndef cLumina_parser_header
#define cLumina_parser_header

#include "lexer.h"
#include "compiler.h"

typedef enum {
	FLAG_DUMP = 1,
} ParseFlag;

typedef struct {
	Lexer* lexer;
	Token* current;
	Token* last;
	ParseFlag flags;

	FILE* outputFile;
} Parser;

Parser* initParser(char* inputName, char* outputName, ParseFlag flags);
void freeParser(Parser* parser);

void number(Parser* parser);
void unary(Parser* parser);
void binary(Parser* parser);
void expression(Parser* parser);

void parse(Parser* parser);

#endif
