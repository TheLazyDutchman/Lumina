#include <stdlib.h>
#include <stdio.h>

#include "parser.h"

Parser* initParser(char* fileName, ParseFlag flags) {
	Parser* parser;

	parser->lexer = initLexer(fileName);
	parser->current = NULL;
	parser->last = NULL;
	parser->flags = flags;

	parser->outputFile = fopen("a.out", "w");
	
	return parser;
}

void freeParser(Parser* parser) {
	freeLexer(parser->lexer);

	if (parser->last != NULL) {
		freeToken(parser->last);
	}
	if (parser->current != NULL) {
		freeToken(parser->current);
	}

	fclose(parser->outputFile);

	free(parser);
}

Token* next(Parser* parser) {
	if (parser->last != NULL) {
		freeToken(parser->last);
	}

	parser->last = parser->current;
	parser->current = nextToken(parser->lexer);
	return parser->current;
}

typedef void (*ParseFn)(Parser*);

typedef enum {
	PREC_NONE,
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

_Static_assert(TOKEN_TYPES_NUM == 4, "Exhaustive handling of token types in parsing");

ParseRule parseTable[] = {
	[TOKEN_NUMBER] = {number, NULL, PREC_PRIMARY},
	[TOKEN_PLUS] = {NULL, binary, PREC_TERM},
	[TOKEN_MINUS] = {unary, binary, PREC_UNARY},
	[TOKEN_END_OF_FILE] = {NULL, NULL, PREC_NONE}
};

void parseError(Token token, char* message) {
	printf("%s:%d ERROR at '%s': ", token.fileName, token.line, token.word);
	printf("%s", message);
	printf("\n");

	//TODO: enter panic mode
}

Token parsePrecedence(Parser* parser, Precedence precedence) {
	Token token = *next(parser);
	ParseRule rule = parseTable[token.type];

	if (rule.precedence < precedence) {
		parseError(token, "unexpected token");
	}

	if (rule.prefix == NULL) {
		parseError(token, "unexpected token");
	}

	rule.prefix(parser);

	return token;
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
		parseError(value, "could not convert string '%s' to int");
	}

	writeNumber(parser->outputFile, numberValue);
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

		if (rule.infix == NULL) {
			parseError(*parser->current, "unexpected token");
		}

		rule.infix(parser);
	}
}


void parse(Parser* parser) {
	expression(parser);
}
