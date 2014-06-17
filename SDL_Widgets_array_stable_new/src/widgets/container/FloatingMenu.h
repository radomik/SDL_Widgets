/*		[ class inheriting from StackList, allows to create simple floating menus and containers ]
 *      FloatingMenu.h - this file is part of SDL_Widgets
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

#ifndef _FloatingMenu_h_
	#define _FloatingMenu_h_
	#include "StackList.h"
	#include "StdDefinitions.h"
	
	extern const coClass *FloatingMenu_class;
	#define FLOATING_MENU(VTHIS) ((FloatingMenu*)VTHIS)
	
	struct FloatingMenu {
		StackList	_super;
		//~ TTF_Font	*font_header;
		//~ TTF_Font	*font_button;
		//~ TTF_Font	*font_label;
	};
	
	FloatingMenu* FloatingMenu_new(FloatingMenu *this, layouttype layout, u32 size);
	void FloatingMenu_vdestroy(void *vthis);
	
	//~ inline void FloatingMenu_setHeaderFont(FloatingMenu *this, TTF_Font *font);
	//~ inline void FloatingMenu_setButtonFont(FloatingMenu *this, TTF_Font *font);
	//~ inline void FloatingMenu_setLabelFont(FloatingMenu  *this, TTF_Font *font);
	
	Button* FloatingMenu_addBaseHeader(FloatingMenu *this, TTF_Font *font, const char *text);
	
	Button* FloatingMenu_addMenuButtonLast(	FloatingMenu	*this, 
										TTF_Font			*font,
										const char			*text, 
										void				(*click_handler)(Widget*, Screen*),
										u32					id);
	
	Label* FloatingMenu_addLabelLast(FloatingMenu *this, TTF_Font *font, const char *text);
	
	Widget* FloatingMenu_addWidgetLast(	FloatingMenu *this, Widget *widget, 
										alignment halign,   alignment valign, 
										u16 marg_top,     u16 marg_left, 
										u16 marg_bot,     u16 marg_right);
#endif

