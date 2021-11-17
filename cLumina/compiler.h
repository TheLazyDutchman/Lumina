#ifndef cLumina_compiler_header
#define cLumina_compiler_header

#include <stdio.h>

#include "variable.h"

typedef struct {
	FILE* output;
	size_t currentStackSize;
	VariableList* variableList;
} Compiler;

Compiler* initCompiler(FILE* output);
void freeCompiler(Compiler* compiler);

void defineVariable(Compiler* compiler, char* name);
uint16_t findVariable(Compiler* compiler, char* name);

void writeHeader(Compiler* compiler);
void writeFooter(Compiler* compiler);
void writePop(Compiler* compiler, int amount);

void writeNumber(Compiler* compiler, int value);
void writeCharacter(Compiler* compiler, char value);
void writeIdentifier(Compiler* compiler, int offset);

void writeAdd(Compiler* compiler);
void writeSubtract(Compiler* compiler);
void writeNegative(Compiler* compiler);

#endif
