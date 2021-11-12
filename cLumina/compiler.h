#ifndef cLumina_compiler_header
#define cLumina_compiler_header

#include <stdio.h>

void writeHeader(FILE* output);
void writeFooter(FILE* output);

void writeNumber(FILE* output, int value);
void writeCharacter(FILE* output, char value);

void writeAdd(FILE* output);
void writeSubtract(FILE* output);
void writeNegative(FILE* output);

#endif
