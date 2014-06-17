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
	typedef u8 butstate;
	
	extern const coClass *Button_class;
	#define BUTTON(VTHIS) ((Button*)VTHIS)
	
	struct Button {
		Widget 	_super;
		Label 	label[4];
		b8		enabled;
	};
	
	Button* Button_new(Button *this, const char	*text);
						
	void Button_vdestroy(void *vthis);
	void Button_vrefresh(void *vthis);
	
	void Button_setEnabled(Button *this, b8 sel);
	void Button_setText(Button *this, const char *text);
	void Button_setBorder(Button *this, u16 bord_width, u32 rgb);
	void Button_setBgColor(Button *this, u32 rgb);
	void Button_setFixedWidth(Button *this, b8 sel);
	void Button_applyDefaultStyle(	Button *this,  u16 posx, u16 posy, 
								TTF_Font *font2, u16 padx, u16 pady,
								b8 fixed_width);
	void Button_applyDefaultStyle2(	Button *this,  u16 posx, u16 posy, 
									TTF_Font *font2, u16 padx, u16 pady,
									b8 fixed_width);
	const char *Button_toString(const Button *this);
	
#endif
