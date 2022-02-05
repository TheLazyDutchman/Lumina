#include <stdlib.h>
#include <string.h>

#include "compiler.h"

Compiler* initCompiler(FILE* output, Compiler* outer) {
	Compiler* compiler = malloc(sizeof(Compiler));
	compiler->output = output;
	compiler->currentStackSize = 0;
	compiler->variableList = initVariableList();
	compiler->functionList = initFunctionList();
	compiler->typeList = initTypeList();
	compiler->hasReturned = false;
	compiler->outer = outer;

	if (outer != NULL) {
		compiler->function = outer->function;
		compiler->functionDepth = outer->functionDepth;
	} else {
		compiler->function = NULL;
		compiler->functionDepth = 0;
	}

	return compiler;
}

void freeCompiler(Compiler* compiler) {
	freeVariableList(compiler->variableList);
	freeFunctionList(compiler->functionList);
	freeTypeList(compiler->typeList);
	free(compiler);
}

uint16_t printEscapedCharacter(Compiler* compiler, char* *string) {
	char chr = *(*string)++;

	uint16_t length = 1;

	if (chr == '\\') {
		length = 2;

		char test = *(*string)++;

		switch (test) {
			case 'a':
				chr = '\a';
				break;
			case 'b':
				chr = '\b';
				break;
			case 'e':
				chr = '\e';
				break;
			case 'f':
				chr = '\f';
				break;
			case 'n':
				chr = '\n';
				break;
			case 'r':
				chr = '\r';
				break;
			case 't':
				chr = '\t';
				break;
			case 'v':
				chr = '\v';
				break;
			case '\\':
				chr = '\\';
				break;
			case '\'':
				chr = '\'';
				break;
			case '\"':
				chr = '\"';
				break;
			case '\?':
				chr = '\?';
				break;
			case '0':
				chr = '\0';
				break;
		}
	}

	fprintf(compiler->output, "0x%02X", chr);

	return length;
}

void defineVariable(Compiler* compiler, char* name, int nameLen, Type *type) {
	char* buffer = strndup(name, nameLen);

	size_t position = compiler->currentStackSize;
	Compiler* outer = compiler->outer;
	while (outer != NULL) {
		if (outer->function != compiler->function) { break; }
		position += outer->currentStackSize;
		outer = outer->outer;
	}

	addVariable(compiler->variableList, buffer, position, compiler->functionDepth, type);
}

Type *findVariableType(Compiler* compiler, char* name, int nameLen) {
	VariableList list = *compiler->variableList;

	for (int i = 0; i < list.size; i++) {
		Variable *var = list.variables[i];
		if (strlen(var->name) != nameLen) { continue; }

		if (strncmp(var->name, name, nameLen) == 0) {
			return var->type;
		}
	}

	if (compiler->outer == NULL) {
		return NULL;
	}

	return findVariableType(compiler->outer, name, nameLen);
}

Variable *findVariable(Compiler* compiler, char* name, int nameLen) {
	VariableList list = *compiler->variableList;

	for (int i = 0; i < list.size; i++) {
		Variable *var = list.variables[i];
		if (strlen(var->name) != nameLen) { continue; }

		if (strncmp(var->name, name, nameLen) == 0) {
			return var;
		}
	}

	if (compiler->outer == NULL) {
		return NULL;
	}

	return findVariable(compiler->outer, name, nameLen);
}

Variable *findLocalVariable(Compiler* compiler, char* name, int nameLen) {
	VariableList list = *compiler->variableList;

	for (int i = 0; i < list.size; i++) {
		Variable *var = list.variables[i];
		if (strlen(var->name) != nameLen) { continue; }

		if (strncmp(var->name, name, nameLen) == 0) {
			return var;
		}
	}

	return NULL;
}

Type *defineType(Compiler* compiler, char* name, int nameLen, size_t size, Token token, PropertyList *properties, Type **propertyTypes, bool isArray, Type *arrayType) {
	char* buffer = strndup(name, nameLen);
	Type* type = initType(buffer, token, size, properties, propertyTypes, isArray, arrayType);

	addType(compiler->typeList, type);

	return type;
}

Type *findType(Compiler* compiler, char* name, int nameLen) {
	TypeList list = *compiler->typeList;

	for (int i = 0; i < list.size; i++) {
		Type *type = list.types[i];
		if (strlen(type->name) != nameLen) { continue; }

		if (strncmp(type->name, name, nameLen) == 0) {
			return type;
		}
	}

	if (compiler->outer == NULL) {
		return NULL;
	}

	return findType(compiler->outer, name, nameLen);
}

void defineFunction(Compiler* compiler, char* name, int nameLen, int id, Type *type, VariableList *parameters) {
	char* buffer = strndup(name, nameLen);

	addFunction(compiler->functionList, buffer, id, type, parameters);
}

int16_t findFunctionId(Compiler* compiler, char* name, int nameLen) {
	FunctionList list = *compiler->functionList;

	for (int i = 0; i < list.size; i++) {
		Function *func = list.functions[i];
		if (strlen(func->name) != nameLen) { continue; }

		if (strncmp(func->name, name, nameLen) == 0) {
			return func->id;
		}
	}

	if (compiler->outer == NULL) { return -1; }

	return findFunctionId(compiler->outer, name, nameLen);
}

Function *findFunction(Compiler* compiler, char* name, int nameLen) {
	FunctionList list = *compiler->functionList;

	for (int i = 0; i < list.size; i++) {
		Function *func = list.functions[i];
		if (strlen(func->name) != nameLen) { continue; }

		if (strncmp(func->name, name, nameLen) == 0) {
			return func;
		}
	}

	if (compiler->outer == NULL) { return NULL; }

	return findFunction(compiler->outer, name, nameLen);
}

Function *findLocalFunction(Compiler* compiler, char* name, int nameLen) {
	FunctionList list = *compiler->functionList;

	for (int i = 0; i < list.size; i++) {
		Function *func = list.functions[i];
		if (strlen(func->name) != nameLen) { continue; }

		if (strncmp(func->name, name, nameLen) == 0) {
			return func;
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
	fprintf(compiler->output, "	mov rax, rsp\n");
	fprintf(compiler->output, "	add rax, 8\n"); // this is where argc and argv are stored
	fprintf(compiler->output, "	push rax\n");
	fprintf(compiler->output, "	mov [basestack], rax\n");

	fprintf(compiler->output, "	;; -- syscall builtin --\n");
	fprintf(compiler->output, "	jmp addr_func_end_0\n");
	fprintf(compiler->output, "addr_func_0:\n");
	fprintf(compiler->output, "	pop r9\n");
	fprintf(compiler->output, "	pop r8\n");
	fprintf(compiler->output, "	pop r10\n");
	fprintf(compiler->output, "	pop rdx\n");
	fprintf(compiler->output, "	pop rsi\n");
	fprintf(compiler->output, "	pop rdi\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	syscall\n");

	fprintf(compiler->output, "	;; -- return --\n");

	fprintf(compiler->output, "	;; -- push return value --\n");
	fprintf(compiler->output, "	push rax\n");
	
	fprintf(compiler->output, "	;; -- pop return address --\n");
	fprintf(compiler->output, "	mov rax, [callrsp]\n");
	fprintf(compiler->output, "	add rax, 8\n");
	fprintf(compiler->output, "	mov [callrsp], rax\n");
	// jump to address
	fprintf(compiler->output, "	mov rax, [callrsp]\n");
	fprintf(compiler->output, "	jmp [rax]\n");

	fprintf(compiler->output, "addr_func_end_0:\n");
}

void writePop(Compiler* compiler, int amount) {
	fprintf(compiler->output, "	;; -- pop --\n");
	fprintf(compiler->output, "	add rsp, %d\n\n", 8*amount);

	compiler->currentStackSize -= amount;
}

void writeAddress(Compiler* compiler, char* address, uint32_t id) {
	fprintf(compiler->output, "%s_%d:\n", address, id);
}

void writeBeginFunction(Compiler* compiler, uint32_t id, size_t numParams) {
	fprintf(compiler->output, "	;; -- function --\n");
	fprintf(compiler->output, "	jmp addr_func_end_%d\n", id);
	fprintf(compiler->output, "addr_func_%d:\n", id);
	fprintf(compiler->output, "	mov rax, rsp\n");
	fprintf(compiler->output, "	add rax, 8 * %ld\n\n", numParams);

	fprintf(compiler->output, "	;; -- save current stack frame --\n");
	fprintf(compiler->output, "	mov rbx, [basestack + 8 * %d]\n", compiler->functionDepth + 1);
	fprintf(compiler->output, "	push rbx\n\n");

	fprintf(compiler->output, "	;; -- create new stack frame --\n");
	fprintf(compiler->output, "	mov [basestack + 8 * %d], rax\n\n", compiler->functionDepth + 1);
}

void writeCall(Compiler* compiler, uint32_t id, uint16_t numCalls) {
	fprintf(compiler->output, "	;; -- function call -- \n");
	fprintf(compiler->output, "	;; -- push current address --\n");
	// get current address
	fprintf(compiler->output, "	mov rax, ret_func_%d_%d\n", id, numCalls);
	fprintf(compiler->output, "	mov rbx, [callrsp]\n");
	fprintf(compiler->output, "	mov [rbx], rax\n");
	// decrease callrsp
	fprintf(compiler->output, "	sub rbx, 8\n");
	fprintf(compiler->output, "	mov [callrsp], rbx\n");
	
	fprintf(compiler->output, "	;; -- jump --\n");
	fprintf(compiler->output, "	jmp addr_func_%d\n", id);
	fprintf(compiler->output, "	ret_func_%d_%d: ;; first number is function id, second number id call id\n\n", id, numCalls);

	compiler->currentStackSize++;
}

void writeReturnEmpty(Compiler* compiler, uint16_t numVars, uint16_t numParameters) {
	fprintf(compiler->output, "	;; -- return --\n");

	fprintf(compiler->output, "	;; -- pop local variables --\n");
	fprintf(compiler->output, "	add rsp, %d\n", 8 * numVars);

	fprintf(compiler->output, "	;; -- restore stackframe -- \n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, " mov [basestack + 8 * %d], rax\n", compiler->functionDepth);

	fprintf(compiler->output, "	;; -- pop parameters --\n");
	fprintf(compiler->output, "	add rsp, %d\n", 8 * numParameters);

	fprintf(compiler->output, "	;; -- return empty --\n");
	fprintf(compiler->output, "	push 0\n");
	
	fprintf(compiler->output, "	;; -- jump to return address --\n");
	fprintf(compiler->output, "	mov rax, [callrsp]\n");
	fprintf(compiler->output, "	add rax, 8\n");
	fprintf(compiler->output, "	mov [callrsp], rax\n");
	// jump to address
	fprintf(compiler->output, "	mov rax, [callrsp]\n");
	fprintf(compiler->output, "	jmp [rax]\n");
}

void writeReturnValue(Compiler* compiler, uint16_t numVars, uint16_t numParameters) {
	fprintf(compiler->output, "	;; -- return --\n");

	fprintf(compiler->output, "	;; -- store return value --\n");
	fprintf(compiler->output, "	pop rax\n");

	fprintf(compiler->output, "	;; -- pop local variables --\n");
	fprintf(compiler->output, "	add rsp, %d\n", 8 * numVars);

	fprintf(compiler->output, "	;; -- restore stackframe -- \n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, " mov [basestack + 8 * %d], rbx\n", compiler->functionDepth);

	fprintf(compiler->output, "	;; -- pop parameters --\n");
	fprintf(compiler->output, "	add rsp, %d\n", 8 * numParameters);

	fprintf(compiler->output, "	;; -- push return value --\n");
	fprintf(compiler->output, "	push rax\n");
	
	fprintf(compiler->output, "	;; -- pop return address --\n");
	fprintf(compiler->output, "	mov rax, [callrsp]\n");
	fprintf(compiler->output, "	add rax, 8\n");
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

void writeBitAnd(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- bit and --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	or rax, rbx\n");
	fprintf(compiler->output, "	push rax\n");

	compiler->currentStackSize--;
}

void writeBitOr(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- bit or --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	and rax, rbx\n");
	fprintf(compiler->output, "	push rax\n");

	compiler->currentStackSize--;
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

void writeNotEqual(Compiler* compiler) {
	fprintf(compiler->output, "	;; -- not equal --\n");
	fprintf(compiler->output, "	pop rbx\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	cmp rax, rbx\n");

	//select zero flag
	fprintf(compiler->output, "	pushf\n");
	fprintf(compiler->output, "	pop rax\n");
	fprintf(compiler->output, "	shr rax, 6\n");
	fprintf(compiler->output, "	and rax, 1\n");

	fprintf(compiler->output, "	mov rbx, 1\n");
	fprintf(compiler->output, "	sub rbx, rax\n");

	fprintf(compiler->output, "	push rbx\n\n");

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

void writeJumpEqual(Compiler* compiler, char* address, uint32_t id) {
	fprintf(compiler->output, "	;; -- jump --\n");
	fprintf(compiler->output, "	je %s_%d\n\n", address, id);
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

void writeCharacter(Compiler* compiler, char* *value) {
	fprintf(compiler->output, "	;; -- character --\n");
	fprintf(compiler->output, "	mov rax, ");
	printEscapedCharacter(compiler, value);
	fprintf(compiler->output, "\n");
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize++;
}

void writeString(Compiler* compiler, int id) {
	fprintf(compiler->output, "	;; -- string --\n");
	fprintf(compiler->output, "	mov rax, string_%d\n", id);
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize++;
}

void writeReadIndex(Compiler* compiler, int size) {
	fprintf(compiler->output, "	;; -- read at index -- \n");
	fprintf(compiler->output, "	pop rax ;; index\n");
	fprintf(compiler->output, "	mov rbx, %d\n", size);
	fprintf(compiler->output, "	mul rbx\n");
	fprintf(compiler->output, "	pop rbx ;; pointer\n");
	fprintf(compiler->output, "	add rbx, rax\n");
	fprintf(compiler->output, "	mov rbx, [rbx]\n");
	fprintf(compiler->output, "	;; create bit mask\n");
	if (size < 8) {
		fprintf(compiler->output, "	mov rcx, 1\n");
		fprintf(compiler->output, "	shl rcx, %d ;; size\n", 8 * size);
	} else {
		fprintf(compiler->output, "	mov rcx, 0\n");
	}
	fprintf(compiler->output, "	sub rcx, 1\n");
	fprintf(compiler->output, "	and rbx, rcx\n");
	fprintf(compiler->output, "	push rbx\n\n");

	compiler->currentStackSize--;
}

void writeWriteIndex(Compiler* compiler, int size) {
	fprintf(compiler->output, "	;; -- write at index -- \n");
	fprintf(compiler->output, "	pop rcx ;; value\n");
	fprintf(compiler->output, "	pop rax ;; index\n");
	fprintf(compiler->output, "	mov rbx, %d\n", size);
	fprintf(compiler->output, "	mul rbx\n");
	fprintf(compiler->output, "	pop rbx ;; pointer\n");
	fprintf(compiler->output, "	add rbx, rax\n");
	fprintf(compiler->output, "	mov r8, [rbx]\n");
	fprintf(compiler->output, "	;; create bit mask\n");
	if (size < 8) {
		fprintf(compiler->output, "	mov r9, 1\n");
		fprintf(compiler->output, "	shl r9, %d ;; size\n", 8 * size);
	} else {
		fprintf(compiler->output, "	mov r9, 0\n");
	}
	fprintf(compiler->output, "	sub r9, 1\n");
	fprintf(compiler->output, "	and rcx, r9\n");
	fprintf(compiler->output, "	not r9\n");
	fprintf(compiler->output, "	and r8, r9\n");
	fprintf(compiler->output, "	add r8, rcx\n");
	fprintf(compiler->output, "	mov [rbx], r8\n");
	fprintf(compiler->output, "	push rcx\n\n");

	compiler->currentStackSize -= 2;
}

void writeReadProperty(Compiler* compiler, int offset, int size) {
	fprintf(compiler->output, "	;; -- read property -- \n");
	fprintf(compiler->output, "	pop rax ;; pointer\n");
	fprintf(compiler->output, "	add rax, %d\n", offset);
	fprintf(compiler->output, "	mov rax, [rax]\n");
	fprintf(compiler->output, "	;; create bit mask\n");
	if (size < 8) {
		fprintf(compiler->output, "	mov rbx, 1\n");
		fprintf(compiler->output, "	shl rbx, %d ;; size\n", 8 * size);
	} else {
		fprintf(compiler->output, "	mov rbx, 0\n");
	}
	fprintf(compiler->output, "	sub rbx, 1\n");
	fprintf(compiler->output, "	and rax, rbx\n");
	fprintf(compiler->output, "	push rax\n\n");
}

void writeWriteProperty(Compiler* compiler, int offset, int size) {
	fprintf(compiler->output, "	;; -- write property -- \n");
	fprintf(compiler->output, "	pop rax ;; value\n");
	fprintf(compiler->output, "	pop rbx ;; pointer\n");
	fprintf(compiler->output, "	add rbx, %d\n", offset);
	fprintf(compiler->output, "	mov rcx, [rbx]\n");
	fprintf(compiler->output, "	;; create bit mask\n");
	if (size < 8) {
		fprintf(compiler->output, "	mov r9, 1\n");
		fprintf(compiler->output, "	shl r9, %d ;; size\n", 8 * size);
	} else {
		fprintf(compiler->output, "	mov r9, 0\n");
	}
	fprintf(compiler->output, "	sub r9, 1\n");
	fprintf(compiler->output, "	and rax, r9\n");
	fprintf(compiler->output, "	not r9\n");
	fprintf(compiler->output, "	and rcx, r9\n");
	fprintf(compiler->output, "	add rcx, rax\n");
	fprintf(compiler->output, "	mov [rbx], rcx\n");
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize--;
}

void writeIdentifier(Compiler* compiler, int offset, int currentDepth) {
	fprintf(compiler->output, "	;; -- identifier --\n");
	fprintf(compiler->output, "	mov rax, [basestack + 8 * %d]\n", currentDepth);
	fprintf(compiler->output, "	mov rbx, %d\n", 8 * offset);
	fprintf(compiler->output, "	sub rax, rbx\n");
	fprintf(compiler->output, "	mov rax, [rax]\n");
	fprintf(compiler->output, "	push rax\n\n");

	compiler->currentStackSize++;
}

void writeAssignment(Compiler* compiler, int offset, int currentDepth) {
	fprintf(compiler->output, "	;; -- assignment --\n");
	fprintf(compiler->output, "	mov rax, [basestack + 8 * %d]\n", currentDepth);
	fprintf(compiler->output, "	mov rbx, %d\n", 8 * offset);
	fprintf(compiler->output, "	sub rax, rbx\n");
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

void writeFooter(Compiler* compiler, StringList *strings) {
	fprintf(compiler->output, "	mov rax, 60\n");
	fprintf(compiler->output, "	xor rdi, rdi\n");
	fprintf(compiler->output, "	syscall\n\n");

	fprintf(compiler->output, "section .bss\n");
	fprintf(compiler->output, "	basestack: resq %d\n", CALLSTACKSIZE);
	fprintf(compiler->output, "	callrsp: resq 1\n");
	fprintf(compiler->output, "	callStack: resq %d\n", CALLSTACKSIZE);

	fprintf(compiler->output, "section .data\n");
	int i = 0;
	while (i < strings->size) {
		Token value = strings->strings[i]->value;

		fprintf(compiler->output, "	string_%d: db ", strings->strings[i]->id);
		int j = 1;
		while (j < value.wordLen - 1) {
			char *chr = value.word + j;

			j += printEscapedCharacter(compiler, &chr);

			fprintf(compiler->output, ", ");
		}

		fprintf(compiler->output, "0x00\n");

		i++;
	}
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
