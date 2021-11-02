CC = gcc
CFLAGS = 
compiler: cLumina.o lexer.o parser.o
	$(CC) -o ../lumina cLumina.o lexer.o parser.o $(CFLAGS)

cLumina.o: cLumina.c cLumina.h parser.h
	$(CC) -c cLumina.c $(CFLAGS)

lexer.o: lexer.c lexer.h
	$(CC) -c lexer.c  $(CFLAGS)

parser.o: parser.c parser.h lexer.h
	$(CC) -c parser.c $(CFLAGS)
