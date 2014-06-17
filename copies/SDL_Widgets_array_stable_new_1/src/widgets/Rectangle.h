/*		[rectangle filled with one color]
 *      Rectangle.h - this file is part of SDL_Widgets
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

#ifndef _Rectangle_h_
	#define _Rectangle_h_
	#include "StdDefinitions.h"
	#include "Widget.h"
	
	struct Rectangle {
		Widget			widget;
		uint 			color;
	};
	
	void Rectangle_refresh(Rectangle *rectangle);
	// In order:
	// 1. Rectangle_new(...);
	// 2. pos.x = .., pos.y = .., pos.w = .., pos.h = ..
	// 3. Rectangle_refresh
	Rectangle* Rectangle_new(Rectangle *this, uint rgb_color);
	
	// Copying constructor 
	// (assuming that rectdest is only allocated or just after destroy, not constructed yet)
	Rectangle* Rectangle_copy(Rectangle *rectdest, Rectangle *rectsrc, bool copy_pos);
	
	inline void Rectangle_setColor(Rectangle *rectangle, uint rgb_color);
	
	// Sets only position of rectangle widget
	inline void Rectangle_setPosition(Rectangle *rectangle, usint minx, usint miny);
	
	// Get/set center
	inline void Rectangle_getCenter(Rectangle *rectangle, usint *cx, usint *cy);
	inline void Rectangle_setCenter(Rectangle *rectangle, usint cx, usint cy);
	
	// Sets position and width and height
	inline void Rectangle_setRect(Rectangle *rectangle, usint minx, usint miny, usint width, usint height);
	
	// Contains x,y ?
	inline bool Rectangle_contains(Rectangle *rectangle, usint x, usint y);
	
	// Sets only width and height of rectangle widget
	inline void Rectangle_setSize(Rectangle *rectangle, usint width, usint height);
	
	inline void Rectangle_scale(Rectangle *rectangle, double xscale, double yscale, int smooth);

	char *Rectangle_toString(Rectangle *rectangle);
#endif
