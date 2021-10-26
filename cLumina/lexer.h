#ifndef cLumina_lexer_header
#define cLumina_lexer_header

typedef struct Lexer {
	char *fileName;
	char *buffer;
	char *current;
	int line;
	int column;
} Lexer;

Lexer initLexer(char *filename);
void freeLexer(Lexer lexer);

enum Tokentype {
	NUMBER
};

typedef struct Token {
	char *fileName;
	char *start;
	char *end;
	int line;
	enum Tokentype type;
} Token;

Token nextToken(Lexer lexer);

#endif
