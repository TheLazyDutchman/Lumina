#include "stdlib.h"
#include "string.h"

#include "type.h"

Type *initType(const char* name, const Token token, Property **properties, Type **propertyTypes) {
	Type *type = malloc(sizeof(Type));

	type->name = strdup(name);
	type->token = token;
	type->properties = properties;
	type->propertyTypes = propertyTypes;

	return type;
}

void freeType(Type *type) {
	free(type->name);
	free(type->properties);
	free(type->propertyTypes);
	free(type);
}


TypeList* initTypeList() {
	TypeList* list = malloc(sizeof(TypeList));

	list->size = 0;
	list->maxSize = 8;
	list->types = malloc(sizeof(Type*) * 8);

	return list;
}

void freeTypeList(TypeList* list) {
	for (int i = 0; i < list->size; i++) {
		freeType(list->types[i]);
	}
	free(list->types);
	free(list);
}

void addType(TypeList* list, Type *type) {
	list->types[list->size] = type;

	list->size++;

	if (list->size == list->maxSize) {
		list->maxSize *= 2;
		list->types = reallocarray(list->types, sizeof(Type*), list->maxSize);
	}
}
