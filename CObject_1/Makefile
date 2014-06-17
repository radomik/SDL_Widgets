
CFLAGS 	:= -Wall -msse3 -march=native -mtune=native -pipe -O1
CC 		:= gcc
AR		:= ar r
RANLIB	:= ranlib
SRCDIR 	:= src
ASMDIR 	:= asm
ODIR 	:= obj
LIBDIR 	:= lib
LIBNAME := libcobject.a
INC 	:= -I"include"

OFILES 	:= $(wildcard $(ODIR)/*.o)
LIBPATH := $(LIBDIR)/$(LIBNAME)


all:
	$(CC) $(CFLAGS) $(INC) -c $(SRCDIR)/coObjectModel.c -o $(ODIR)/coObjectModel.o
	$(CC) $(CFLAGS) $(INC) -c $(SRCDIR)/coError.c -o $(ODIR)/coError.o
	$(CC) $(CFLAGS) $(INC) -c $(SRCDIR)/coUtils.c -o $(ODIR)/coUtils.o
	
	$(AR) $(LIBPATH) $(OFILES)
	$(RANLIB) $(LIBPATH)
