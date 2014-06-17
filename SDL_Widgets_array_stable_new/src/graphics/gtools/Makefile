#
#      Makefile (raster graphic tools) - this file is part of SDL_Widgets
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

MAKEFILE_NAME  	:= "gtools"
CFILES     	    := $(wildcard *.c)
OFILES     	    := $(patsubst %.c, %.o, $(CFILES))
ASMFILES        := $(patsubst %.c, %.asm, $(CFILES))

asm:
	$(CC) $(AFLAGS) $(INC) -c GToolsFilters.c -o $(ASMDIR)/GToolsFilters.asm
	$(CC) $(AFLAGS) $(INC) -c GToolsMorph.c -o $(ASMDIR)/GToolsMorph.asm
	$(CC) $(AFLAGS) $(INC) -c GToolsPoint.c -o $(ASMDIR)/GToolsPoint.asm
	$(CC) $(AFLAGS) $(INC) -c GToolsSplotFilter.c -o $(ASMDIR)/GToolsSplotFilter.asm

all:
	$(CC) $(CFLAGS) $(INC) -c GToolsFilters.c -o $(ODIR)/GToolsFilters.o
	$(CC) $(CFLAGS) $(INC) -c GToolsMorph.c -o $(ODIR)/GToolsMorph.o
	$(CC) $(CFLAGS) $(INC) -c GToolsPoint.c -o $(ODIR)/GToolsPoint.o
	$(CC) $(CFLAGS) $(INC) -c GToolsSplotFilter.c -o $(ODIR)/GToolsSplotFilter.o
