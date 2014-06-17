#
#      Makefile (common) - this file is part of SDL_Widgets
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

MAKEFILE_NAME  	:= "common"
CFILES     	    := $(wildcard *.c)
OFILES     	    := $(patsubst %.c, %.o, $(CFILES))
ASMFILES        := $(patsubst %.c, %.asm, $(CFILES))

asm:
	$(CC) $(AFLAGS) $(INC) -c Callback.c -o $(ASMDIR)/Callback.asm
	$(CC) $(AFLAGS) $(INC) -c FileBrowsePanel.c -o $(ASMDIR)/FileBrowsePanel.asm
	$(CC) $(AFLAGS) $(INC) -c List2D.c -o $(ASMDIR)/List2D.asm
	$(CC) $(AFLAGS) $(INC) -c Memory.c -o $(ASMDIR)/Memory.asm
	$(CC) $(AFLAGS) $(INC) -c Object.c -o $(ASMDIR)/Object.asm
	$(CC) $(AFLAGS) $(INC) -c Screen.c -o $(ASMDIR)/Screen.asm
	$(CC) $(AFLAGS) $(INC) -c Static.c -o $(ASMDIR)/Static.asm
	$(CC) $(AFLAGS) $(INC) -c Undo.c -o $(ASMDIR)/Undo.asm
	$(CC) $(AFLAGS) $(INC) -c file_browse_common.c -o $(ASMDIR)/file_browse_common.asm
	$(CC) $(AFLAGS) $(INC) -c perr.c -o $(ASMDIR)/perr.asm

all:
	$(CC) $(CFLAGS) $(INC) -c Callback.c -o $(ODIR)/Callback.o
	$(CC) $(CFLAGS) $(INC) -c FileBrowsePanel.c -o $(ODIR)/FileBrowsePanel.o
	$(CC) $(CFLAGS) $(INC) -c List2D.c -o $(ODIR)/List2D.o
	$(CC) $(CFLAGS) $(INC) -c Memory.c -o $(ODIR)/Memory.o
	$(CC) $(CFLAGS) $(INC) -c Object.c -o $(ODIR)/Object.o
	$(CC) $(CFLAGS) $(INC) -c Screen.c -o $(ODIR)/Screen.o
	$(CC) $(CFLAGS) $(INC) -c Static.c -o $(ODIR)/Static.o
	$(CC) $(CFLAGS) $(INC) -c Undo.c -o $(ODIR)/Undo.o
	$(CC) $(CFLAGS) $(INC) -c file_browse_common.c -o $(ODIR)/file_browse_common.o
	$(CC) $(CFLAGS) $(INC) -c perr.c -o $(ODIR)/perr.o
