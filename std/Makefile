CC = ../lumina
SRCS = $(wildcard *.lumina)
OBJS = $(patsubst %.lumina, %.test, $(SRCS))

stdLib: $(OBJS)
	ls

%.test: %.lumina
	$(CC) -check ./$^
