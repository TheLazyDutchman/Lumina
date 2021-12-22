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
	TOKEN_LESS,
	TOKEN_GREATER,
	TOKEN_LESSEQUAL,
	TOKEN_GREATEREQUAL,
	TOKEN_EQUALEQUAL,
	TOKEN_LPAREN,
	TOKEN_RPAREN,
	TOKEN_LBRACE,
	TOKEN_RBRACE,
	TOKEN_CHAR,
	TOKEN_SEMICOLON,
	TOKEN_VAR,
	TOKEN_IF,
	TOKEN_WHILE,
	TOKEN_FUNC,
	TOKEN_COMMA,
	TOKEN_IDENTIFIER,
	TOKEN_END_OF_FILE,
	TOKEN_ERROR,
	TOKEN_TYPES_NUM
} Tokentype;

static const char* const tokenTypes[] = {
	[TOKEN_NUMBER] = "NUMBER",
	[TOKEN_PLUS] = "PLUS",
	[TOKEN_MINUS] = "MINUS",
	[TOKEN_EQUAL] = "EQUAL",
	[TOKEN_LESS] = "LESS",
	[TOKEN_GREATER] = "GREATER",
	[TOKEN_LESSEQUAL] = "LESSEQUAL",
	[TOKEN_GREATER] = "GREATEREQUAL",
	[TOKEN_EQUALEQUAL] = "EQUALEQUAL",
	[TOKEN_LPAREN] = "LPAREN",
	[TOKEN_RPAREN] = "RPAREN",
	[TOKEN_LBRACE] = "LBRACE",
	[TOKEN_RBRACE] = "RBRACE",
	[TOKEN_CHAR] = "CHARACTER",
	[TOKEN_SEMICOLON] = "SEMICOLON",
	[TOKEN_VAR] = "VAR",
	[TOKEN_IF] = "IF",
	[TOKEN_WHILE] = "WHILE",
	[TOKEN_FUNC] = "FUNC",
	[TOKEN_COMMA] = "COMMA",
	[TOKEN_IDENTIFIER] = "IDENTIFIER",
	[TOKEN_END_OF_FILE] = "END OF FILE",
	[TOKEN_ERROR] = "ERROR",
};

_Static_assert(TOKEN_TYPES_NUM == 23, "Exhaustive handling of tokenTypes in string conversion\n");

typedef struct Token {
	char *fileName;
	char *word;
	int wordLen;
	int line;
	Tokentype type;
} Token;

Token *nextToken(Lexer* lexer);
void freeToken(Token* token);

#endif
