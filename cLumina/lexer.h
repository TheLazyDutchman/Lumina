#ifndef cLumina_lexer_header
#define cLumina_lexer_header

typedef struct Lexer {
	char *fileName;
	char *buffer;
	char *current;
	int line;
	int column;
} Lexer;

Lexer *initLexer(char *filename);
void freeLexer(Lexer* lexer);

typedef enum Tokentype {
	TOKEN_NUMBER,
	TOKEN_PLUS,
	TOKEN_MINUS,
	TOKEN_EQUAL,
	TOKEN_CHAR,
	TOKEN_SEMICOLON,
	TOKEN_VAR,
	TOKEN_IDENTIFIER,
	TOKEN_END_OF_FILE,
	TOKEN_TYPES_NUM
} Tokentype;

static const char* const tokenTypes[] = {
	[TOKEN_NUMBER] = "NUMBER",
	[TOKEN_PLUS] = "PLUS",
	[TOKEN_MINUS] = "MINUS",
	[TOKEN_EQUAL] = "EQUAL",
	[TOKEN_CHAR] = "CHARACTER",
	[TOKEN_SEMICOLON] = "SEMICOLON",
	[TOKEN_VAR] = "VAR",
	[TOKEN_IDENTIFIER] = "IDENTIFIER",
	[TOKEN_END_OF_FILE] = "END OF FILE",
};

_Static_assert(TOKEN_TYPES_NUM == 9, "Exhaustive handling of tokenTypes in string conversion\n");

typedef struct Token {
	char *fileName;
	char *word;
	int line;
	Tokentype type;
} Token;

Token *nextToken(Lexer* lexer);
void freeToken(Token* token);

#endif
