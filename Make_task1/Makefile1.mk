all: main.o src1.o
	gcc -o executable_mk1 main.o src1.o

main.o: main.c
	gcc -c main.c
	
src1.o: src1.c
	gcc -c src1.c
	
.PHONY: clean
clean: 
	rm *.o
