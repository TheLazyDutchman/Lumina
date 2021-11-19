#ifndef cLumina_compiler_header
#define cLumina_compiler_header

#include <stdio.h>

#include "variable.h"

typedef struct Compiler{
	FILE* output;
	size_t currentStackSize;
	VariableList* variableList;
	struct Compiler* outer;
	uint32_t numIfs;
} Compiler;

Compiler* initCompiler(FILE* output, Compiler* outer);
void freeCompiler(Compiler* compiler);

void defineVariable(Compiler* compiler, char* name, int nameLen);
uint16_t findVariable(Compiler* compiler, char* name, int nameLen);

void writeHeader(Compiler* compiler);
void writeFooter(Compiler* compiler);
void writePop(Compiler* compiler, int amount);

void writeAddress(Compiler* compiler, char* address, uint32_t id);
void writeCompare(Compiler* compiler);
void writeJumpNotEqual(Compiler* compiler, char* address, uint32_t id);

void writeNumber(Compiler* compiler, int value);
void writeCharacter(Compiler* compiler, char value);
void writeIdentifier(Compiler* compiler, int offset);

void writeAdd(Compiler* compiler);
void writeSubtract(Compiler* compiler);
void writeNegative(Compiler* compiler);

void writePrint(Compiler* compiler); //temporary print function

#endif
