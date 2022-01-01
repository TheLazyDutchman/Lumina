#include <stdlib.h>
#include <string.h>

#include "compiler.h"

Compiler* initCompiler(FILE* output, Compiler* outer) {
	Compiler* compiler = malloc(sizeof(Compiler));
	compiler->output = output;
	compiler->currentStackSize = 0;
	compiler->variableList = initVariableList();
	compiler->functionList = initFunctionList();
	compiler->hasReturned = false;
	compiler->outer = outer;

	if (outer != NULL) {
		compiler->function = outer->function;
	} else {
		compiler->function = NULL;
	}

	return compiler;
}

void freeCompiler(Compiler* compiler) {
	freeVariableList(compiler->variableList);
	freeFunctionList(compiler->functionList);
	free(compiler);
}

void defineVariable(Compiler* compiler, char* name, int nameLen, Type *type) {
	char* buffer = strndup(name, nameLen);

	addVariable(compiler->variableList, buffer, compiler->currentStackSize, type);
}

Type *findVariableType(Compiler* compiler, char* name, int nameLen) {
	VariableList list = *compiler->variableList;

	for (int i = 0; i < list.size; i++) {
		if (strncmp(list.variables[i]->name, name, nameLen) == 0) {
			return list.variables[i]->type;
		}
	}

	if (compiler->outer == NULL) {
		return NULL;
	}

	return findVariableType(compiler->outer, name, nameLen);
}

int16_t findVariable(Compiler* compiler, char* name, int nameLen) {
	VariableList list = *compiler->variableList;

	for (int i = 0; i < list.size; i++) {
		if (strncmp(list.variables[i]->name, name, nameLen) == 0) {
			return compiler->currentStackSize - list.variables[i]->position;
		}
	}

	if (compiler->outer == NULL) {
		return -1;
	}

	int16_t offset = findVariable(compiler->outer, name, nameLen);
	if (offset == -1) {
		return -1;
	}
	
	return offset + compiler->currentStackSize;
}

Variable *findLocalVariable(Compiler* compiler, char* name, int nameLen) {
	VariableList list = *compiler->variableList;

	for (int i = 0; i < list.size; i++) {
		if (strncmp(list.variables[i]->name, name, nameLen) == 0) {
			return list.variables[i];
		}
	}

	return NULL;
}

void defineFunction(Compiler* compiler, char* name, int nameLen, int id, Type *type) {
	char* buffer = strndup(name, nameLen);

	addFunction(compiler->functionList, buffer, id, type);
}

int16_t findFunctionId(Compiler* compiler, char* name, int nameLen) {
	FunctionList list = *compiler->functionList;

	for (int i = 0; i < list.size; i++) {
		if (strncmp(list.functions[i]->name, name, nameLen) == 0) {
			return list.functions[i]->id;
		}
	}

	if (compiler->outer == NULL) { return -1; }

	return findFunctionId(compiler->outer, name, nameLen);
}

Function *findFunction(Compiler* compiler, char* name, int nameLen) {
	FunctionList list = *compiler->functionList;

	for (int i = 0; i < list.size; i++) {
		if (strncmp(list.functions[i]->name, name, nameLen) == 0) {
			return list.functions[i];
		}
	}

	if (compiler->outer == NULL) { return NULL; }

	return findFunction(compiler->outer, name, nameLen);
}

Function *findLocalFunction(Compiler* compiler, char* name, int nameLen) {
	FunctionList list = *compiler->functionList;

	for (int i = 0; i < list.size; i++) {
		if (strncmp(list.functions[i]->name, name, nameLen) == 0) {
			return list.functions[i];
		}
	}

	if (compiler->outer == NULL) { return NULL; }
	if (compiler->outer->function != compiler->function) { return NULL; }

	return findLocalFunction(compiler->outer, name, nameLen);
}


void writeHeader(Compiler* compiler) {
	fprintf(compiler->output, "section .text\n");
	fprintf(compiler->output, "global _start\n");
	fprintf(compiler->output, "_start:\n");
	fprintf(compiler->output, "	;; -- initializing call stack --\n");
	fprintf(compiler->output, "	lea rax, [callStack + %d]\n", CALLSTACKSIZE);
	fprintf(compiler->output, "	mov [callrsp], rax\n");
}

void writePop(Compiler* compiler, int amount) {
	fprintf(compiler->output, "	;; -- pop --\n");
	fprintf(compiler->output, "	add rsp, %d\n\n", 8*amount);

	compiler->currentStackSize -= amount;
}

void writeAddress(Compiler* compiler, char* address, uint32_t id) {
	fprintf(compiler->output, "%s_%d:\n", address, id);
}

void writeBeginFunction(Compiler* compiler, uint32_t id) {
	fprintf(compiler->output, "	;; -- function --\n");
	fprintf(compiler->output, "	jmp addr_func_end_%d\n", id);
	fprintf(compiler->output, "addr_func_%d:\n", id);
}

void writeCall(Compiler* compiler, uint32_t id, uint16_t numCalls) {
	fprintf(compiler->output, "	;; -- function call -- \n");
	fprintf(compiler->output, "	;; -- push current address --\n");
	// get current address
	fprintf(compiler->output, "	mov rax, ret_func_%d_%d\n", id, numCalls);
	fprintf(compiler->output, "	mov rbx, [callrsp]\n");
	fprintf(compiler->output, "	mov [rbx], rax\n");
	// decrease callrsp
	fprintf(compiler->output, "	sub rbx, 4\n");
	fprintf(compiler->output, "	mov [callrsp], rbx\n");
	
	fprintf(compiler->output, "	;; -- jump --\n");
	fprintf(compiler->output, "	jmp addr_func_%d\n", id);
	fprintf(compiler->output, "	ret_func_%d_%d: ;; first number is function id, second number id call id\n\n", id, numCalls);
}

void writeReturnEmpty(Compiler* compiler, uint16_t numVars) {
	fprintf(compiler->output, "	;; -- return --\n");

	fprintf(compiler->output, "	;; -- pop local variables --\n");
	fprintf(compiler->output, "	add rsp, %d\n", 8*numVars);

	fprintf(compiler->output, "	;; -- return empty --\n");
	fprintf(compiler->output, "	push 0\n");
	
	fprintf(compiler->output, "	;; -- jump to return address --\n");
	fprintf(compiler->output, "	mov rax, [callrsp]\n");
	fprintf(compiler->output, "	add rax, 4\n");
	fprintf(compiler->output, "	mov [callrsp], rax\n");
	// jump to address
	fprintf(compiler->output, "	mov rax, [callrsp]\n");
	fprintf(compiler->output, "	jmp [rax]\n");
}

void writeReturnValue(Compiler* compiler, uint16_t numVars) {
	fprintf(compiler->output, "	;; -- return --\n");

	fprintf(compiler->output, "	;; -- store return value --\n");
	fprintf(compiler->output, "	pop rax\n");

	fprintf(compiler->output, "	;; -- pop local variables --\n");
	fprintf(compiler->output, "	add rsp, %d\n", 8*numVars);

	fprintf(compiler->output, "	;; -- push return value --\n");
	fprintf(compiler->output, "	push rax\n");
	
	fprintf(compiler->output, "	;; -- pop return address --\n");
	fprintf(compiler->output, "	mov rax, [callrsp]\n");
	fprintf(compiler->output, "	add rax, 4\n");
	fprintf(compiler->output, "	mov [callrsp], rax\n");
	// jump to address
	fprintf(compiler->output, "	mov rax, [callrsp]\n");
	fprintf(compiler->output, "	jmp [rax]\n");
}

void writeCompare(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- comparison --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	cmp rax, rbx\n\n");
	
	compiler->currentStackSize -= 2;
}

void writeLess(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- less --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	cmp rax, rbx\n");

	//select sign flag
	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	shr rax, 7\n");
	fprintf(compiler->output, "	and rax, 1\n");

	//select overflow flag
	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	shr rbx, 11\n");
	fprintf(compiler->output, "	and rbx, 1\n");

	fprintf(compiler->output, "	xor rax, rbx\n");
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize--;
}

void writeLessEqual(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- less --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	cmp rax, rbx\n");

	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pushf\n");

	//select sign flag
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	shr rax, 7\n");
	fprintf(compiler->output, "	and rax, 1\n");

	//select overflow flag
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	shr rbx, 11\n");
	fprintf(compiler->output, "	and rbx, 1\n");

	//select zero flag
	fprintf(compiler->output, "	pop rcx\n");
	fprintf(compiler->output, "	shr rcx, 6\n");
	fprintf(compiler->output, "	and rcx, 1\n");

	fprintf(compiler->output, "	xor rax, rbx\n");
	fprintf(compiler->output, "	or rax, rcx\n");
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize--;
}

void writeGreater(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- greater --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	cmp rax, rbx\n");

	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rax\n");

	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rbx\n");

	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rcx\n");

	//select sign flag
	fprintf(compiler->output, "	shr rax, 7\n");
	fprintf(compiler->output, "	and rax, 1\n");

	//select overflow flag
	fprintf(compiler->output, "	shr rbx, 11\n");
	fprintf(compiler->output, "	and rbx, 1\n");

	//select zero flag
	fprintf(compiler->output, "	shr rcx, 6\n");
	fprintf(compiler->output, "	and rcx, 1\n");

	fprintf(compiler->output, "	xor rax, rbx\n");

	fprintf(compiler->output, "	or rax, rcx\n");
	fprintf(compiler->output, "	mov rbx, 1\n");
	fprintf(compiler->output, "	sub rbx, rax\n");
	fprintf(compiler->output, "	push rbx\n");

	compiler->currentStackSize--;
}

void writeGreaterEqual(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- greater --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	cmp rax, rbx\n");

	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rax\n");

	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rbx\n");

	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rcx\n");

	//select sign flag
	fprintf(compiler->output, "	shr rax, 7\n");
	fprintf(compiler->output, "	and rax, 1\n");

	//select overflow flag
	fprintf(compiler->output, "	shr rbx, 11\n");
	fprintf(compiler->output, "	and rbx, 1\n");

	fprintf(compiler->output, "	xor rax, rbx\n");

	fprintf(compiler->output, "	mov rbx, 1\n");
	fprintf(compiler->output, "	sub rbx, rax\n");
	fprintf(compiler->output, "	push rbx\n");

	compiler->currentStackSize--;
}

void writeEqual(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- equal --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	cmp rax, rbx\n");

	//select zero flag
	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	shr rax, 6\n");
	fprintf(compiler->output, "	and rax, 1\n");

	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize--;
}

void writeCondition(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- condition --\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	cmp rax, 1\n\n");
	
	compiler->currentStackSize--;
}

void writeJump(Compiler* compiler, char* address, uint32_t id) {
	fprintf(compiler->output, "	;; -- jump --\n");
	fprintf(compiler->output, "	jmp %s_%d\n\n", address, id);
}

void writeJumpNotEqual(Compiler* compiler, char* header, uint32_t id) {
	fprintf(compiler->output, "	;; -- jump if not equal --\n");
	fprintf(compiler->output, "	jne %s_%d\n\n", header, id);
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
	fprintf(compiler->output, "	add rax, rbx\n");
	fprintf(compiler->output, "	mov rax, [rax]\n");
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize++;
}

void writeAssignment(Compiler* compiler, int offset) {
	fprintf(compiler->output, "	;; -- assignment --\n");
	fprintf(compiler->output, "	mov rax, rsp\n");
	fprintf(compiler->output, "	mov rbx, %d\n", 8 * offset);
	fprintf(compiler->output, "	add rax, rbx\n");
	fprintf(compiler->output, "	mov rbx, [rsp]\n");
	fprintf(compiler->output, "	mov [rax], rbx\n\n");
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
	fprintf(compiler->output, "	mov rax, 60\n");
	fprintf(compiler->output, "	xor rdi, rdi\n");
	fprintf(compiler->output, "	syscall\n\n");

	fprintf(compiler->output, "section .bss\n");
	fprintf(compiler->output, "	callrsp: resq 1\n");
	fprintf(compiler->output, "	callStack: resq %d\n", CALLSTACKSIZE);
}

void writePrint(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- print character on the top of the stack --\n");
	fprintf(compiler->output, "	mov rax, 1\n");
	fprintf(compiler->output, "	mov rdi, 1\n");
	fprintf(compiler->output, "	mov rsi, rsp\n");
	fprintf(compiler->output, "	mov rdx, 1\n");
	fprintf(compiler->output, "	syscall\n");

	writePop(compiler, 1);
}	
