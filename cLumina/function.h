#ifndef cLumina_function_header
#define cLumina_function_header

#include <stdint.h>

#include "type.h"

typedef struct {
	char* name;
	Type *returnType;
	uint16_t id;
	uint16_t numCalls;
} Function;

typedef struct {
	size_t size;
	size_t maxSize;
	Function** functions;
} FunctionList;

FunctionList* initFunctionList();
void freeFunctionList(FunctionList* list);

void addFunction(FunctionList* list, char* name, uint16_t id, Type *returnType);

#endif
