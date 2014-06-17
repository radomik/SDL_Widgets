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
	
	struct ButtonImage {
		Widget 		widget;
		LabelImage 	labelimage[4];
		bool		enabled;
	};
	
	ButtonImage* ButtonImage_new(	ButtonImage 	*this,
									const char		*img_path);
	ButtonImage* ButtonImage_copy(ButtonImage *btimage_dest, ButtonImage *btimage_src, bool copy_pos);
	inline void ButtonImage_scale(ButtonImage *buttonimage, double xscale, double yscale, int smooth);
	void ButtonImage_setEnabled(ButtonImage *buttonimage, bool sel);
	inline void ButtonImage_setImage(ButtonImage *buttonimage, Image *image);
	inline void ButtonImage_setBorder(ButtonImage *buttonimage, usint bord_width, uint rgb);
	inline void ButtonImage_setFixedWidth(ButtonImage *buttonimage, bool sel);
	void ButtonImage_applyDefaultStyle(ButtonImage *buttonimage, 	usint posx, usint posy, 
																	usint padx, usint pady,
																	bool  fixed_width);
	void ButtonImage_applyDefaultStyle3(ButtonImage *buttonimage,	usint posx, usint posy, 
																	usint padx, usint pady,
																	bool fixed_width);
	void ButtonImage_refresh(ButtonImage *buttonimage);
	char *ButtonImage_toString(ButtonImage *buttonimage);
	void ButtonImage_mouseReleased(ButtonImage *buttonimage, Screen *screen);
	void ButtonImage_mouseDragging(ButtonImage *buttonimage, Screen *screen);
	void ButtonImage_mousePressed(ButtonImage *buttonimage, Screen *screen);
	void ButtonImage_mouseEnter(ButtonImage *buttonimage, Screen *screen);
	void ButtonImage_mouseExit(ButtonImage *buttonimage, Screen *screen);
	void ButtonImage_mouseMove(ButtonImage *buttonimage, Screen *screen);
	void ButtonImage_mouseClicked(ButtonImage *buttonimage, Screen *screen);
	
#endif

