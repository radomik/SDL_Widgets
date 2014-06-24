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
	#include "StdDefinitions.h"
	#include "Widget.h"
	
	extern const coClass *Image_class;
	#define IMAGE(VTHIS) ((Image*)VTHIS)
	
	struct Image {
		Widget		_super;		// Image inherits from Widget
		char		*path;
	};
	
	Image* Image_new(Image *this, const char *img_path, u16 minx, u16 miny); // png, tiff, giff, jpeg
	
	Image* Image_copy(Image *this, const Image *src, b8 copy_pos);
	
	void Image_vdestroy(void *vthis);

	const char *Image_vtoString(const void *vthis);
	
	// returns true if ext file extension (without '.') is supported by Image class
	inline b8 Image_isExtSupported(const char *ext);
	
#endif
