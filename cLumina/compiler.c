#include "compiler.h"

void writeNumber(FILE* output, int value) {
	fprintf(output, "	;; -- number --\n");
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
}
