/*		[Border with one child]
 *      Border.h - this file is part of SDL_Widgets
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

#ifndef _Border_h_
	#define _Border_h_
	#include "../Widget.h"
	#include "../../srcCommon/StdDefinitions.h"
	#include "../../srcCommon/Types.h"
	
	extern const Type *Border_t;
	inline const Type *Border_gt(); // getter for Border_t
	
	struct Border {
		Widget 		widget;
		Widget		*child;
		Spacing		padding;
		uint		border_color;
		uint		bgcolor;
		usint		border_width;
	};
	
	Border* Border_new();
	Border* Border_copy(Border *src);
	
	inline void Border_new2();
	inline void Border_copy2();
	inline void Border_destroy();
	
	// add child
	void Border_addChild(Border *this, Widget *child);
	
	// change border padding
	inline void Border_setPadding(Border *this, usint pad_top, usint pad_left, usint pad_bottom, usint pad_right);
	
	// change border background color
	inline void Border_setBgColor(Border *this, uint bg_color);
	
	// change border attributes
	inline void Border_setBorder(Border *this, uint border_color, usint border_width);
	
	inline void Border_print(Border *this);
#endif
