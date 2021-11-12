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

enum Tokentype {
	TOKEN_NUMBER,
	TOKEN_PLUS,
	TOKEN_MINUS,
	TOKEN_CHAR,
	TOKEN_END_OF_FILE,
	TOKEN_TYPES_NUM
};

static const char* const tokenTypes[] = {
	[TOKEN_NUMBER] = "NUMBER",
	[TOKEN_PLUS] = "PLUS",
	[TOKEN_MINUS] = "MINUS",
	[TOKEN_CHAR] = "CHARACTER",
	[TOKEN_END_OF_FILE] = "END OF FILE",
};

_Static_assert(TOKEN_TYPES_NUM == 5, "Exhaustive handling of tokenTypes in string conversion\n");

typedef struct Token {
	char *fileName;
	char *word;
	int line;
	enum Tokentype type;
} Token;

Token *nextToken(Lexer* lexer);
void freeToken(Token* token);

#endif
