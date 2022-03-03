#ifndef cLumina_string_header
#define cLumina_string_header

#include <stdint.h>

#include "lexer.h"

typedef struct {
	char *value;
	uint16_t id;
} String;

typedef struct {
	size_t size;
	size_t maxSize;
	String** strings;
} StringList;

StringList* initStringList();
void freeStringList(StringList* list);

void addString(StringList* list, Token value);

#endif
