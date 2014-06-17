#
#      Makefile (audio) - this file is part of SDL_Widgets
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

MAKEFILE_NAME  	:= "audio"
CFILES     	    := $(wildcard *.c)
HFILES     	    := $(wildcard *.h)
OFILES     	    := $(patsubst %.c, $(ODIR)/%.o, $(CFILES))
ASMFILES        := $(patsubst %.c, %.asm, $(CFILES))

asm:
	$(CC) $(AFLAGS) $(INC) -c Audio.c -o $(ASMDIR)/Audio.asm
	$(CC) $(AFLAGS) $(INC) -c AudioCallbacks.c -o $(ASMDIR)/AudioCallbacks.asm
	$(CC) $(AFLAGS) $(INC) -c AudioFromGraph.c -o $(ASMDIR)/AudioFromGraph.asm
	$(CC) $(AFLAGS) $(INC) -c AudioMain.c -o $(ASMDIR)/AudioMain.asm
	$(CC) $(AFLAGS) $(INC) -c AudioSinus.c -o $(ASMDIR)/AudioSinus.asm
	$(CC) $(AFLAGS) $(INC) -c AudioTest.c -o $(ASMDIR)/AudioTest.asm
	$(CC) $(AFLAGS) $(INC) -c CMPlayer.c -o $(ASMDIR)/CMPlayer.asm
	$(CC) $(AFLAGS) $(INC) -c WaveDrawBox.c -o $(ASMDIR)/WaveDrawBox.asm

all:
	$(CC) $(CFLAGS) $(INC) -c Audio.c -o $(ODIR)/Audio.o
	$(CC) $(CFLAGS) $(INC) -c AudioCallbacks.c -o $(ODIR)/AudioCallbacks.o
	$(CC) $(CFLAGS) $(INC) -c AudioFromGraph.c -o $(ODIR)/AudioFromGraph.o
	$(CC) $(CFLAGS) $(INC) -c AudioMain.c -o $(ODIR)/AudioMain.o
	$(CC) $(CFLAGS) $(INC) -c AudioSinus.c -o $(ODIR)/AudioSinus.o
	$(CC) $(CFLAGS) $(INC) -c AudioTest.c -o $(ODIR)/AudioTest.o
	$(CC) $(CFLAGS) $(INC) -c CMPlayer.c -o $(ODIR)/CMPlayer.o
	$(CC) $(CFLAGS) $(INC) -c WaveDrawBox.c -o $(ODIR)/WaveDrawBox.o
