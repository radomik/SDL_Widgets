#
#      Makefile (graphics) - this file is part of SDL_Widgets
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

MAKEFILE_NAME  	:= "graphics"
CFILES     	    := $(wildcard *.c)
OFILES     	    := $(patsubst %.c, %.o, $(CFILES))
ASMFILES        := $(patsubst %.c, %.asm, $(CFILES))

asm:
	cd gtools; make asm
	$(CC) $(AFLAGS) $(INC) -c GraphicsCallbacks.c -o $(ASMDIR)/GraphicsCallbacks.asm
	$(CC) $(AFLAGS) $(INC) -c GraphicsMain.c -o $(ASMDIR)/GraphicsMain.asm
	$(CC) $(AFLAGS) $(INC) -c HistStretchGraph.c -o $(ASMDIR)/HistStretchGraph.asm
	$(CC) $(AFLAGS) $(INC) -c Histogram.c -o $(ASMDIR)/Histogram.asm
	$(CC) $(AFLAGS) $(INC) -c PixelDrawBox.c -o $(ASMDIR)/PixelDrawBox.asm

all:
	cd gtools; make all
	$(CC) $(CFLAGS) $(INC) -c GraphicsCallbacks.c -o $(ODIR)/GraphicsCallbacks.o
	$(CC) $(CFLAGS) $(INC) -c GraphicsMain.c -o $(ODIR)/GraphicsMain.o
	$(CC) $(CFLAGS) $(INC) -c HistStretchGraph.c -o $(ODIR)/HistStretchGraph.o
	$(CC) $(CFLAGS) $(INC) -c Histogram.c -o $(ODIR)/Histogram.o
	$(CC) $(CFLAGS) $(INC) -c PixelDrawBox.c -o $(ODIR)/PixelDrawBox.o
