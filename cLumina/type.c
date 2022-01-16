#include "stdlib.h"
#include "string.h"

#include "type.h"

Type *initType(const char* name, Token token) {
	Type *type = malloc(sizeof(Type));

	type->name = strdup(name);
	type->token = token;

	return type;
}

void freeType(Type *type) {
	free(type->name);
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

void addType(TypeList* list, char* name, Token token) {
	list->types[list->size] = initType(name, token);

	list->size++;

	if (list->size == list->maxSize) {
		list->types = reallocarray(list->types, sizeof(Type*), list->maxSize * 2);
	}
}
