#
#      Makefile (containers) - this file is part of SDL_Widgets
#
#      Copyright (C) 2013 Dariusz Mikołajczuk <radomik(at)gmail(dot)com>
#
#      This program is free software; you can redistribute it and/or modify
#      it under the terms of the GNU General Public License as published by
#      the Free Software Foundation; either version 2 of the License, or
#      (at your option) any later version.
#
#      This program is distributed in the hope that it will be useful,
#      but WITHOUT ANY WARRANTY; without even the implied warranty of
#      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#      GNU General Public License for more details.
#
#      You should have received a copy of the GNU General Public License along
#      with this program; if not, write to the Free Software Foundation, Inc.,
#      51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

MAKEFILE_NAME  	:= "container"
CFILES     	    := $(wildcard *.c)
OFILES     	    := $(patsubst %.c, %.o, $(CFILES))
ASMFILES        := $(patsubst %.c, %.asm, $(CFILES))

asm:
	$(CC) $(AFLAGS) $(INC) -c Container.c -o $(ASMDIR)/Container.asm
	$(CC) $(AFLAGS) $(INC) -c FloatingMenu.c -o $(ASMDIR)/FloatingMenu.asm
	$(CC) $(AFLAGS) $(INC) -c Grid.c -o $(ASMDIR)/Grid.asm
	$(CC) $(AFLAGS) $(INC) -c StackList.c -o $(ASMDIR)/StackList.asm
	$(CC) $(AFLAGS) $(INC) -c StackListX.c -o $(ASMDIR)/StackListX.asm
	$(CC) $(AFLAGS) $(INC) -c StackListY.c -o $(ASMDIR)/StackListY.asm

all:
	$(CC) $(CFLAGS) $(INC) -c Container.c -o $(ODIR)/Container.o
	$(CC) $(CFLAGS) $(INC) -c FloatingMenu.c -o $(ODIR)/FloatingMenu.o
	$(CC) $(CFLAGS) $(INC) -c Grid.c -o $(ODIR)/Grid.o
	$(CC) $(CFLAGS) $(INC) -c StackList.c -o $(ODIR)/StackList.o
	$(CC) $(CFLAGS) $(INC) -c StackListX.c -o $(ODIR)/StackListX.o
	$(CC) $(CFLAGS) $(INC) -c StackListY.c -o $(ODIR)/StackListY.o
