/*		[label with image (rest the same as for Label)]
 *      LabelImage.h - this file is part of SDL_Widgets
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

#ifndef _LabelImage_h_
	#define _LabelImage_h_
	#include "StdDefinitions.h"
	#include "Widget.h"
	#include "Image.h"
	
	struct LabelImage {
		Widget 		widget;				// Label inherits from Widget
		Image 		image;				// composed Image
		uint		border;
		uint		background;
		usint 		border_width;
		usint 		padx;
		usint 		pady;
		bool 		fixed_width;	// fixed_width can be set ONLY after first call to LabelImage_refresh
	};
	
	LabelImage* LabelImage_new(	LabelImage 	*this,
								const char 	*img_path);
	LabelImage* LabelImage_copy(LabelImage *labelimage_dest, LabelImage *labelimage_src, bool copy_pos);
	void LabelImage_refresh(LabelImage *labelimageimage);
	char *LabelImage_toString(LabelImage *labelimage);
	inline void LabelImage_scale(LabelImage *labelimage, double xscale, double yscale, int smooth);
	
	// Need to call LabeImage_refresh after all of that functions
	inline void LabelImage_setBorder(LabelImage *labelimage, usint bord_width, uint rgb);
	inline void LabelImage_setPadding(LabelImage *labelimage, usint padx, usint pady);
	inline void LabelImage_setBgColor(LabelImage *labelimage, uint rgb);
	void LabelImage_setImageFromFile(LabelImage *labelimage, char* img_path);
	void LabelImage_setImage(LabelImage *labelimage, Image *image);
	
#endif
