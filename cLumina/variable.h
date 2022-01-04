#ifndef cLumina_variable_header
#define cLumina_variable_header

#include <stdint.h>

#include "type.h"

typedef struct {
	char* name;
	uint16_t position;
	uint16_t functionDepth;
	Type *type;
} Variable;

typedef struct {
	size_t size;
	size_t maxSize;
	Variable** variables;
} VariableList;

VariableList* initVariableList();
void freeVariableList(VariableList* list);

void addVariable(VariableList* list, char* name, uint16_t position, uint16_t functionDepth, Type *type);

#endif
