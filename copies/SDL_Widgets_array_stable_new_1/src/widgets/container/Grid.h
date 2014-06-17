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
	
	/* PixelDrawBox inherits from Grid */
	
	enum gridtype {	GGRID_TYPE=0,
					GPIXELDRAWBOX_TYPE=1
					};
	
	
	struct Grid {
		Container				container;
		ContainerItem			**items;
		enum gridtype			type;
		usint					c_row;
		usint					c_col;
		uint					bord_color;		// RGBA (default black)
		bool					showBorder;
	};
	
	inline void Grid_dragItems(Grid *grid, signed short dx, signed short dy);
	Grid* Grid_new(Grid *this, usint c_row, usint c_col);
	
	// type constructor used by classes inheriting from Grid
	//! @NOTE: Grid is not abstract class such as: Widget, Container, StackList etc.
	//! @NOTE: vdestroy can be NULL therefore Grid_vdestroy is used
	void Grid_init_type(	Grid 			*grid, 
							gridtype 		grid_type,
							usint 			c_row, 
							usint 			c_col,
							void 			(*vdestroy) (void* vthis),
							const char		*type);
	
	// destructor called by inheriting classes
	void Grid_destroy(Grid *this);
	
	void Grid_add(Grid *grid, Widget *widget, usint row, usint col,
						alignment halign, alignment valign,
						usint marg_top, usint marg_left, 
						usint marg_bot, usint marg_right);
	
	void Grid_refresh(Grid *grid);
	
	void Grid_draw(Grid *grid, Screen *screen, bool flip);
	
	void Grid_mevent(Grid *grid, Screen *screen);
	
	// set grid visible or not
	inline void Grid_setVisible(Grid *grid, bool vis);
	
	char *Grid_toString(Grid *grid);
	
#endif
