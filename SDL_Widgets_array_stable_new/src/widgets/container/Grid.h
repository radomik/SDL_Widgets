/*		[grid container]
 *      Grid.h - this file is part of SDL_Widgets
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

#ifndef _Grid_h_
	#define _Grid_h_
	#include "StdDefinitions.h"
	#include "Container.h"
	
	extern const coClass *Grid_class;
	#define GRID(VTHIS) ((Grid*)VTHIS)
	
	struct Grid {
		Container			_super;
		ContainerItem		**items;
		u16					*maxw;
		u32					bord_color;		// RGBA (default black)
		u16					c_row;
		u16					c_col;
		b8					showBorder : 1;
	};
	
	void Grid_vdestroy(void *vthis);
	void Grid_vmevent(void *vthis, Screen *screen);
	void Grid_vdraw(void *vthis, Screen *screen, b8 flip);
	void Grid_vrefresh(void *vthis);
	void Grid_vdrag(void *vthis, s16 dx, s16 dy);
	void Grid_vsetVisible(void *vthis, b8 vis);

	Grid* Grid_new(Grid *this, u16 c_row, u16 c_col);

	void Grid_add(Grid *this, Widget *widget, u16 row, u16 col,
							alignment halign, alignment valign,
							u16 marg_top, u16 marg_left, 
							u16 marg_bot, u16 marg_right);
							
	const char *Grid_vtoString(const void *vthis);
	
#endif
