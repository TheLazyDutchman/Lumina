#ifndef cLumina_type_header
#define cLumina_type_header

#include <stdbool.h>

#include "lexer.h"

typedef struct {
	char* name;
	int index;
	size_t offset;
} Property;

typedef struct {
	size_t size;
	size_t maxSize;
	size_t totalTypeSize;
	Property **properties;
} PropertyList;

typedef struct Type{
	char* name;
	size_t size;
	Token token;
	PropertyList *properties;
	struct Type **propertyTypes;
	bool isArray;
	struct Type *arrayType;
} Type;

typedef struct {
	size_t size;
	size_t maxSize;
	Type** types;
} TypeList;

PropertyList* initPropertyList();
void freePropertyList();

Property *findProperty(PropertyList *list, char *name, int nameLen);
void addProperty(PropertyList* list, char* name, int index, size_t size);
void freeProperty(Property *property);

TypeList* initTypeList();
void freeTypeList(TypeList* list);

void addType(TypeList* list, Type *type);

Type *initType(const char* name, const Token token, size_t size, PropertyList *properties, Type **propertyTypes, bool isArray, Type *arrayType);
void freeType(Type *type);

#endif
