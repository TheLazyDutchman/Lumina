#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "parser.h"

Parser* initParser(char* inputName, char* outputName, ParseFlag flags) {
	Parser* parser = malloc(sizeof(Parser));

	parser->lexer = initLexer(inputName);
	parser->current = nextToken(parser->lexer);
	parser->lastType = NULL;
	parser->flags = flags;

	parser->outputFile = fopen(outputName, "w");

	parser->compiler = initCompiler(parser->outputFile, NULL);

	parser->hadError = false;
	
	return parser;
}

void freeParser(Parser* parser) {
	freeLexer(parser->lexer);

	if (parser->current != NULL) {
		freeToken(parser->current);
	}

	if (parser->lastType != NULL) {
		freeType(parser->lastType);
	}

	freeCompiler(parser->compiler);

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
	PREC_BLOCK,
	PREC_STATEMENT,
	PREC_WHILE_STATEMENT,
	PREC_IF_STATEMENT,
	PREC_ASSIGNMENT,
	PREC_COMPARISON,
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

_Static_assert(TOKEN_TYPES_NUM == 16, "Exhaustive handling of token types in parsing");

ParseRule parseTable[] = {
	[TOKEN_NUMBER] = {number, NULL, PREC_PRIMARY},
	[TOKEN_CHAR] = {character, NULL, PREC_PRIMARY},
	[TOKEN_PLUS] = {NULL, binary, PREC_TERM},
	[TOKEN_MINUS] = {unary, binary, PREC_UNARY},
	[TOKEN_EQUAL] = {NULL, NULL, PREC_ASSIGNMENT},
	[TOKEN_EQUALEQUAL] = {NULL, NULL, PREC_COMPARISON},
	[TOKEN_LPAREN] = {NULL, NULL, PREC_BLOCK},
	[TOKEN_RPAREN] = {NULL, NULL, PREC_BLOCK},
	[TOKEN_LBRACE] = {NULL, NULL, PREC_BLOCK},
	[TOKEN_RBRACE] = {NULL, NULL, PREC_BLOCK},
	[TOKEN_SEMICOLON] = {NULL, NULL, PREC_STATEMENT},
	[TOKEN_VAR] = {NULL, NULL, PREC_ASSIGNMENT},
	[TOKEN_IF] = {NULL, NULL, PREC_IF_STATEMENT},
	[TOKEN_WHILE] = {NULL, NULL, PREC_WHILE_STATEMENT},
	[TOKEN_IDENTIFIER] = {identifier, NULL, PREC_PRIMARY},
	[TOKEN_END_OF_FILE] = {NULL, NULL, PREC_NONE}
};

void panic(Parser* parser) {
	Tokentype type = parser->current->type;
	while (type != TOKEN_SEMICOLON && type != TOKEN_RBRACE && type != TOKEN_RPAREN && type != TOKEN_END_OF_FILE) {
		type = next(parser)->type;
	}
}

void parseError(Parser* parser, Token token, char* message) {
	char* word = strndup(token.word, token.wordLen);
	printf("%s:%d ERROR at '%s': ", token.fileName, token.line, word);
	printf("%s", message);
	printf("\n");

	free(word);

	parser->hadError = true;

	panic(parser);
}

Token parsePrecedence(Parser* parser, Precedence precedence) {
	Token token = *parser->current;
	ParseRule rule = parseTable[token.type];

	if (rule.precedence < precedence) {
		parseError(parser, token, "unexpected token");
	}

	if (rule.prefix == NULL) {
		parseError(parser, token, "unexpected token");

		return token;
	}

	rule.prefix(parser);

	return token;
}

Token consumeToken(Parser* parser, Tokentype type, char* message) {
	Token token = *parser->current;
	if (token.type != type) {
		parseError(parser, token, message);
	}

	next(parser);

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
	if (result - value.word != value.wordLen) {
		parseError(parser, value, "could not convert string '%s' to int");
	}

	writeNumber(parser->compiler, numberValue);

	next(parser);
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

	writeCharacter(parser->compiler, charValue);

	next(parser);
}

void identifier(Parser* parser) {
	Token identifier = *parser->current;
	if (identifier.type != TOKEN_IDENTIFIER) {
		printf("incorrect reference in parseTable: '%s' points to identifier\n", tokenTypes[identifier.type]);
	}

	if (next(parser)->type == TOKEN_EQUAL) {
		next(parser);

		expression(parser);

		uint16_t offset = findVariable(parser->compiler, identifier.word, identifier.wordLen);

		if (offset == -1) {
			parseError(parser, identifier, "variable '%s' is undefined");
			return;
		}

		writeAssignment(parser->compiler, offset);
	} else {
		uint16_t offset = findVariable(parser->compiler, identifier.word, identifier.wordLen);

		if (offset == -1) {
			parseError(parser, identifier, "variable '%s' is undefined");
			return;
		}

		writeIdentifier(parser->compiler, offset);
	}
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

			writeAdd(parser->compiler);

			break;
		case TOKEN_MINUS:
			dumpBinary(parser, operator);

			writeSubtract(parser->compiler);

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

			writeNegative(parser->compiler);

			break;
		default:
			printf("incorrect reference in parseTable: '%s' points to unary\n", tokenTypes[operator.type]);
	}
}

void expression(Parser* parser) {
	parsePrecedence(parser, PREC_EXPR);

	while (parser->current->type != TOKEN_END_OF_FILE) {
		ParseRule rule = parseTable[parser->current->type];

		if (rule.precedence < PREC_EXPR) {
			break;
		}

		if (rule.infix == NULL) {
			parseError(parser, *parser->current, "unexpected token");

			break;
		}

		rule.infix(parser);
	}
}

void dumpIdentifier(Parser* parser, Token token) {
	if (parser->flags & FLAG_DUMP) {
		printf("%s:%d: identifier '%s'\n", token.fileName, token.line, token.word);
	}
}

void variableDefinition(Parser* parser) {
	Token identifier = consumeToken(parser, TOKEN_IDENTIFIER, "expected variable name in definition");

	dumpIdentifier(parser, identifier);

	consumeToken(parser, TOKEN_EQUAL, "expected '=' after variable name in definition");

	expression(parser);
	consumeToken(parser, TOKEN_SEMICOLON, "expected ';' after variable definition");

	defineVariable(parser->compiler, identifier.word, identifier.wordLen);
}

void condition(Parser* parser) {
	expression(parser);

	Token operator = consumeToken(parser, TOKEN_EQUALEQUAL, "expected '==' in comparison");

	expression(parser);

	writeCompare(parser->compiler);
}

void whileStatement(Parser* parser) {
	uint32_t whileId = parser->compiler->numWhiles++;

	writeAddress(parser->compiler, "addr_while_condition", whileId);
	consumeToken(parser, TOKEN_LPAREN, "expected '(' after 'while' keyword");

	condition(parser);

	consumeToken(parser, TOKEN_RPAREN, "expected ')' after condition");

	writeJumpNotEqual(parser->compiler, "addr_while_end", whileId);

	consumeToken(parser, TOKEN_LBRACE, "expected '{' before 'while' block");

	block(parser);

	writeJump(parser->compiler, "addr_while_condition", whileId);
	writeAddress(parser->compiler, "addr_while_end", whileId);
}

void ifStatement(Parser* parser) {
	uint32_t ifId = parser->compiler->numIfs++;

	consumeToken(parser, TOKEN_LPAREN, "expected '(' after 'if' keyword");

	condition(parser);
	
	consumeToken(parser, TOKEN_RPAREN, "expected ')' after condition");

	writeJumpNotEqual(parser->compiler, "addr_if", ifId);

	consumeToken(parser, TOKEN_LBRACE, "expected '{' before 'if' block");

	block(parser);

	writeAddress(parser->compiler, "addr_if", ifId);
}

void block(Parser* parser) {
	Compiler* scopeCompiler = initCompiler(parser->outputFile, parser->compiler);
	parser->compiler = scopeCompiler;

	while (parser->current->type != TOKEN_END_OF_FILE && parser->current->type != TOKEN_RBRACE) {
		statement(parser);
	}

	consumeToken(parser, TOKEN_RBRACE, "expected '}' after block");

	int numLocalVariables = scopeCompiler->variableList->size;
	writePop(scopeCompiler, numLocalVariables);

	parser->compiler = scopeCompiler->outer;
	freeCompiler(scopeCompiler);
}

void statement(Parser* parser) {
	if (parser->current->type == TOKEN_VAR) {
		next(parser);

		variableDefinition(parser);
	} else if (parser->current->type == TOKEN_WHILE) {
		next(parser);

		whileStatement(parser);
	} else if (parser->current->type == TOKEN_IF) {
		next(parser);

		ifStatement(parser);
	} else if (parser->current->type == TOKEN_IDENTIFIER && strncmp(parser->current->word, "print", parser->current->wordLen) == 0) { //temporary print function
		next(parser);

		consumeToken(parser, TOKEN_LPAREN, "expected '(' after function name");
		expression(parser);
		consumeToken(parser, TOKEN_RPAREN, "expected ')' after function parameters");

		writePrint(parser->compiler);
		consumeToken(parser, TOKEN_SEMICOLON, "expected ';' after function call");
	} else {
		expression(parser);
		consumeToken(parser, TOKEN_SEMICOLON, "expected ';' after expression");
		writePop(parser->compiler, 1);
	}
}

void parse(Parser* parser) {
	writeHeader(parser->compiler);

	while (parser->current->type != TOKEN_END_OF_FILE) {
		statement(parser);
	}

	writeFooter(parser->compiler);
}
