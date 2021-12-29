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