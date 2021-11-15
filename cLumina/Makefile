CC = gcc
CFLAGS = 
compiler: cLumina.o lexer.o parser.o compiler.o variable.o
	$(CC) -o ../lumina cLumina.o lexer.o parser.o compiler.o variable.o $(CFLAGS)

cLumina.o: cLumina.c cLumina.h parser.h
	$(CC) -c cLumina.c $(CFLAGS)

lexer.o: lexer.c lexer.h
	$(CC) -c lexer.c  $(CFLAGS)

parser.o: parser.c parser.h lexer.h compiler.h
	$(CC) -c parser.c $(CFLAGS)

compiler.o: compiler.c compiler.h variable.h
	$(CC) -c compiler.c $(CFLAGS)

variable.o: variable.c variable.h
	$(CC) -c variable.c $(CFLAGS)
