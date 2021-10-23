#include <stdlib.h>

#include "lexer.h"

char *readFile(char *fileName){
	FILE *fd = fopen(fileName, "r");
	char *buffer = 0;
	if(fd) {
		fseek(fd, 0, SEEK_END);
		size_t length = ftell(fd);
		fseek(fd, 0, SEEK_SET);

		buffer = malloc(length + 1);
		if (buffer) {
			fread(buffer, 1, length, fd);
			buffer[length] = '\0';	
		} else {
			printf("could not create a buffer for file %s", fileName);
		}
	} else {
		printf("could not open file %s", fileName);
	}
	fclose(fd);
	if (buffer) {
		return buffer;
	}
	//return '';
}

Lexer initLexer(FILE *fd){
	Lexer lexer;
	lexer.line = 0;
}
