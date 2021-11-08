#include "compiler.h"

void writeNumber(FILE* output, int value) {
	fprintf(output, "	;; -- number --\n");
	fprintf(output, "	mov rax, %d\n", value);
	fprintf(output, "	push rax\n");
}

void writeAdd(FILE* output) {
	fprintf(output, "	;; -- add --\n");
}

void writeSubtract(FILE* output) {
	fprintf(output, "	;; -- subtract --\n");
}

void writeNegative(FILE* output) {
	fprintf(output, "	;; -- negative --\n");
}
