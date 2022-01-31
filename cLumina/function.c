#include <stdlib.h>

#include "function.h"

Function* initFunction(char* name, uint16_t id, Type *returnType, VariableList *parameters) {
	Function* func = malloc(sizeof(Function));
	func->name = name;
	func->returnType = returnType;
	func->parameters = parameters;
	func->id = id;
	func->numCalls = 0;

	return func;
}

void freeFunction(Function* function) {
	free(function->name);
	freeVariableList(function->parameters);
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

void addFunction(FunctionList* list, char* name, uint16_t id, Type *returnType, VariableList *parameters) {
	list->functions[list->size] = initFunction(name, id, returnType, parameters);

	list->size++;

	if (list->size == list->maxSize) {
		list->maxSize *= 2;
		list->functions = reallocarray(list->functions, sizeof(Function*), list->maxSize);
	}
}
