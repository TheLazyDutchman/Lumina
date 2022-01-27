#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#include "lexer.h"

char* readFile(char *fileName) {
	FILE *fd = fopen(fileName, "r");
	
	if (fd == NULL) {
		printf("[ERROR] could not open file '%s'\n", fileName);
		exit(1);
	}

	fseek(fd, 0, SEEK_END);
	int len = ftell(fd);
	fseek(fd, 0, SEEK_SET);

	if (len == -1L) {
		printf("[ERROR] could not read size of file '%s'\n", fileName);
		exit(1);
	}

	char *buffer = malloc(len);

	if (buffer == NULL) {
		printf("[ERROR] could not allocate enough memory to read file '%s'\n", fileName);
		exit(1);
	}

	if (fread(buffer, 1, len, fd) != len) {
		printf("[ERROR] could not read file '%s'\n", fileName);
		exit(1);
	}
	
	fclose(fd);
	return buffer;
}

Lexer *initLexer(char *fileName, Lexer *outer) {
	Lexer *lexer = malloc(sizeof(Lexer));

	lexer->outer = outer;

	if (lexer->outer == NULL) {	lexer->fileName = fileName; }
	else {
		int outerLen = rindex(lexer->outer->fileName, '/') - lexer->outer->fileName + 1;
		char* buffer = malloc(outerLen + strlen(fileName));

		strncpy(buffer, lexer->outer->fileName, outerLen);
		strcpy(buffer + outerLen, fileName);

		lexer->fileName = buffer;
	}

	lexer->buffer = readFile(lexer->fileName);
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

void lexIdentifier(Lexer* lexer, Token* token) {
	while (isalnum(*lexer->current) || *lexer->current == '_') {
			advance(lexer);
	}

	token->type = TOKEN_IDENTIFIER;
}

Token *nextToken(Lexer* lexer){
	while (isspace(*lexer->current)) {
		advance(lexer);

		if (*lexer->current == '/' && peek(lexer) == '/') {
			while (*lexer->current != '\n') {
				advance(lexer);
			}
		}
	}

	Token *token = malloc(sizeof(Token));
	token->fileName = lexer->fileName;
	token->line = lexer->line;
	token->word = lexer->current;

	if (isdigit(*lexer->current)) {
		token->type = TOKEN_NUMBER;

		while(isdigit(*lexer->current)) {
			advance(lexer);
		}
	} else if (isalpha(*lexer->current)) {
		switch (*lexer->current) {
			case 'f':
				advance(lexer);
				if (*lexer->current != 'u') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'n') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'c') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (isalnum(*lexer->current)) {
					lexIdentifier(lexer, token);
					break;
				}

				token->type = TOKEN_FUNC;
				break;
			case 'i':
				advance(lexer);
				if (*lexer->current != 'm') {
					if (*lexer->current != 'f') {
						lexIdentifier(lexer, token);
						break;
					}

					advance(lexer);
					if (isalnum(*lexer->current)) {
						lexIdentifier(lexer, token);
						break;
					}

					token->type = TOKEN_IF;
					break;
				}

				advance(lexer);
				if (*lexer->current != 'p') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'o') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'r') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 't') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (isalnum(*lexer->current)) {
					lexIdentifier(lexer, token);
					break;
				}

				token->type = TOKEN_IMPORT;
				break;
			case 'r':
				advance(lexer);
				if (*lexer->current != 'e') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 't') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'u') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'r') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'n') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (isalnum(*lexer->current)) {
					lexIdentifier(lexer, token);
					break;
				}

				token->type = TOKEN_RETURN;
				break;
			case 's':
				advance(lexer);
				if (*lexer->current != 'i') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'z') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'e') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'o') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'f') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (isalnum(*lexer->current)) {
					lexIdentifier(lexer, token);
					break;
				}

				token->type = TOKEN_SIZEOF;
				break;
			case 't':
				advance(lexer);
				if (*lexer->current != 'y') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'p') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'e') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (isalnum(*lexer->current)) {
					lexIdentifier(lexer, token);
					break;
				}

				token->type = TOKEN_TYPE;
				break;
			case 'v':
				advance(lexer);
				if (*lexer->current != 'a') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'r') {
					lexIdentifier(lexer, token);
					break;
				}
				advance(lexer);

				if (isalnum(*lexer->current)) {
					lexIdentifier(lexer, token);
					break;
				}
				token->type = TOKEN_VAR;
				break;
			case 'w':
				advance(lexer);
				if (*lexer->current != 'h') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'i') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'l') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (*lexer->current != 'e') {
					lexIdentifier(lexer, token);
					break;
				}

				advance(lexer);
				if (isalnum(*lexer->current)) {
					lexIdentifier(lexer, token);
					break;
				}

				token->type = TOKEN_WHILE;
				break;
			default:
				lexIdentifier(lexer, token);
		}

	} else if (*lexer->current == '"' || *lexer->current == '\'') {
		token->type = TOKEN_CHAR;

		char charStart = advance(lexer);

		if (*lexer->current == '\\') {
			advance(lexer);
		}

		advance(lexer);
		if (*lexer->current != charStart) {
			token->type = TOKEN_STR;

			while(*lexer->current != charStart) {
				if (*lexer->current == '\\') {
					advance(lexer);
				}

				if (*lexer->current == '\0') {
					lexer->current--;
					lexerError(lexer, "expected string end");
					token->type = TOKEN_ERROR;
					return token;
				}

				advance(lexer);

				if (*lexer->current == '\0') {
					lexer->current--;
					lexerError(lexer, "expected string end");
					token->type = TOKEN_ERROR;
					return token;
				}
			}

			advance(lexer);
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
				advance(lexer);

				if (*lexer->current == '>') {
					advance(lexer);
					token->type = TOKEN_RARROW;
					break;
				}

				token->type = TOKEN_MINUS;
				break;
			case ';':
				token->type = TOKEN_SEMICOLON;
				advance(lexer);
				break;
			case '(':
				token->type = TOKEN_LPAREN;
				advance(lexer);
				break;
			case ')':
				token->type = TOKEN_RPAREN;
				advance(lexer);
				break;
			case '[':
				token->type = TOKEN_LBRACKET;
				advance(lexer);
				break;
			case ']':
				token->type = TOKEN_RBRACKET;
				advance(lexer);
				break;
			case '{':
				token->type = TOKEN_LBRACE;
				advance(lexer);
				break;
			case '}':
				token->type = TOKEN_RBRACE;
				advance(lexer);
				break;
			case '<':
				advance(lexer);

				if (*lexer->current == '=') {
					advance(lexer);
					token->type = TOKEN_LESSEQUAL;
					break;
				}

				token->type = TOKEN_LESS;
				break;
			case '>':
				advance(lexer);

				if (*lexer->current == '=') {
					advance(lexer);
					token->type = TOKEN_GREATEREQUAL;
					break;
				}

				token->type = TOKEN_GREATER;
				break;
			case '=':
				advance(lexer);

				if (*lexer->current == '=') {
					advance(lexer);
					token->type = TOKEN_EQUALEQUAL;
					break;
				}

				token->type = TOKEN_EQUAL;
				break;
			case ',':
				token->type = TOKEN_COMMA;
				advance(lexer);
				break;
			case '.':
				token->type = TOKEN_PERIOD;
				advance(lexer);
				break;
			case '\0':
				token->type = TOKEN_END_OF_FILE;
				break;
			default:
				lexerError(lexer, "could not recognize character");
				printf("char: '%c', ascii: '%d'\n", *lexer->current, *lexer->current);
				token->type = TOKEN_ERROR;
				return NULL;
		}
	}
	token->wordLen = lexer->current - token->word;

	return token;
}

void freeToken(Token* token) {
	free(token);
}
