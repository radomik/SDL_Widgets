/*		[button with text]
 *      Button.h - this file is part of SDL_Widgets 
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

#ifndef _Button_h_
	#define _Button_h_
	#include "StdDefinitions.h"
	#include "Widget.h"
	#include "Label.h"
	
	
	#define BUT_NORMAL			(0)
	#define BUT_MOUSE_OVER 		(1)
	#define BUT_PRESSED			(2)
	#define BUT_DISABLED		(3)
	typedef uchar butstate;
	
	struct Button {
		Widget 	widget;
		Label 	label[4];
		bool	enabled;
	};
	
	Button* Button_new(	Button 		*this,
						const char	*text);
	void Button_setEnabled(Button *button, bool sel);
	inline void Button_setText(Button *button, const char *text);
	inline void Button_setBorder(Button *button, usint bord_width, uint rgb);
	inline void Button_setBgColor(Button *button, uint rgb);
	inline void Button_setFixedWidth(Button *button, bool sel);
	void Button_applyDefaultStyle(	Button *button,  usint posx, usint posy, 
								TTF_Font *font2, usint padx, usint pady,
								bool fixed_width);
	void Button_applyDefaultStyle2(	Button *button,  usint posx, usint posy, 
									TTF_Font *font2, usint padx, usint pady,
									bool fixed_width);
	char *Button_toString(Button *button);
	void Button_mouseReleased(Button *button, Screen *screen);
	void Button_mouseDragging(Button *button, Screen *screen);
	void Button_mousePressed(Button *button, Screen *screen);
	void Button_mouseEnter(Button *button, Screen *screen);
	void Button_mouseExit(Button *button, Screen *screen);
	void Button_mouseMove(Button *button, Screen *screen);
	void Button_mouseClicked(Button *button, Screen *screen);
	
#endif
