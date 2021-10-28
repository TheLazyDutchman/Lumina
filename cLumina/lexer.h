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
	NUMBER,
	PLUS,
	MINUS,
	END_OF_FILE
};

static const char* const tokenTypes[] = {
	[NUMBER] = "NUMBER",
	[PLUS] = "PLUS",
	[MINUS] = "MINUS",
	[END_OF_FILE] = "END OF FILE",
};

_Static_assert(sizeof(tokenTypes) / sizeof(tokenTypes[0]) == 4, "Exhaustive handling of tokenTypes in string conversion\n");

typedef struct Token {
	char *fileName;
	char *word;
	int line;
	enum Tokentype type;
} Token;

Token *nextToken(Lexer* lexer);
void freeToken(Token* token);

#endif
