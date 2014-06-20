#
#      Makefile (srcWidgets) - this file is part of SDL_Widgets
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

_widgets:
	cd srcContainer; make all
	gcc -c Image.c          -o ../obj/Image.o
	gcc -c Widget.c         -o ../obj/Widget.o
	gcc -c Rectangle.c      -o ../obj/Rectangle.o
	gcc -c ScrollView.c     -o ../obj/ScrollView.o
	gcc -c TextBlock.c      -o ../obj/TextBlock.o

_clean:
	if [ -w ../obj/Image.o ] ; then         rm ../obj/Image.o; fi
	if [ -w ../obj/Widget.o ] ; then        rm ../obj/Widget.o; fi
	if [ -w ../obj/Rectangle.o ] ; then     rm ../obj/Rectangle.o; fi
	if [ -w ../obj/ScrollView.o ] ; then    rm ../obj/ScrollView.o; fi
	if [ -w ../obj/TextBlock.o ] ; then     rm ../obj/TextBlock.o; fi

all:
	make _clean
	make _widgets

