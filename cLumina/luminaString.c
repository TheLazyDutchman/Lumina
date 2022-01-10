#include <stdlib.h>

#include "luminaString.h"

String* initString(Token value) {
	String* str = malloc(sizeof(String));
	str->value = value;

	return str;
}

void freeString(String* string) {
	free(string);
}

StringList* initStringList() {
	StringList* list = malloc(sizeof(StringList));

	list->size = 0;
	list->maxSize = 8;
	list->strings = malloc(sizeof(String*) * 8);

	return list;
}

void freeStringList(StringList* list) {
	for (int i = 0; i < list->size; i++) {
		freeString(list->strings[i]);
	}
	free(list->strings);
	free(list);
}

void addString(StringList* list, Token token) {
	list->strings[list->size] = initString(token);

	list->size++;

	if (list->size == list->maxSize) {
		list->strings = realloc(list->strings, list->maxSize * 2);
	}
}
