#ifndef Lumina_lexer_header
#define Lumina_lexer_header

#include <stdint.h>
#include <stdio.h>

typedef struct Lexer{
	char *dataStream;
	uint16_t line;
}Lexer;

Lexer initLexer(FILE *fd);
void freeLexer();

#endif
