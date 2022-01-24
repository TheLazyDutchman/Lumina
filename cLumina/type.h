#ifndef cLumina_type_header
#define cLumina_type_header

#include "lexer.h"

typedef struct {
	char* name;
	int index;
} Property;

typedef struct {
	size_t size;
	size_t maxSize;
	Property **properties;
} PropertyList;

typedef struct Type{
	char* name;
	Token token;
	PropertyList *properties;
	struct Type **propertyTypes;
} Type;

typedef struct {
	size_t size;
	size_t maxSize;
	Type** types;
} TypeList;

PropertyList* initPropertyList();
void freePropertyList();

void addProperty(PropertyList* list, char* name, int index);
void freeProperty(Property *property);

TypeList* initTypeList();
void freeTypeList(TypeList* list);

void addType(TypeList* list, Type *type);

Type *initType(const char* name, const Token token, PropertyList *properties, Type **propertyTypes);
void freeType(Type *type);

#endif
