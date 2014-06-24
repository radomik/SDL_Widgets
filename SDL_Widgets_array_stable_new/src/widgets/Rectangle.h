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
	
	extern const coClass *Rectangle_class;
	#define RECTANGLE(VTHIS) ((Rectangle*)VTHIS)
	
	struct Rectangle {
		Widget			_super;
		u32 			color;
	};
	
	// In order:
	// 1. Rectangle_new(...);
	// 2. pos.x = .., pos.y = .., pos.w = .., pos.h = ..
	// 3. Rectangle_refresh
	Rectangle* Rectangle_new(Rectangle *this, u32 rgb_color);

	// Copying constructor
	Rectangle* Rectangle_copy(Rectangle *this, const Rectangle *src, b8 copy_pos);
	
	void Rectangle_vrefresh(void *vthis);

	void Rectangle_vdestroy(void *vthis);

	inline void Rectangle_setColor(Rectangle *this, u32 rgb_color);

	// sets only size of rectangle widget
	inline void Rectangle_setSize(Rectangle *this, u16 width, u16 height);

	// Sets only position of rectangle widget
	inline void Rectangle_setPosition(Rectangle *this, u16 minx, u16 miny);

	inline void Rectangle_getCenter(Rectangle *this, u16 *cx, u16 *cy);

	inline void Rectangle_setCenter(Rectangle *this, u16 cx, u16 cy);

	inline b8 Rectangle_contains(Rectangle *this, u16 x, u16 y);

	// Sets position and width and height
	inline void Rectangle_setRect(Rectangle *this, u16 minx, u16 miny, u16 width, u16 height);

	inline void Rectangle_scale(Rectangle *this, double xscale, double yscale, int smooth);

	const char *Rectangle_vtoString(const void *vthis);
#endif
