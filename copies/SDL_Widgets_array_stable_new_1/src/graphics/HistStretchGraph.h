/*
 *      HistStretchGraph.h - this file is part of SDL_Widgets
 *
 *      Copyright (C) 2013 Dariusz Mikołajczuk <radomik(at)gmail(dot)com>
 *
 *      This program is free software; you can redistribute it and/or modify
 *      it under the terms of the GNU General Public License as published by
 *      the Free Software Foundation; either version 2 of the License, or
 *      (at your option) any later version.
 *
 *      This program is distributed in the hope that it will be useful,
 *      but WITHOUT ANY WARRANTY; without even the implied warranty of
 *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *      GNU General Public License for more details.
 *
 *      You should have received a copy of the GNU General Public License along
 *      with this program; if not, write to the Free Software Foundation, Inc.,
 *      51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#ifndef _HistStretchGraph_h_
	#define _HistStretchGraph_h_
	#include "StdDefinitions.h"
	#include "Widget.h"
	#include "TextBlock.h"
	
	struct HistStretchGraph {
		struct Widget		widget;
		struct TextBlock	labelX;
		struct TextBlock	labelY;
		void				(*release_handler)(struct Widget*, struct Screen*);
		SDL_Surface			*bg_surf;
		struct Rectangle	*rect;
		usint				*x;
		usint				*y;
		usint				size;
		
		usint 				zero_x;
		usint				zero_y;
		
		usint				ax;		// w_255+2m
		usint				ay;		// h_255+2m
	};
	
	char *HistStretchGraph_toString(HistStretchGraph *hsg);
	void HistStretchGraph_refresh(HistStretchGraph *hsg);
	HistStretchGraph* HistStretchGraph_new(HistStretchGraph *this, TTF_Font *font, usint size);
	void HistStretchGraph_mousePressed(HistStretchGraph *hsg, Screen *screen);
	
	void HistStretchGraph_setCountPoints(HistStretchGraph *hsg, usint size);
	
	// call this after HistStretchGraph_setCountPoints
	uchar HistStretchGraph_refresh2(HistStretchGraph *hsg);
#endif
