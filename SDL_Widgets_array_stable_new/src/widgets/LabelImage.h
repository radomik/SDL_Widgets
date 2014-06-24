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
	
	extern const coClass *LabelImage_class;
	#define LABEL_IMAGE(VTHIS) ((LabelImage*)VTHIS)
	
	struct LabelImage {
		Widget 		_super;				// Label inherits from Widget
		Image 		image;				// composed Image
		u32			border;
		u32			background;
		u16 		border_width;
		u16 		padx;
		u16 		pady;
		b8 			fixed_width;	// fixed_width can be set ONLY after first call to LabelImage_refresh
	};
	
	LabelImage* LabelImage_new(LabelImage *this, const char	*img_path);

	LabelImage* LabelImage_copy(LabelImage *this, const LabelImage *src, b8 copy_pos);
	
	void LabelImage_vrefresh(void *vthis);

	void LabelImage_vdestroy(void *vthis);


	void LabelImage_setBorder(LabelImage *this, u16 bord_width, u32 rgb);

	void LabelImage_setPadding(LabelImage *this, u16 padx, u16 pady);

	inline void LabelImage_setBgColor(LabelImage *this, u32 rgb);

	void LabelImage_setImageFromFile(LabelImage *this, const char* img_path);

	void LabelImage_setImage(LabelImage *this, const Image *image);

	inline void LabelImage_scale(LabelImage *this, double xscale, double yscale, int smooth);

	const char *LabelImage_vtoString(const void *vthis);
	
#endif
