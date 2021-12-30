#ifndef cLumina_compiler_header
#define cLumina_compiler_header

#include <stdio.h>

#include "variable.h"
#include "function.h"

#define CALLSTACKSIZE 2048

typedef struct Compiler{
	FILE* output;
	size_t currentStackSize;
	VariableList* variableList;
	FunctionList* functionList;
	Function *function;
	struct Compiler* outer;
} Compiler;

Compiler* initCompiler(FILE* output, Compiler* outer);
void freeCompiler(Compiler* compiler);

void defineVariable(Compiler* compiler, char* name, int nameLen, Type *type);
int16_t findVariable(Compiler* compiler, char* name, int nameLen);
Type *findVariableType(Compiler* compiler, char* name, int nameLen);

void defineFunction(Compiler* compiler, char* name, int nameLen, int id, Type *type);
int16_t findFunctionId(Compiler* compiler, char* name, int nameLen);
Function *findFunction(Compiler* compiler, char* name, int nameLen);

void writeHeader(Compiler* compiler);
void writeFooter(Compiler* compiler);
void writePop(Compiler* compiler, int amount);

void writeAddress(Compiler* compiler, char* address, uint32_t id);
void writeBeginFunction(Compiler* compiler, uint32_t id);
void writeCall(Compiler* compiler, uint32_t id, uint16_t numCalls);
void writeReturn(Compiler* compiler);
void writeCompare(Compiler* compiler);

void writeLess(Compiler* compiler);
void writeLessEqual(Compiler* compiler);
void writeGreater(Compiler* compiler);
void writeGreaterEqual(Compiler* compiler);
void writeEqual(Compiler* compiler);
void writeCondition(Compiler* compiler);

void writeJump(Compiler* compiler, char* address, uint32_t id);
void writeJumpNotEqual(Compiler* compiler, char* address, uint32_t id);

void writeNumber(Compiler* compiler, int value);
void writeCharacter(Compiler* compiler, char value);
void writeIdentifier(Compiler* compiler, int offset);
void writeAssignment(Compiler* compiler, int offset);

void writeAdd(Compiler* compiler);
void writeSubtract(Compiler* compiler);
void writeNegative(Compiler* compiler);

void writePrint(Compiler* compiler); //temporary print function

#endif
