#ifndef cLumina_type_header
#define cLumina_type_header

#include "lexer.h"

typedef struct {
	char* name;
	int index;
} Property;

typedef struct Type{
	char* name;
	Token token;
	Property **properties;
	struct Type **propertyTypes;
} Type;

typedef struct {
	size_t size;
	size_t maxSize;
	Type** types;
} TypeList;

TypeList* initTypeList();
void freeTypeList(TypeList* list);

void addType(TypeList* list, Type *type);

Type *initType(const char* name, const Token token, Property **properties, Type **propertyTypes);
void freeType(Type *type);

#endif
