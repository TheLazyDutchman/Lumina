#include "compiler.h"

void writeHeader(FILE* output) {
	fprintf(output, "section .text\n");
	fprintf(output, "global _start\n");
	fprintf(output, "_start:\n");
}

void writeNumber(FILE* output, int value) {
	fprintf(output, "	;; -- number --\n");
	fprintf(output, "	mov rax, %d\n", value);
	fprintf(output, "	push rax\n\n");
}

void writeCharacter(FILE* output, char value) {
	fprintf(output, "	;; -- character --\n");
	fprintf(output, "	mov rax, %d\n", value);
	fprintf(output, "	push rax\n\n");
}

void writeAdd(FILE* output) {
	fprintf(output, "	;; -- add --\n");
	fprintf(output, "	pop rbx\n");
	fprintf(output, "	pop rax\n");
	fprintf(output, "	add rax, rbx\n");
	fprintf(output, "	push rax\n\n");
}

void writeSubtract(FILE* output) {
	fprintf(output, "	;; -- subtract --\n");
	fprintf(output, "	pop rbx\n");
	fprintf(output, "	pop rax\n");
	fprintf(output, "	sub rax, rbx\n");
	fprintf(output, "	push rax\n\n");
}

void writeNegative(FILE* output) {
	fprintf(output, "	;; -- negative --\n");
	fprintf(output, "	pop rax\n");
	fprintf(output, "	neg rax\n");
	fprintf(output, "	push rax\n\n");
}

void writeFooter(FILE* output) {
	fprintf(output, "	mov rax, 60\n");
	fprintf(output, "	xor rdi, rdi\n");
	fprintf(output, "	syscall\n");
}
