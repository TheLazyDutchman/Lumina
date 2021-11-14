#include <stdlib.h>
#include <stdio.h>

#include "parser.h"

Parser* initParser(char* inputName, char* outputName, ParseFlag flags) {
	Parser* parser = malloc(sizeof(Parser));

	parser->lexer = initLexer(inputName);
	parser->current = nextToken(parser->lexer);
	parser->flags = flags;

	parser->outputFile = fopen(outputName, "w");

	parser->hadError = false;
	
	return parser;
}

void freeParser(Parser* parser) {
	freeLexer(parser->lexer);

	if (parser->current != NULL) {
		freeToken(parser->current);
	}

	fclose(parser->outputFile);

	free(parser);
}

Token* next(Parser* parser) {
	if (parser->current != NULL) {
		freeToken(parser->current);
	}

	parser->current = nextToken(parser->lexer);
	return parser->current;
}

typedef void (*ParseFn)(Parser*);

typedef enum {
	PREC_NONE,
	PREC_STATEMENT,
	PREC_ASSIGNMENT,
	PREC_EXPR,
	PREC_TERM,
	PREC_UNARY,
	PREC_PRIMARY
} Precedence;

typedef struct {
	ParseFn prefix;
	ParseFn infix;
	Precedence precedence;
} ParseRule;

_Static_assert(TOKEN_TYPES_NUM == 8, "Exhaustive handling of token types in parsing");

ParseRule parseTable[] = {
	[TOKEN_NUMBER] = {number, NULL, PREC_PRIMARY},
	[TOKEN_CHAR] = {character, NULL, PREC_PRIMARY},
	[TOKEN_PLUS] = {NULL, binary, PREC_TERM},
	[TOKEN_MINUS] = {unary, binary, PREC_UNARY},
	[TOKEN_SEMICOLON] = {NULL, NULL, PREC_STATEMENT},
	[TOKEN_VAR] = {NULL, NULL, PREC_ASSIGNMENT},
	[TOKEN_IDENTIFIER] = {NULL, NULL, PREC_PRIMARY},
	[TOKEN_END_OF_FILE] = {NULL, NULL, PREC_NONE}
};

void parseError(Parser* parser, Token token, char* message) {
	printf("%s:%d ERROR at '%s': ", token.fileName, token.line, token.word);
	printf("%s", message);
	printf("\n");

	parser->hadError = true;
	//TODO: enter panic mode
}

Token parsePrecedence(Parser* parser, Precedence precedence) {
	Token token = *parser->current;
	ParseRule rule = parseTable[token.type];

	if (rule.precedence < precedence) {
		parseError(parser, token, "unexpected token");
	}

	if (rule.prefix == NULL) {
		parseError(parser, token, "unexpected token");
	}

	rule.prefix(parser);

	return token;
}

void consumeToken(Parser* parser, Tokentype type, char* message) {
	Token token = *parser->current;
	if (token.type != type) {
		parseError(parser, token, message);
	}

	next(parser);
}

void dumpNumber(Parser* parser, Token value) {
	if (parser->flags & FLAG_DUMP) {
		printf("%s:%d: number '%s'\n", value.fileName, value.line, value.word);
	}
}

void number(Parser* parser) {
	Token value = *parser->current;
	if (value.type != TOKEN_NUMBER) {
		printf("incorrect reference in parseTable: '%s' points to number\n", tokenTypes[value.type]);
	}

	dumpNumber(parser, value);

	char* result;

	int numberValue = strtol(value.word, &result, 10);
	if (*result != '\0') {
		parseError(parser, value, "could not convert string '%s' to int");
	}

	writeNumber(parser->outputFile, numberValue);
}

void dumpCharacter(Parser* parser, Token value) {
	if (parser->flags & FLAG_DUMP) {
		printf("%s:%d: character '%c'\n", value.fileName, value.line, value.word[1]);
	}
}

void character(Parser* parser) {
	Token value = *parser->current;
	if (value.type != TOKEN_CHAR) {
		printf("incorrect reference in parseTable: '%s' points to character\n", tokenTypes[value.type]);
	}

	dumpCharacter(parser, value);

	char charValue = value.word[1];

	writeCharacter(parser->outputFile, charValue);
}

void dumpBinary(Parser* parser, Token operator) {
	if (parser->flags & FLAG_DUMP) {
		printf("%s:%d: binary '%s'\n", operator.fileName, operator.line, tokenTypes[operator.type]);
	}
}

void binary(Parser* parser) {
	Token operator = *parser->current;

	Precedence precedence;

	switch (operator.type) {
		case TOKEN_PLUS:
		case TOKEN_MINUS:
			precedence = PREC_TERM + 1;
			break;
		default:
			printf("incorrect reference in parseTable: '%s' points to binary\n", tokenTypes[operator.type]);
	}

	next(parser);

	parsePrecedence(parser, precedence);

	switch (operator.type) {
		case TOKEN_PLUS:
			dumpBinary(parser, operator);

			writeAdd(parser->outputFile);

			break;
		case TOKEN_MINUS:
			dumpBinary(parser, operator);

			writeSubtract(parser->outputFile);

			break;
	}
}

void dumpUnary(Parser* parser, Token operator) {
	if (parser->flags & FLAG_DUMP) {
		printf("%s:%d: unary '%s'\n", operator.fileName, operator.line, tokenTypes[operator.type]);
	}
}

void unary(Parser* parser) {
	Token operator = *parser->current;

	next(parser);

	parsePrecedence(parser, PREC_UNARY);

	switch (operator.type) {
		case TOKEN_MINUS:
			dumpUnary(parser, operator);

			writeNegative(parser->outputFile);

			break;
		default:
			printf("incorrect reference in parseTable: '%s' points to unary\n", tokenTypes[operator.type]);
	}
}

void expression(Parser* parser) {
	parsePrecedence(parser, PREC_EXPR);

	while (next(parser)->type != TOKEN_END_OF_FILE) {
		ParseRule rule = parseTable[parser->current->type];

		if (rule.precedence < PREC_EXPR) {
			break;
		}

		if (rule.infix == NULL) {
			parseError(parser, *parser->current, "unexpected token");
		}

		rule.infix(parser);
	}
}

void statement(Parser* parser) {
	expression(parser);
	consumeToken(parser, TOKEN_SEMICOLON, "expected ';' after expression");
}

void parse(Parser* parser) {
	writeHeader(parser->outputFile);

	while (parser->current->type != TOKEN_END_OF_FILE) {
		statement(parser);
	}

	writeFooter(parser->outputFile);
}
