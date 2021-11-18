#ifndef cLumina_compiler_header
#define cLumina_compiler_header

#include <stdio.h>

#include "variable.h"

typedef struct Compiler{
	FILE* output;
	size_t currentStackSize;
	VariableList* variableList;
	struct Compiler* outer;
} Compiler;

Compiler* initCompiler(FILE* output, Compiler* outer);
void freeCompiler(Compiler* compiler);

void defineVariable(Compiler* compiler, char* name, int nameLen);
uint16_t findVariable(Compiler* compiler, char* name, int nameLen);

void writeHeader(Compiler* compiler);
void writeFooter(Compiler* compiler);
void writePop(Compiler* compiler, int amount);

void writeAddres(Compiler* compiler, char* address);
void writeCompare(Compiler* compiler);
void writeJumpNotEqual(Compiler* compiler, char* address);

void writeNumber(Compiler* compiler, int value);
void writeCharacter(Compiler* compiler, char value);
void writeIdentifier(Compiler* compiler, int offset);

void writeAdd(Compiler* compiler);
void writeSubtract(Compiler* compiler);
void writeNegative(Compiler* compiler);

#endif
