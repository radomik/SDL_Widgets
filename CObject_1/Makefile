
CFLAGS 	:= -Wall -msse3 -march=native -mtune=native -pipe -O1 -ansi -pedantic
AFLAGS  := $(CFLAGS) -S -masm=intel -fverbose-asm
CC 		:= /usr/lib/colorgcc/bin/x86_64-pc-linux-gnu-gcc
AR		:= ar r
RANLIB	:= ranlib
SRCDIR 	:= src
ASMDIR 	:= asm
ODIR 	:= obj
ASMDIR  := asm
LIBDIR 	:= lib
LIBNAME := libcobject.a
INC 	:= -I"include"

OFILES 	:= $(wildcard $(ODIR)/*.o)
LIBPATH := $(LIBDIR)/$(LIBNAME)

.PHONY: asm

asm:
	$(CC) $(AFLAGS) $(INC) -c $(SRCDIR)/coObjectModel.c -o $(ASMDIR)/coObjectModel.asm
	$(CC) $(AFLAGS) $(INC) -c $(SRCDIR)/coError.c -o $(ASMDIR)/coError.asm
	$(CC) $(AFLAGS) $(INC) -c $(SRCDIR)/coUtils.c -o $(ASMDIR)/coUtils.asm
	

all:
	$(CC) $(CFLAGS) $(INC) -c $(SRCDIR)/coObjectModel.c -o $(ODIR)/coObjectModel.o
	$(CC) $(CFLAGS) $(INC) -c $(SRCDIR)/coError.c -o $(ODIR)/coError.o
	$(CC) $(CFLAGS) $(INC) -c $(SRCDIR)/coUtils.c -o $(ODIR)/coUtils.o
	
	$(AR) $(LIBPATH) $(OFILES)
	$(RANLIB) $(LIBPATH)
