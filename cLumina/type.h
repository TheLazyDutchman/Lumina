#ifndef cLumina_type_header
#define cLumina_type_header

#include "lexer.h"

typedef struct {
	char* name;
	Token token;
} Type;

Type *initType(const char* name, Token token);
void freeType(Type *type);

#endif
