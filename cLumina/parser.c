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

	parser->numIfs = 0;
	parser->numWhiles = 0;
	parser->numFuncs = 0;

	parser->strings = initStringList();

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

	freeStringList(parser->strings);

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
	PREC_FUNC,
	PREC_RETURN_STATEMENT,
	PREC_WHILE_STATEMENT,
	PREC_IF_STATEMENT,
	PREC_ASSIGNMENT,
	PREC_ARG,
	PREC_EXPR,
	PREC_COMPARISON,
	PREC_TERM,
	PREC_READ,
	PREC_UNARY,
	PREC_PRIMARY
} Precedence;

typedef struct {
	ParseFn prefix;
	ParseFn infix;
	Precedence precedence;
} ParseRule;

_Static_assert(TOKEN_TYPES_NUM == 28, "Exhaustive handling of token types in parsing");

ParseRule parseTable[] = {
	[TOKEN_NUMBER] = {number, NULL, PREC_PRIMARY},
	[TOKEN_CHAR] = {character, NULL, PREC_PRIMARY},
	[TOKEN_STR] = {string, NULL, PREC_PRIMARY},
	[TOKEN_PLUS] = {NULL, binary, PREC_TERM},
	[TOKEN_MINUS] = {unary, binary, PREC_UNARY},
	[TOKEN_EQUAL] = {NULL, NULL, PREC_ASSIGNMENT},
	[TOKEN_LESS] = {NULL, binary, PREC_COMPARISON},
	[TOKEN_GREATER] = {NULL, binary, PREC_COMPARISON},
	[TOKEN_LESSEQUAL] = {NULL, binary, PREC_COMPARISON},
	[TOKEN_GREATEREQUAL] = {NULL, binary, PREC_COMPARISON},
	[TOKEN_EQUALEQUAL] = {NULL, binary, PREC_COMPARISON},
	[TOKEN_RARROW] = {NULL, NULL, PREC_NONE},
	[TOKEN_LPAREN] = {NULL, NULL, PREC_BLOCK},
	[TOKEN_RPAREN] = {NULL, NULL, PREC_BLOCK},
	[TOKEN_LBRACKET] = {NULL, readIndex, PREC_READ},
	[TOKEN_RBRACKET] = {NULL, NULL, PREC_BLOCK},
	[TOKEN_LBRACE] = {NULL, NULL, PREC_BLOCK},
	[TOKEN_RBRACE] = {NULL, NULL, PREC_BLOCK},
	[TOKEN_SEMICOLON] = {NULL, NULL, PREC_STATEMENT},
	[TOKEN_VAR] = {NULL, NULL, PREC_ASSIGNMENT},
	[TOKEN_IF] = {NULL, NULL, PREC_IF_STATEMENT},
	[TOKEN_WHILE] = {NULL, NULL, PREC_WHILE_STATEMENT},
	[TOKEN_FUNC] = {NULL, NULL, PREC_FUNC},
	[TOKEN_RETURN] = {NULL, NULL, PREC_RETURN_STATEMENT},
	[TOKEN_COMMA] = {NULL, NULL, PREC_ARG},
	[TOKEN_IDENTIFIER] = {identifier, NULL, PREC_PRIMARY},
	[TOKEN_END_OF_FILE] = {NULL, NULL, PREC_NONE},
	[TOKEN_ERROR] = {NULL, NULL, PREC_NONE}
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
		next(parser);

		token.type = TOKEN_ERROR;

		return token; 
	}

	if (rule.prefix == NULL) {
		parseError(parser, token, "unexpected token");
		next(parser);

		token.type = TOKEN_ERROR;

		return token;
	}

	rule.prefix(parser);

	return token;
}

Token consumeToken(Parser* parser, Tokentype type, char* message) {
	Token token = *parser->current;
	if (token.type != type) {
		parseError(parser, token, message);

		token.type = TOKEN_ERROR;
		return token;
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
		return;
	}

	writeNumber(parser->compiler, numberValue);

	parser->lastType = initType("int", value);

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

	char *chr = value.word + 1;
	writeCharacter(parser->compiler, &chr);

	parser->lastType = initType("char", value);

	next(parser);
}

void string(Parser* parser) {
	Token value = *parser->current;
	if (value.type != TOKEN_STR) {
		printf("incorrect reference in parseTable: '%s' points to string\n", tokenTypes[value.type]);
	}

	uint16_t id = parser->strings->size;
	addString(parser->strings, value);

	writeString(parser->compiler, id);

	parser->lastType = initType("str", value);

	next(parser);
}

void readIndex(Parser* parser) {
	next(parser);

	if (strcmp(parser->lastType->name, "str") != 0) { parseError(parser, parser->lastType->token, "we do not support array indexing for anything other than strings yet"); }

	expression(parser);

	writeReadIndex(parser->compiler);

	freeType(parser->lastType);
	parser->lastType = initType("char", *parser->current);

	consumeToken(parser, TOKEN_RBRACKET, "expected ']' after index");
}

void identifier(Parser* parser) {
	Token identifier = *parser->current;
	if (identifier.type != TOKEN_IDENTIFIER) {
		printf("incorrect reference in parseTable: '%s' points to identifier\n", tokenTypes[identifier.type]);
	}

	Token nextToken = *next(parser);
	if (nextToken.type == TOKEN_EQUAL) {
		next(parser);

		expression(parser);

		Variable *var = findVariable(parser->compiler, identifier.word, identifier.wordLen);

		if (var == NULL) {
			parseError(parser, identifier, "variable '%s' is undefined");
			return;
		}

		writeAssignment(parser->compiler, var->position, var->functionDepth);
	} else if (nextToken.type == TOKEN_LPAREN) {
		next(parser);
		Function *func = findFunction(parser->compiler, identifier.word, identifier.wordLen);

		if (func == NULL) {
			parseError(parser, identifier, "function is undefined");
			return;
		}

		uint16_t numCalls = func->numCalls++;

		if (func->parameters->size > 0) {
			expression(parser);

			if (strcmp(func->parameters->types[0]->name, parser->lastType->name) != 0) { 
				parseError(parser, *parser->current, "incorrect type passed to function");
				return;
			}

			int i = 0;
			while (parser->current->type == TOKEN_COMMA) {
				next(parser);

				i++;
				if (func->parameters->size < i + 1) { 
					parseError( parser, *parser->current, "too many arguments passed to function"); 
					return;
				}

				expression(parser);

				if (strcmp(func->parameters->types[i]->name, parser->lastType->name) != 0) { 
					parseError(parser, *parser->current, "incorrect type passed to function"); 
					return;
				}
			}

			if (i + 1 < func->parameters->size) {
				parseError(parser, *parser->current, "too few arguments passed to function");
				return;
			}
		}

		if (consumeToken(parser, TOKEN_RPAREN, "expected ')' after arguments").type == TOKEN_ERROR) { return; }
		parser->compiler->currentStackSize -= func->parameters->size;
		
		writeCall(parser->compiler, func->id, numCalls);

		parser->lastType = initType(func->returnType->name, identifier);
	} else {
		Variable *var = findVariable(parser->compiler, identifier.word, identifier.wordLen);

		if (var == NULL) {
			parseError(parser, identifier, "variable '%s' is undefined");
			return;
		}

		writeIdentifier(parser->compiler, var->position, var->functionDepth);

		if (parser->lastType != NULL) {
			freeType(parser->lastType);
		}
		
		Type *type = findVariableType(parser->compiler, identifier.word, identifier.wordLen);
		if (type != NULL) {
			parser->lastType = initType(type->name, identifier);
		}
	}
}

void dumpBinary(Parser* parser, Token operator) {
	if (parser->flags & FLAG_DUMP) {
		printf("%s:%d: binary '%s'\n", operator.fileName, operator.line, tokenTypes[operator.type]);
	}
}

void binary(Parser* parser) {
	Token operator = *parser->current;
	Type value1 = *parser->lastType;

	Precedence precedence;

	switch (operator.type) {
		case TOKEN_PLUS:
		case TOKEN_MINUS:
			precedence = PREC_TERM + 1;
			break;
		case TOKEN_LESS:
		case TOKEN_GREATER:
		case TOKEN_LESSEQUAL:
		case TOKEN_GREATEREQUAL:
		case TOKEN_EQUALEQUAL:
			precedence = PREC_COMPARISON + 1;
			break;
		default:
			printf("incorrect reference in parseTable: '%s' points to binary\n", tokenTypes[operator.type]);
	}

	next(parser);

	parsePrecedence(parser, precedence);

	switch (operator.type) {
		case TOKEN_PLUS:
			dumpBinary(parser, operator);

			if (strcmp(value1.name, "int") != 0 && strcmp(value1.name, "char") != 0) {
				parseError(parser, value1.token, "can not add something that is not 'int' or 'char'");
				return;
			}
			if (strcmp(parser->lastType->name, "int") != 0 && strcmp(parser->lastType->name, "char") != 0) {
				parseError(parser, parser->lastType->token, "can not add something that is not 'int' or 'char'");
				return;
			}

			if (strcmp(value1.name, "char") == 0 && strcmp(parser->lastType->name, "char") == 0) {
				parseError(parser, parser->lastType->token, "can not add 2 characters together");
				return;
			}

			writeAdd(parser->compiler);

			if (strcmp(value1.name, "char") == 0 || strcmp(parser->lastType->name, "char") == 0) {
				freeType(parser->lastType);

				parser->lastType == initType("char", operator);
			} else {
				freeType(parser->lastType);

				parser->lastType == initType("int", operator);
			}

			break;
		case TOKEN_MINUS:
			dumpBinary(parser, operator);

			if (strcmp(value1.name, "int") != 0 && strcmp(value1.name, "char") != 0) {
				parseError(parser, value1.token, "can not subtract something that is not 'int' or 'char'");
				return;
			}
			if (strcmp(parser->lastType->name, "int") != 0 && strcmp(parser->lastType->name, "char") != 0) {
				parseError(parser, parser->lastType->token, "can not subtract something that is not 'int' or 'char'");
				return;
			}

			if (strcmp(value1.name, "int") == 0 && strcmp(parser->lastType->name, "char") == 0) {
				parseError(parser, parser->lastType->token, "can not subtract a 'char' from an 'int'");
				return;
			}

			writeSubtract(parser->compiler);

			if (strcmp(value1.name, "char") == 0 && strcmp(parser->lastType->name, "int") == 0) {
				freeType(parser->lastType);

				parser->lastType = initType("char", operator);
			} else {
				freeType(parser->lastType);

				parser->lastType = initType("int", operator);
			}

			break;
		case TOKEN_LESS:
			dumpBinary(parser, operator);

			if (strcmp(value1.name, parser->lastType->name) != 0) {
				parseError(parser, operator, "can not compare two values with different type");
				return;
			}

			writeLess(parser->compiler);

			freeType(parser->lastType);

			parser->lastType = initType("bool", operator);
			break;
		case TOKEN_LESSEQUAL:
			dumpBinary(parser, operator);

			if (strcmp(value1.name, parser->lastType->name) != 0) {
				parseError(parser, operator, "can not compare two values with different type");
				return;
			}

			writeLessEqual(parser->compiler);

			freeType(parser->lastType);

			parser->lastType = initType("bool", operator);
			break;
		case TOKEN_GREATER:
			dumpBinary(parser, operator);

			if (strcmp(value1.name, parser->lastType->name) != 0) {
				parseError(parser, operator, "can not compare two values with different type");
				return;
			}

			writeGreater(parser->compiler);

			freeType(parser->lastType);

			parser->lastType = initType("bool", operator);
			break;
		case TOKEN_GREATEREQUAL:
			dumpBinary(parser, operator);

			if (strcmp(value1.name, parser->lastType->name) != 0) {
				parseError(parser, operator, "can not compare two values with different type");
				return;
			}

			writeGreaterEqual(parser->compiler);

			freeType(parser->lastType);

			parser->lastType = initType("bool", operator);
			break;
		case TOKEN_EQUALEQUAL:
			dumpBinary(parser, operator);

			if (strcmp(value1.name, parser->lastType->name) != 0) {
				parseError(parser, operator, "can not compare two values with different type");
				return;
			}

			writeEqual(parser->compiler);

			freeType(parser->lastType);

			parser->lastType = initType("bool", operator);
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

			if (strcmp(parser->lastType->name, "int") != 0) {
				parseError(parser, parser->lastType->token, "cannot take the negative of type '%s'");
				return;
			}

			writeNegative(parser->compiler);

			break;
		default:
			printf("incorrect reference in parseTable: '%s' points to unary\n", tokenTypes[operator.type]);
	}
}

void expression(Parser* parser) {
	if (parsePrecedence(parser, PREC_EXPR).type == TOKEN_ERROR) {
		return;
	}

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

	if (findLocalVariable(parser->compiler, identifier.word, identifier.wordLen) != NULL) { parseError(parser, identifier, "there already exists a variable with this name"); }
	if (findLocalFunction(parser->compiler, identifier.word, identifier.wordLen) != NULL) { parseError(parser, identifier, "there already exists a function with this name"); }

	consumeToken(parser, TOKEN_EQUAL, "expected '=' after variable name in definition");

	expression(parser);
	consumeToken(parser, TOKEN_SEMICOLON, "expected ';' after variable definition");

	char* typeName = "NULL";
	if (parser->lastType != NULL) {
		typeName = parser->lastType->name;
	}

	Type *type = initType(typeName, identifier);

	defineVariable(parser->compiler, identifier.word, identifier.wordLen, type);
}

void whileStatement(Parser* parser) {
	uint32_t whileId = parser->numWhiles++;

	writeAddress(parser->compiler, "addr_while_condition", whileId);
	consumeToken(parser, TOKEN_LPAREN, "expected '(' after 'while' keyword");

	expression(parser);

	if (parser->lastType == NULL) {
		return;
	}

	if (strcmp(parser->lastType->name, "bool") != 0) {
		parseError(parser, parser->lastType->token, "expected while condition to be of type boolean");
		return;
	}

	writeCondition(parser->compiler);

	consumeToken(parser, TOKEN_RPAREN, "expected ')' after condition");

	writeJumpNotEqual(parser->compiler, "addr_while_end", whileId);

	consumeToken(parser, TOKEN_LBRACE, "expected '{' before 'while' block");

	block(parser, NULL, NULL);

	writeJump(parser->compiler, "addr_while_condition", whileId);
	writeAddress(parser->compiler, "addr_while_end", whileId);
}

void ifStatement(Parser* parser) {
	uint32_t ifId = parser->numIfs++;

	if (consumeToken(parser, TOKEN_LPAREN, "expected '(' after 'if' keyword").type == TOKEN_ERROR) {
		return;
	}

	expression(parser);

	if (parser->lastType == NULL) {
		return;
	}
	
	if (strcmp(parser->lastType->name, "bool") != 0) {
		parseError(parser, parser->lastType->token, "expected if condition to be of type boolean");
		return;
	}

	writeCondition(parser->compiler);
	
	consumeToken(parser, TOKEN_RPAREN, "expected ')' after condition");

	writeJumpNotEqual(parser->compiler, "addr_if", ifId);

	consumeToken(parser, TOKEN_LBRACE, "expected '{' before 'if' block");

	block(parser, NULL, NULL);

	writeAddress(parser->compiler, "addr_if", ifId);
}

void functionDefinition(Parser* parser) {
	uint32_t funcId = parser->numFuncs++;

	Token name = consumeToken(parser, TOKEN_IDENTIFIER, "expected function name");

	if (name.type == TOKEN_ERROR) { return;}

	if (consumeToken(parser, TOKEN_LPAREN, "expected '(' after function name").type == TOKEN_ERROR) { return; }

	TypeList *parameters = initTypeList();

	if (parser->current->type != TOKEN_RPAREN) {
		Token type = consumeToken(parser, TOKEN_IDENTIFIER, "expected parameter type");
		Token name = consumeToken(parser, TOKEN_IDENTIFIER, "expected parameter name");

		char* typeName = strndup(type.word, type.wordLen);

		addType(parameters, typeName, name);
		free(typeName);

		while (parser->current->type == TOKEN_COMMA) {
			next(parser);
			Token type = consumeToken(parser, TOKEN_IDENTIFIER, "expected parameter type");
			Token name = consumeToken(parser, TOKEN_IDENTIFIER, "expected parameter name");

			char* typeName = strndup(type.word, type.wordLen);

			addType(parameters, typeName, name);
			free(typeName);
		}	
	}
	
	if (consumeToken(parser, TOKEN_RPAREN, "expected ')' after function arguments").type == TOKEN_ERROR) { return; }

	Type *type;

	if (parser->current->type == TOKEN_RARROW) {
		next(parser);

		Token typeToken = consumeToken(parser, TOKEN_IDENTIFIER, "expected return type");
		
		type = initType(strndup(typeToken.word, typeToken.wordLen), typeToken);
	} else {
		type = initType("null", name);
	}

	defineFunction(parser->compiler, name.word, name.wordLen, funcId, type, parameters);

	if (consumeToken(parser, TOKEN_LBRACE, "expected '{' before function block").type == TOKEN_ERROR) { return;}

	writeBeginFunction(parser->compiler, funcId, parameters->size);

	block(parser, findFunction(parser->compiler, name.word, name.wordLen), parameters);

	writeAddress(parser->compiler, "addr_func_end", funcId);
}

void block(Parser* parser, Function *func, TypeList *parameters) {
	Compiler* scopeCompiler = initCompiler(parser->outputFile, parser->compiler);
	
	if (func != NULL) {
		scopeCompiler->function = func;
		scopeCompiler->functionDepth++;
	}

	if (parameters != NULL) {
		int i = 0;
		while (i < parameters->size) {
			//block will free the types, so we need to copy them first
			Type *parameter = initType(parameters->types[i]->name, parameters->types[i]->token);

			scopeCompiler->currentStackSize++;
			defineVariable(scopeCompiler, parameter->token.word, parameter->token.wordLen, parameter);

			i++;
		}
	}

	if (func != NULL) {
		scopeCompiler->currentStackSize++;
	}

	parser->compiler = scopeCompiler;

	while (parser->current->type != TOKEN_END_OF_FILE && parser->current->type != TOKEN_RBRACE) {
		statement(parser);
	}

	if (scopeCompiler->function != scopeCompiler->outer->function) {// the outermost block of the function body
		if (strcmp(func->returnType->name, "null") != 0) {
			if (!scopeCompiler->hasReturned) {
				parseError(parser, *parser->current, "not al code paths return a value");
			}
		} else {
			writeReturnEmpty(parser->compiler, parser->compiler->currentStackSize);
		}
	} else {
		int numLocalVariables = scopeCompiler->variableList->size;
		writePop(scopeCompiler, numLocalVariables);
	}

	consumeToken(parser, TOKEN_RBRACE, "expected '}' after block");

	parser->compiler = scopeCompiler->outer;
	freeCompiler(scopeCompiler);
}

void returnStatement(Parser* parser) {
	Function *func = parser->compiler->function;

	if (func == NULL) {
		parseError(parser, *parser->current, "can only return from a function");
		return;
	}

	//calculate the amount of variables in the function, as they need to be dropped from the data stack
	
	uint16_t numVars = parser->compiler->currentStackSize;
	Compiler* currentCompiler = parser->compiler->outer;

	while (currentCompiler->function == func) {
		numVars += currentCompiler->currentStackSize;
		currentCompiler = currentCompiler->outer;
	}

	if (strcmp(func->returnType->name, "null") == 0) {
		consumeToken(parser, TOKEN_SEMICOLON, "expected empty return in a 'null' function");

		writeReturnEmpty(parser->compiler, numVars);
	} else {
		expression(parser);

		if (strcmp(func->returnType->name, parser->lastType->name) != 0) {
			parseError(parser, *parser->current, "incorrect return type");
			printf("NOTE: expected: '%s', recieved: '%s'\n", func->returnType->name, parser->lastType->name);
		}

		consumeToken(parser, TOKEN_SEMICOLON, "expected ';' after return statement");

		writeReturnValue(parser->compiler, numVars);
	}

	parser->compiler->hasReturned = true;
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
	} else if (parser->current->type == TOKEN_FUNC) {
		next(parser);

		functionDefinition(parser);
	} else if (parser->current->type == TOKEN_RETURN) {
		next(parser);

		returnStatement(parser);
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

	writeFooter(parser->compiler, parser->strings);
}
