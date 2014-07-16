/*		[button with image]
 *      ButtonImage.h - this file is part of SDL_Widgets
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

#ifndef _ButtonImage_h_
	#define _ButtonImage_h_
	#include "StdDefinitions.h"
	#include "Widget.h"
	#include "LabelImage.h"
	
	extern const coClass *ButtonImage_class;
	#define BUTTON_IMAGE(VTHIS) ((ButtonImage*)VTHIS)
	
	struct ButtonImage {
		Widget 		_super;
		LabelImage 	labelimage[4];
		b8			enabled : 1;
	};
	
	ButtonImage* ButtonImage_new(ButtonImage *this, const char *img_path);

	ButtonImage* ButtonImage_copy(ButtonImage *this, ButtonImage *src, b8 copy_pos);

	void ButtonImage_vrefresh(void *vthis);

	void ButtonImage_vdestroy(void *vthis);



	void ButtonImage_setEnabled(ButtonImage *this, b8 sel);

	void ButtonImage_setBorder(ButtonImage *this, u16 bord_width, u32 rgb);

	void ButtonImage_setFixedWidth(ButtonImage *this, b8 sel);

	void ButtonImage_setImage(ButtonImage *this, const Image *image);

	void ButtonImage_scale(ButtonImage *this, double xscale, double yscale, int smooth);

	void ButtonImage_applyDefaultStyle(ButtonImage *this, 	u16 posx, u16 posy, 
															u16 padx, u16 pady,
															b8  fixed_width);

	void ButtonImage_applyDefaultStyle3(ButtonImage *this, 	u16 posx, u16 posy, 
															u16 padx, u16 pady,
															b8 fixed_width);

	const char *ButtonImage_vtoString(const void *vthis);

	
#endif

