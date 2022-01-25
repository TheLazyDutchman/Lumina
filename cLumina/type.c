#include "stdlib.h"
#include "string.h"

#include "type.h"

Type *initType(const char* name, const Token token, size_t size, PropertyList *properties, Type **propertyTypes) {
	Type *type = malloc(sizeof(Type));

	type->name = strdup(name);
	type->token = token;
	type->size = size;
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

void freeProperty(Property *property) {
	free(property->name);
	free(property);
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
		list->types = reallocarray(list->types, sizeof(Property*), list->maxSize);
	}
}

PropertyList* initPropertyList() {
	PropertyList* list = malloc(sizeof(PropertyList));

	list->size = 0;
	list->maxSize = 8;
	list->properties = malloc(sizeof(Property*) * 8);

	return list;
}

void freePropertyList(PropertyList* list) {
	for (int i = 0; i < list->size; i++) {
		freeProperty(list->properties[i]);
	}
	free(list->properties);
	free(list);
}

Property *initProperty(char* name, int index, size_t offset) {
	Property *property = malloc(sizeof(Property));

	property->name = name;
	property->index = index;
	property->offset = offset;
	
	return property;
}

void addProperty(PropertyList* list, char* name, int index, size_t size) {
	list->properties[list->size] = initProperty(name, index, list->totalTypeSize);

	list->size++;
	list->totalTypeSize += size;

	if (list->size == list->maxSize) {
		list->maxSize *= 2;
		list->properties = reallocarray(list->properties, sizeof(Property*), list->maxSize);
	}
}
