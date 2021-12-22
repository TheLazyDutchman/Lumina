#include <stdlib.h>

#include "function.h"

Function* initFunction(char* name, uint16_t id, Type *returnType) {
	Function* var = malloc(sizeof(Function));
	var->name = name;
	var->id = id;
	var->returnType = returnType;

	return var;
}

void freeFunction(Function* function) {
	free(function->name);
	freeType(function->returnType);
	free(function);
}

FunctionList* initFunctionList() {
	FunctionList* list = malloc(sizeof(FunctionList));

	list->size = 0;
	list->maxSize = 8;
	list->functions = malloc(sizeof(Function*) * 8);

	return list;
}

void freeFunctionList(FunctionList* list) {
	for (int i = 0; i < list->size; i++) {
		freeFunction(list->functions[i]);
	}
	free(list->functions);
	free(list);
}

void addFunction(FunctionList* list, char* name, uint16_t id, Type *returnType) {
	list->functions[list->size] = initFunction(name, id, returnType);

	list->size++;

	if (list->size == list->maxSize) {
		list->functions = realloc(list->functions, list->maxSize * 2);
	}
}
