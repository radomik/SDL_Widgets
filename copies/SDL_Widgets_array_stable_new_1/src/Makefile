#
#      Makefile (main) - this file is part of SDL_Widgets
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

.PHONY: main asm obj src

MAKEFILE_NAME   := "src"

asm:
	cd audio; make asm
	cd common; make asm
	cd graphics; make asm
	cd widgets; make asm
	
	$(CC) $(AFLAGS) $(INC) -c main.c -o $(ASMDIR)/main.asm


all:
	cd audio; make all
	cd common; make all
	cd graphics; make all
	cd widgets; make all
	
	$(CC) $(CFLAGS) $(INC) -c main.c -o $(ODIR)/main.o
	
	cd $(ODIR); make all

