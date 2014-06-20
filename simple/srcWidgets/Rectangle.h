/*		[Rectangle filled with one color]
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
	#include "../srcCommon/StdDefinitions.h"
	#include "../srcCommon/Types.h"
	#include "Widget.h"
	
	extern const Type *Rectangle_t;
	inline const Type *Rectangle_gt(); // getter for Rectangle_t
	
	struct Rectangle {
		Widget		widget;
		Sint16		radius;		// -1 - one pixel width border, transparent inner, 90 degrees corners
								// 0  - fill with one color, 90degress corners,
								// >0 - fill with one color, with rounded corners of .radius
								
		Uint32		bg_color;	// 0xAARRGGBB
	};
	
	// default constructor
	Rectangle *Rectangle_new(uint bg_color, Sint16 radius);
	
	// copy constructor
	Rectangle* Rectangle_copy(Rectangle *src);
	
	// constructors and destructor used by inheriting classes
	inline void Rectangle_new2(Rectangle *this, uint bg_color, Sint16 radius);
	inline void Rectangle_copy2(Rectangle *this, Rectangle *src);
	inline void Rectangle_destroy(Rectangle *this);
	
	// set background color to 0xAARRGGBB
	inline void Rectangle_setColor(Rectangle *this, uint bg_color);
	
	// set radius
	inline void Rectangle_setRadius(Rectangle *this, Sint16 radius);
	
	// print all of fields of Rectangle object
	inline void Rectangle_print(Rectangle *this);
#endif
