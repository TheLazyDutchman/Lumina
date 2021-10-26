#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#include "lexer.h"

char* readFile(char *fileName) {
	FILE *fd = fopen(fileName, "r");
	
	if (fd == NULL) {
		printf("[ERROR] could not open file '%s'\n", fileName);
		return NULL;
	}

	fseek(fd, 0, SEEK_END);
	int len = ftell(fd);
	fseek(fd, 0, SEEK_SET);

	if (len == -1L) {
		printf("[ERROR] could not read size of file '%s'\n", fileName);
		return NULL;
	}

	char *buffer = malloc(len);

	if (buffer == NULL) {
		printf("[ERROR] could not allocate enough memory to read file '%s'\n", fileName);
		return NULL;
	}

	if (fread(buffer, 1, len, fd) != len) {
		printf("[ERROR] could not read file '%s'\n", fileName);
	}
	
	fclose(fd);
}

Lexer initLexer(char *fileName) {
	Lexer lexer;
		
	lexer.fileName = fileName;
	lexer.buffer = readFile(fileName);
	lexer.current = lexer.buffer;

	lexer.line = 0;
	lexer.column = 0;

	return lexer;
}

void freeLexer(Lexer lexer){
	free(lexer.buffer);
	lexer.fileName = NULL;
	lexer.buffer = NULL;
	lexer.current = NULL;
	lexer.line = 0;
	lexer.column = 0;
}

char peek(Lexer lexer){
	return *(lexer.current + 1);
}

char advance(Lexer lexer){
	lexer.column++;
	if (*lexer.current == '\n') {
		lexer.column = 0;
		lexer.line++;
	}
	return *(lexer.current++);
}

Token nextToken(Lexer lexer){
	while (*lexer.current == ' ') {
		advance(lexer);
	}

	Token token;
	token.fileName = lexer.fileName;
	token.start = lexer.current;

	if (isdigit(*lexer.current)) {
		token.type = NUMBER;

		while(isdigit(advance(lexer))) {}
		
		if (*lexer.current == '.') {
			
			while(isdigit(advance(lexer))) {}

		}

	}
	else {
		printf("%s:%d:%d [ERROR]: could not recognize word\n", lexer.fileName, lexer.line, lexer.column);
	}
	token.end = lexer.current;

	return token;
}
