CC = gcc
CFLAGS = 
SRCS = $(wildcard *.c)
OBJS = $(patsubst %.c, %.o, $(SRCS))

all: cLumina

cLumina: $(OBJS)
	$(CC) $^ -o ../lumina

%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@
