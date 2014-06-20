#
#      Makefile (srcCommon) - this file is part of SDL_Widgets
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

.PHONY: obj

_common:
	gcc -c Object.c                 -o ../obj/Object.o
	gcc -c ObjectMemory.c           -o ../obj/ObjectMemory.o
	gcc -c Static.c                 -o ../obj/Static.o
	gcc -c Screen.c                 -o ../obj/Screen.o
	gcc -c List2D.c                 -o ../obj/List2D.o
	gcc -c List1D.c                 -o ../obj/List1D.o
	gcc -c Memory.c                 -o ../obj/Memory.o
	gcc -c String.c                 -o ../obj/String.o
	gcc -c MeventCallback.c         -o ../obj/MeventCallback.o
	gcc -c FontCache.c              -o ../obj/FontCache.o
	gcc -c Font.c                   -o ../obj/Font.o
	gcc -c File.c                   -o ../obj/File.o
	gcc -c perr.c                   -o ../obj/perr.o
	
_clean:
	if [ -w ../obj/Object.o ] ; then                rm ../obj/Object.o; fi
	if [ -w ../obj/Static.o ] ; then                rm ../obj/Static.o; fi
	if [ -w ../obj/Screen.o ] ; then                rm ../obj/Screen.o; fi
	if [ -w ../obj/List2D.o ] ; then                rm ../obj/List2D.o; fi
	if [ -w ../obj/List1D.o ] ; then                rm ../obj/List1D.o; fi
	if [ -w ../obj/Memory.o ] ; then                rm ../obj/Memory.o; fi
	if [ -w ../obj/String.o ] ; then                rm ../obj/String.o; fi
	if [ -w ../obj/MeventCallback.o ] ; then        rm ../obj/MeventCallback.o; fi
	if [ -w ../obj/FontCache.o ] ; then             rm ../obj/FontCache.o; fi
	if [ -w ../obj/Font.o ] ; then                  rm ../obj/Font.o; fi
	if [ -w ../obj/File.o ] ; then                  rm ../obj/File.o; fi
	if [ -w ../obj/perr.o ] ; then                  rm ../obj/perr.o; fi

all:
	make _clean
	make _common
