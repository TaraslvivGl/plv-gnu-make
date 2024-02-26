CC=gcc
SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
APP_NAME=executable_mk2

all: $(OBJ)
	$(CC) -o $(APP_NAME) $^

%.o: %.c
	$(CC) -c $<

.PHONY: clean

clean: 
	-rm *.o
