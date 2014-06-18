#  -msse3 -march=native -mtune=native -pipe -O1
CC := /usr/lib/colorgcc/bin/x86_64-pc-linux-gnu-gcc
CFLAGS := -Wall -march=native -mtune=native -pipe -O1
AFLAGS := $(CFLAGS) -S -masm=intel -fverbose-asm
INC := -I../CObject_1/include
all:
	$(CC) $(AFLAGS) $(INC) -c main.c -o main.asm
	$(CC) $(CFLAGS) $(INC) -c main.c -o main.o
	$(CC) -o main main.o -L../CObject_1/lib -lcobject
