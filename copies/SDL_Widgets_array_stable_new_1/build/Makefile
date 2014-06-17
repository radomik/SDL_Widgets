#
#      Makefile (main) - this file is part of SDL_Widgets
#         This is an entry point Makefile defining variables used by all 
#         other Makefiles
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

MAKEFILE_NAME  := "build"
export LDFLAGS = `sdl-config --libs` -lSDL_image -lSDL_gfx -lSDL_ttf -lportaudio -lm
export CFLAGS  = `sdl-config --cflags` -Wall -msse3 -march=native -mtune=native -pipe -O1
export AFLAGS  = $(CFLAGS) -S -masm=intel -fverbose-asm
export CC      = /usr/lib/colorgcc/bin/x86_64-pc-linux-gnu-gcc
export BINNAME = $(realpath .)/SDL_Widgets
export ODIR    = $(realpath ../obj)
export ASMDIR  = $(realpath ../asm)
export SRCDIR  = $(realpath ../src)
export INC     = -I$(SRCDIR)/audio -I$(SRCDIR)/common -I$(SRCDIR)/graphics \
-I$(SRCDIR)/graphics/gtools -I$(SRCDIR)/widgets -I$(SRCDIR)/widgets/container

all:
	@echo "$(MAKEFILE_NAME): LDFLAGS:     $(LDFLAGS)"
	@echo "$(MAKEFILE_NAME): CFLAGS:      $(CFLAGS)"
	@echo "$(MAKEFILE_NAME): AFLAGS:      $(AFLAGS)"
	@echo "$(MAKEFILE_NAME): CC:          $(CC)"
	@echo "$(MAKEFILE_NAME): BINNAME:     $(BINNAME)"
	@echo "$(MAKEFILE_NAME): ODIR:        $(ODIR)"
	@echo "$(MAKEFILE_NAME): SRCDIR:      $(SRCDIR)"
	@echo "$(MAKEFILE_NAME): INC:         $(INC)"
	@echo "------------------------------------------------------------"
	cd $(SRCDIR); make all
	
asm:
	cd $(SRCDIR); make asm

clean:
	
	
	

