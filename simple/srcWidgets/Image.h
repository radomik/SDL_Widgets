/*		[image]
 *      Image.h - this file is part of SDL_Widgets
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

#ifndef _Image_h_
	#define 	_Image_h_
	#include "../srcCommon/StdDefinitions.h"
	#include "../srcCommon/Types.h"
	#include "Widget.h"
	
	extern const Type *Image_t;
	inline const Type *Image_gt(); // getter for Image_t
	
	struct Image {
		Widget 		widget;
		char		*path;
	};
	
	// default constructor
	Image* Image_new(char *img_path);
	
	// copy constructor
	Image* Image_copy(Image *src);
	
	// constructors used by inheriting classes
	inline void Image_new2(Image *this, char *img_path);
	void Image_copy2(Image *this, Image *src);
	
	// destructor (called by inheriting classes destructors)
	inline void Image_destroy(Image *this);
	
	// print all fields of object
	inline void Image_print(Image *this);
#endif
