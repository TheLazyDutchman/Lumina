#ifndef cLumina_parser_header
#define cLumina_parser_header

#include <stdbool.h>

#include "lexer.h"
#include "compiler.h"
#include "type.h"
#include "luminaString.h"

typedef enum {
	FLAG_DUMP = 1,
} ParseFlag;

typedef struct {
	Lexer* lexer;
	Token* current;
	Type* lastType;
	ParseFlag flags;

	Compiler* compiler;
	FILE* outputFile;

	int numIfs;
	int numWhiles;
	int numFuncs;

	StringList *strings;

	bool hadError;
} Parser;

Parser* initParser(char* inputName, char* outputName, ParseFlag flags);
void freeParser(Parser* parser);

void number(Parser* parser);
void character(Parser* parser);
void string(Parser* parser);
void readIndex(Parser* parser);
void identifier(Parser* parser);
void unary(Parser* parser);
void binary(Parser* parser);
void expression(Parser* parser);
void condition(Parser* parser);
void whileStatement(Parser* parser);
void ifStatement(Parser* parser);
void variableDefinition(Parser* parser);
void block(Parser* parser, Function *func, TypeList *parameters);
void statement(Parser* parser);
void returnStatement(Parser* parser);

void parse(Parser* parser);

#endif
