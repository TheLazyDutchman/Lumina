CC = gcc
CFLAGS = 
compiler: cLumina.o lexer.o
	$(CC) -o ../lumina cLumina.o lexer.o $(CFLAGS)

cLumina.o: cLumina.c cLumina.h lexer.h
	$(CC) -c cLumina.c $(CFLAGS)

lexer.o: lexer.c lexer.h
	$(CC) -c lexer.c  $(CFLAGS)
