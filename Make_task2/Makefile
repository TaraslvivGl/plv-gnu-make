
# The approach how to invoke other makefiles
# By default they are included
INVOKE_MKS?=include

SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)

ifeq ($(INVOKE_MKS), makef)
all: invoke
	@echo MK invoke method $(INVOKE_MKS)
	gcc -o executable $(SRC)
endif

all: $(OBJ)
	@echo MK invoke method: $(INVOKE_MKS)
	gcc -o executable $(SRC)

ifneq ($(INVOKE_MKS), makef)
    include *.mk
endif

invoke:
	make -f make1.mk
	make -f make2.mk
	make -f make3.mk 

main.o: main.c
	gcc -c main.c
	
.PHONY: clean
clean:
	-rm *.o
	-rm executable
	

