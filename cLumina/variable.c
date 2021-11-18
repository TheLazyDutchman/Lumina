#include <stdlib.h>

#include "variable.h"

Variable* initVariable(char* name, uint16_t position) {
	Variable* var = malloc(sizeof(Variable));
	var->name = name;
	var->position = position;

	return var;
}

void freeVariable(Variable* variable) {
	free(variable->name);
	free(variable);
}

VariableList* initVariableList() {
	VariableList* list = malloc(sizeof(VariableList));

	list->size = 0;
	list->maxSize = 8;
	list->variables = malloc(sizeof(Variable*) * 8);

	return list;
}

void freeVariableList(VariableList* list) {
	for (int i = 0; i < list->size; i++) {
		freeVariable(list->variables[i]);
	}
	free(list->variables);
	free(list);
}

void addVariable(VariableList* list, char* name, uint16_t position) {
	list->variables[list->size] = initVariable(name, position);

	list->size++;

	if (list->size == list->maxSize) {
		list->variables = realloc(list->variables, list->maxSize * 2);
	}
}
