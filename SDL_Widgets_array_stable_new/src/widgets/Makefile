#
#      Makefile (widgets) - this file is part of SDL_Widgets
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

MAKEFILE_NAME  	:= "widgets"
CFILES     	    := $(wildcard *.c)
OFILES     	    := $(patsubst %.c, %.o, $(CFILES))
ASMFILES        := $(patsubst %.c, %.asm, $(CFILES))

asm:
	cd container; make asm
	$(CC) $(AFLAGS) $(INC) -c Button.c -o $(ASMDIR)/Button.asm
	$(CC) $(AFLAGS) $(INC) -c ButtonImage.c -o $(ASMDIR)/ButtonImage.asm
	$(CC) $(AFLAGS) $(INC) -c Image.c -o $(ASMDIR)/Image.asm
	$(CC) $(AFLAGS) $(INC) -c Label.c -o $(ASMDIR)/Label.asm
	$(CC) $(AFLAGS) $(INC) -c LabelImage.c -o $(ASMDIR)/LabelImage.asm
	$(CC) $(AFLAGS) $(INC) -c Rectangle.c -o $(ASMDIR)/Rectangle.asm
	$(CC) $(AFLAGS) $(INC) -c TextBlock.c -o $(ASMDIR)/TextBlock.asm
	$(CC) $(AFLAGS) $(INC) -c Widget.c -o $(ASMDIR)/Widget.asm

all:
	cd container; make all
	$(CC) $(CFLAGS) $(INC) -c Button.c -o $(ODIR)/Button.o
	$(CC) $(CFLAGS) $(INC) -c ButtonImage.c -o $(ODIR)/ButtonImage.o
	$(CC) $(CFLAGS) $(INC) -c Image.c -o $(ODIR)/Image.o
	$(CC) $(CFLAGS) $(INC) -c Label.c -o $(ODIR)/Label.o
	$(CC) $(CFLAGS) $(INC) -c LabelImage.c -o $(ODIR)/LabelImage.o
	$(CC) $(CFLAGS) $(INC) -c Rectangle.c -o $(ODIR)/Rectangle.o
	$(CC) $(CFLAGS) $(INC) -c TextBlock.c -o $(ODIR)/TextBlock.o
	$(CC) $(CFLAGS) $(INC) -c Widget.c -o $(ODIR)/Widget.o
