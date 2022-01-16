#include <stdlib.h>
#include <stdio.h>

#include "variable.h"

Variable* initVariable(char* name, uint16_t position, uint16_t functionDepth, Type *type) {
	Variable* var = malloc(sizeof(Variable));
	var->name = name;
	var->position = position;
	var->type = type;
	var->functionDepth = functionDepth;

	return var;
}

void freeVariable(Variable* variable) {
	free(variable->name);
	freeType(variable->type);
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

void addVariable(VariableList* list, char* name, uint16_t position, uint16_t functionDepth, Type *type) {
	list->variables[list->size] = initVariable(name, position, functionDepth, type);

	list->size++;

	if (list->size == list->maxSize) {
		list->variables = reallocarray(list->variables, sizeof(Variable*), list->maxSize * 2);
	}
}
