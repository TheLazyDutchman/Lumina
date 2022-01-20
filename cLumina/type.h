#ifndef cLumina_type_header
#define cLumina_type_header

#include "lexer.h"

typedef struct Type{
	char* name;
	Token token;
	struct Type **properties;
} Type;

typedef struct {
	size_t size;
	size_t maxSize;
	Type** types;
} TypeList;

TypeList* initTypeList();
void freeTypeList(TypeList* list);

void addType(TypeList* list, Type *type);

Type *initType(const char* name, const Token token, Type **properties);
void freeType(Type *type);

#endif
