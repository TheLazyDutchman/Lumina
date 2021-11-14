#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

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
		return NULL;
	}
	
	fclose(fd);
	printf("[FILE] read file '%s'\n", fileName);
	return buffer;
}

Lexer *initLexer(char *fileName) {
	Lexer *lexer = malloc(sizeof(Lexer));
		
	lexer->fileName = fileName;
	lexer->buffer = readFile(fileName);
	lexer->current = lexer->buffer;

	lexer->line = 0;
	lexer->column = 0;

	return lexer;
}

void freeLexer(Lexer* lexer){
	free(lexer->buffer);
	free(lexer);
}

char peek(Lexer* lexer){
	return *(lexer->current + 1);
}

char advance(Lexer* lexer){
	lexer->column++;
	if (*lexer->current == '\n') {
		lexer->column = 0;
		lexer->line++;
	}
	return *(lexer->current++);
}

void lexerError(Lexer* lexer, const char* message) {
	printf("%s:%d:%d: ERROR: ", lexer->fileName, lexer->line, lexer->column);
	printf("%s", message);
	printf(" (at '%c')\n", *lexer->current);
}

Token *nextToken(Lexer* lexer){
	while (*lexer->current == ' ' || *lexer->current == '\n') {
		advance(lexer);

		if (*lexer->current == '/' && peek(lexer) == '/') {
			while (*lexer->current != '\n') {
				advance(lexer);
			}
		}
	}

	Token *token = malloc(sizeof(token));
	token->fileName = lexer->fileName;
	token->line = lexer->line;
	char *start = lexer->current;

	if (isdigit(*lexer->current)) {
		token->type = TOKEN_NUMBER;

		while(isdigit(*lexer->current)) {
			advance(lexer);
		}
	} else if (*lexer->current == '"' || *lexer->current == '\'') {
		token->type = TOKEN_CHAR;

		char charStart = advance(lexer);
		advance(lexer);
		if (*lexer->current != charStart) {
			lexerError(lexer, "expected character end");
		} else {
			advance(lexer);
		}
	} else {
		switch (*lexer->current) {
			case '+':
				token->type = TOKEN_PLUS;
				advance(lexer);
				break;
			case '-':
				token->type = TOKEN_MINUS;
				advance(lexer);
				break;
			case ';':
				token->type = TOKEN_SEMICOLON;
				advance(lexer);
				break;
			case '\0':
				token->type = TOKEN_END_OF_FILE;
				break;
			default:
				printf("%s:%d:%d [ERROR]: could not recognize char %d '%c'\n", lexer->fileName, lexer->line, lexer->column, *lexer->current, *lexer->current);
				return NULL;
		}
	}
	int len = lexer->current - start;
	token->word = malloc(len + 1);
	memcpy(token->word, start, len);
	token->word[len] = '\0';

	return token;
}

void freeToken(Token* token) {
	free(token->word);
	free(token);
}
