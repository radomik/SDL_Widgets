/*		[rectangle filled with one color]
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

#include "StdDefinitions.h"
#include "Screen.h"
#include "Static.h"
#include "Memory.h"
#include "Widget.h"
#include "Rectangle.h"

static const void* vtable[] = {
	Widget_vdestroy,
	Widget_vmevent,
	Widget_vdraw,
	Rectangle_vrefresh,
	Widget_vdrag,
	Widget_vsetVisible
};

static coClass type = {
	.size	= sizeof(Rectangle),
	.name	= "Rectangle",
	.vtable	= vtable
};
const coClass *Rectangle_class = &type;

void Rectangle_vrefresh(void *vthis) {
	Widget		*widget    = WIDGET(vthis); //! @note Rectangle have to inherit from Widget
	b8		creat_surf = true;
	if (widget->surf) {	// surface already exists
		if ((widget->surf->w < widget->pos.w) || (widget->surf->h < widget->pos.h)) {	// dimension changed
			SDL_FreeSurface(widget->surf);
		}
		else creat_surf = false;
	}
	
	if (creat_surf) {
		widget->surf = Static_newSurface(widget->pos.w, widget->pos.h);
		if (! widget->surf) {
			fprintf(stderr, "Rectangle_refresh: Failed to create empty surface SDL_CreateRGBSurface() (%s)\n", SDL_GetError());
			Widget_setVisible(widget, false);
			return;
		}
	}
	// surface created, fill it with color
	if (SDL_FillRect(widget->surf, NULL, RECTANGLE(vthis)->color)) {
		fprintf(stderr, "Rectangle_refresh: Failed to fill background surface (FillRect) (%s)\n", SDL_GetError());
		Widget_setVisible(widget, false);
		return;
	}
	Widget_updateMaxXY(widget);
	Widget_setVisible(widget, true);
	widget->need_reload = true;
}

void Rectangle_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

// In order:
// 1. Rectangle_new(...);
// 2. pos.x = .., pos.y = .., pos.w = .., pos.h = ..
// 3. Rectangle_refresh
Rectangle* Rectangle_new(Rectangle *this, u32 rgb_color) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: rgb_color=0x%08X\n", __FUNCTION__, rgb_color);
		return NULL;
	}
	
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	this->color		  = rgb_color;
	return this;
}

// Copying constructor
Rectangle* Rectangle_copy(Rectangle *this, const Rectangle *src, b8 copy_pos) {
	if ((! this) || (! src)) {
		fprintf(stderr, "Rectangle_copy: Passed NULL: this(%p) or src(%p)\n", this, src);
		return NULL;
	}
	Widget_copy(WIDGET(this), WIDGET(src), copy_pos, true);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	this->color  = src->color;
	return this;
}

inline void Rectangle_setColor(Rectangle *this, u32 rgb_color) { 
	this->color = rgb_color; 
}

// sets only size of rectangle widget
inline void Rectangle_setSize(Rectangle *this, u16 width, u16 height) { 
	Widget_setSize(WIDGET(this), width, height); 
}

// Sets only position of rectangle widget
inline void Rectangle_setPosition(Rectangle *this, u16 minx, u16 miny) { 
	Widget_setPosition(WIDGET(this), minx, miny); 
}

inline void Rectangle_getCenter(Rectangle *this, u16 *cx, u16 *cy) { 
	Widget_getCenter(WIDGET(this), cx, cy); 
}

inline void Rectangle_setCenter(Rectangle *this, u16 cx, u16 cy) {  
	Widget_setCenter(WIDGET(this), cx, cy); 
}

inline b8 Rectangle_contains(Rectangle *this, u16 x, u16 y) { 
	return Widget_contains(WIDGET(this), x, y); 
}

// Sets position and width and height
inline void Rectangle_setRect(Rectangle *this, u16 minx, u16 miny, u16 width, u16 height) { 
	Widget_setRect(WIDGET(this), minx, miny, width, height); 
}

inline void Rectangle_scale(Rectangle *this, double xscale, double yscale, int smooth){ 
	Widget_scale(WIDGET(this), xscale, yscale, smooth); 
}

const char *Rectangle_toString(const Rectangle *this) {
	static char str_id[32];
	if (! this) return "rectangle=NULL";
	snprintf(str_id, sizeof(str_id), "Rectangle color: 0x%X", this->color);
	return str_id;
}
