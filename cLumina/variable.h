#ifndef cLumina_variable_header
#define cLumina_variable_header

#include <stdint.h>

typedef struct {
	char* name;
	uint16_t position;
} Variable;

typedef struct {
	size_t size;
	size_t maxSize;
	Variable** variables;
} VariableList;

VariableList* initVariableList();
void freeVariableList(VariableList* list);

void addVariable(VariableList* list, char* name, uint16_t position);

#endif
