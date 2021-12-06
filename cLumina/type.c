#include "stdlib.h"
#include "string.h"

#include "type.h"

Type *initType(char* name) {
	Type *type = malloc(sizeof(Type));

	type->name = strdup(name);
}

void freeType(Type *type) {
	free(type->name);
	free(type);
}
