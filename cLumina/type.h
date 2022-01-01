#ifndef cLumina_type_header
#define cLumina_type_header

#include "lexer.h"

typedef struct {
	char* name;
	Token token;
} Type;

typedef struct {
	size_t size;
	size_t maxSize;
	Type** types;
} TypeList;

TypeList* initTypeList();
void freeTypeList(TypeList* list);

void addType(TypeList* list, char* name, Token token);

Type *initType(const char* name, Token token);
void freeType(Type *type);

#endif
