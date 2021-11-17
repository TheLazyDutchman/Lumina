#include <stdlib.h>
#include <string.h>

#include "compiler.h"

Compiler* initCompiler(FILE* output) {
	Compiler* compiler = malloc(sizeof(Compiler));
	compiler->output = output;
	compiler->currentStackSize = 0;
	compiler->variableList = initVariableList();

	return compiler;
}

void freeCompiler(Compiler* compiler) {
	freeVariableList(compiler->variableList);
	free(compiler);
}

void defineVariable(Compiler* compiler, char* name, int nameLen) {
	char* buffer = strndup(name, nameLen);

	addVariable(compiler->variableList, buffer, compiler->currentStackSize);
}

uint16_t findVariable(Compiler* compiler, char* name, int nameLen) {
	VariableList list = *compiler->variableList;

	for (int i = 0; i < list.size; i++) {
		if (strncmp(list.variables[i]->name, name, nameLen) == 0) {
			return compiler->currentStackSize - list.variables[i]->position;
		}
	}
	
	return -1;
}

void writeHeader(Compiler* compiler) {
	fprintf(compiler->output, "section .text\n");
	fprintf(compiler->output, "global _start\n");
	fprintf(compiler->output, "_start:\n");
}

void writePop(Compiler* compiler, int amount) {
	fprintf(compiler->output, "	;; -- pop --\n");
	fprintf(compiler->output, "	add rsp, %d\n\n", 8*amount);

	compiler->currentStackSize -= amount;
}

void writeNumber(Compiler* compiler, int value) {
	fprintf(compiler->output, "	;; -- number --\n");
	fprintf(compiler->output, "	mov rax, %d\n", value);
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize++;
}

void writeCharacter(Compiler* compiler, char value) {
	fprintf(compiler->output, "	;; -- character --\n");
	fprintf(compiler->output, "	mov rax, %d\n", value);
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize++;
}

void writeIdentifier(Compiler* compiler, int offset) {
	fprintf(compiler->output, "	;; -- identifier --\n");
	fprintf(compiler->output, "	mov rax, rsp\n");
	fprintf(compiler->output, "	mov rbx, %d\n", 8 * offset);
	fprintf(compiler->output, "	sub rax, rbx\n");
	fprintf(compiler->output, "	mov rax, [rax]\n");
	fprintf(compiler->output, "	push rax\n\n");
}

void writeAdd(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- add --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	add rax, rbx\n");
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize--;
}

void writeSubtract(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- subtract --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	sub rax, rbx\n");
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize--;
}

void writeNegative(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- negative --\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	neg rax\n");
	fprintf(compiler->output, "	push rax\n\n");
}

void writeFooter(Compiler* compiler) {
	//temporarily write final result as a single character to stdout
	fprintf(compiler->output, "	mov rax, 1\n");
	fprintf(compiler->output, "	mov rdi, 1\n");
	fprintf(compiler->output, "	mov rsi, rsp\n");
	fprintf(compiler->output, "	mov rdx, 1\n");
	fprintf(compiler->output, "	syscall\n");

	compiler->currentStackSize--;

	fprintf(compiler->output, "	mov rax, 60\n");
	fprintf(compiler->output, "	xor rdi, rdi\n");
	fprintf(compiler->output, "	syscall\n");
}
