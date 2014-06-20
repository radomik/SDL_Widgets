/*		[Area with one widget which can be scrolled]
 *      Rectangle.c - this file is part of SDL_Widgets
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

#ifndef _ScrollView_h_
	#define _ScrollView_h_
	#include "../srcCommon/StdDefinitions.h"
	#include "../srcCommon/Types.h"
	#include "Widget.h"
	
	extern const Type *ScrollView_t;
	inline const Type *ScrollView_gt(); // getter for ScrollView_t
	
	struct ScrollView {
		Widget		widget;
		Widget		*child;		// pointer to existing widget to be scrolled
		SDL_Rect	child_rect;
		uint		border_color;
 		uint		bg_color;
		usint		border_width;
		usint		child_max_w;
		usint		child_max_h;
		usint		scroll_delta;
	};
	
	// Number of lines to be scrolled by mouse wheel (up/down)
	// or mouse wheel+shift (left/right) [set in constructor]
	#define 	DEF_SCROLL_DELTA	10
	
	// Default border width (set on construction)
	#define		DEF_BORDER_WIDTH	1
	
	// default constructor
	// w, h - is size of scrollable area doesn't including border
	ScrollView *ScrollView_new(usint w, usint h);
	
	// copy constructor (all fields of ScrollView excluding Widget are copied)
	ScrollView *ScrollView_copy(ScrollView *src);
	
	// constructors and destructor used by inheriting classes
	inline void ScrollView_new2(ScrollView *this, usint w, usint h);
	inline void ScrollView_copy2(ScrollView *this, ScrollView *src);
	inline void ScrollView_destroy(ScrollView *this);
	
	// Print most important info about ScrollView and its child widget
	// useful for debugging ScrollView
	void ScrollView_printProperties(ScrollView *this);

	// Scroll child widget dir={UP, LEFT, DOWN, RIGHT}, 
	// delta [px] - number of lines/cols to scroll
	void ScrollView_scroll(ScrollView *this, direction dir, usint delta);

	// add child to ScrollView, child can be NULL
	void ScrollView_addChild(ScrollView *this, Widget *child, usint start_x, usint start_y);

	// set size of scrollable area (doesn't including border)
	void ScrollView_setSize(ScrollView *this, usint w, usint h);

	// set border color and width
	void ScrollView_setBorder(ScrollView *this, uint border_color, usint border_width);

	// set background color
	inline void ScrollView_setBgColor(ScrollView *this, uint bg_color);

	// print all of fields of ScrollView object
	inline void ScrollView_print(ScrollView *this);
#endif
