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
	
	extern const coClass *HistStretchGraph_class;
	#define HIST_STRETCH_GRAPH(VTHIS) ((HistStretchGraph*)VTHIS)
	
	struct HistStretchGraph {
		Widget				_super;
		TextBlock			labelX;
		TextBlock			labelY;
		void				(*release_handler)(Widget*, Screen*);
		SDL_Surface			*bg_surf;
		Rectangle			*rect;
		u16				*x;
		u16				*y;
		u16				size;
		
		u16 				zero_x;
		u16				zero_y;
		
		u16				ax;		// w_255+2m
		u16				ay;		// h_255+2m
	};
	
	HistStretchGraph* HistStretchGraph_new(HistStretchGraph *this, TTF_Font *font, u16 size);
	void HistStretchGraph_vdestroy(void *vthis);
	
	u8 HistStretchGraph_setCountPoints(HistStretchGraph *hsg, u16 size);
	const char *HistStretchGraph_toString(const HistStretchGraph *this);
	
	void HistStretchGraph_vrefresh(void *vthis);
#endif
