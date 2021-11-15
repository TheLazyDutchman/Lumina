#include <stdlib.h>

#include "variable.h"

void freeVariable(Variable* variable) {
	free(variable->name);
	free(variable);
}

VariableList* initVariableList() {
	VariableList* list = malloc(sizeof(VariableList));

	list->size = 0;
	list->maxSize = 8;
	list->variables = malloc(sizeof(Variable) * 8);

	return list;
}

void freeVariableList(VariableList* list) {
	for (int i = 0; i < list->size; i++) {
		free(list->variables[i]->name);
	}
	free(list->variables);
	free(list);
}

void addVariable(VariableList* list, char* name, uint16_t position) {
	list->variables[list->size]->name = name;
	list->variables[list->size]->position = position;

	list->size++;

	if (list->size == list->maxSize) {
		list->variables = realloc(list->variables, list->maxSize * 2);
	}
}
