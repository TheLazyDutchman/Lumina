#include <stdlib.h>
#include <string.h>

#include "luminaString.h"

String* initString(Token value, uint16_t id) {
	String* str = malloc(sizeof(String));
	str->value = strndup(value.word + 1, value.wordLen - 2);
	str->id = id;

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
	list->strings[list->size] = initString(token, list->size);

	list->size++;

	if (list->size == list->maxSize) {
		list->maxSize *= 2;
		list->strings = reallocarray(list->strings, sizeof(String*), list->maxSize);
	}
}
