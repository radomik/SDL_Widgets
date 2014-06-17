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
#include "Object.h"
#include "Static.h"
#include "Memory.h"
#include "Widget.h"
#include "Rectangle.h"

static const char *type = "Rectangle";

void Rectangle_refresh(Rectangle *rectangle) {
	Widget	*widget    = (Widget*)rectangle; //! @NOTE: Rectangle have to inherit from Widget
	bool	creat_surf = true;
	if (widget->surf) {	// surface already exists
		if ((widget->surf->w < widget->pos.w) || (widget->surf->h < widget->pos.h)) {	// dimension changed
			SDL_FreeSurface(widget->surf);
		}
		else creat_surf = false;
	}
	
	if (creat_surf) {
		widget->surf = Static_NewSurface(widget->pos.w, widget->pos.h);
		if (! widget->surf) {
			fprintf(stderr, "Rectangle_refresh:Rectangle > Failed to create empty surface SDL_CreateRGBSurface() (%s)\n", SDL_GetError());
			widget->visible = false;
			return;
		}
	}
	// surface created, fill it with color
	if (SDL_FillRect(widget->surf, NULL, rectangle->color)) {
		fprintf(stderr, "Rectangle_refresh:Rectangle> Failed to fill background surface (FillRect) (%s)\n", SDL_GetError());
		widget->visible = false;
		return;
	}
	widget->maxx        = widget->pos.x + widget->pos.w;
	widget->maxy        = widget->pos.y + widget->pos.h;
	widget->visible     = true;
	widget->need_reload = true;
}

/** Current destructor (virtual) use delete() handler to call it */
// replaced by Widget_vdestroy because Rectangle has nothing to destroy
//static void LabelImage_vdestroy(void *vthis) { }

// In order:
// 1. Rectangle_new(...);
// 2. pos.x = .., pos.y = .., pos.w = .., pos.h = ..
// 3. Rectangle_refresh
Rectangle* Rectangle_new(Rectangle *this, uint rgb_color) {
	if (! this) {
		fprintf(stderr, "Rectangle_new: Passed NULL this pointer. rgb_color=%X\n", rgb_color);
		return NULL;
	}
	// third parameter is NULL due to Rectangle uses parent Widget destructor
	Widget_init_type((Widget*)this, RECTANGLE_TYPE, NULL, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Rectangle_new", Object_getType((Object*)this), this);
	
	this->color		  = rgb_color;
	return this;
}

// Copying constructor 
// (assuming that rectdest is only allocated or just after destroy, not constructed yet)
Rectangle* Rectangle_copy(Rectangle *rectdest, Rectangle *rectsrc, bool copy_pos) {
	if ((! rectdest) || (! rectsrc)) {
		fprintf(stderr, "Rectangle_copy: Passed NULL: rectdest(%p) or rectsrc(%p)\n", rectdest, rectsrc);
		return NULL;
	}
	Widget_copy((Widget*)rectdest, (Widget*)rectsrc, copy_pos, true);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Rectangle_copy", Object_getType((Object*)rectdest), rectdest);

	rectdest->color  = rectsrc->color;
	return rectdest;
}

inline void Rectangle_setColor(Rectangle *rectangle, uint rgb_color) { rectangle->color = rgb_color; }

// sets only size of rectangle widget
inline void Rectangle_setSize(Rectangle *rectangle, usint width, usint height) 
	{ Widget_setSize((Widget*)rectangle, width, height); }

// Sets only position of rectangle widget
inline void Rectangle_setPosition(Rectangle *rectangle, usint minx, usint miny) 
	{ Widget_setPosition((Widget*)rectangle, minx, miny); }

inline void Rectangle_getCenter(Rectangle *rectangle, usint *cx, usint *cy) 
	{ Widget_getCenter((Widget*)rectangle, cx, cy); }
inline void Rectangle_setCenter(Rectangle *rectangle, usint cx, usint cy) 
	{  Widget_setCenter((Widget*)rectangle, cx, cy); }

inline bool Rectangle_contains(Rectangle *rectangle, usint x, usint y) 
	{ return Widget_contains((Widget*)rectangle, x, y); }

// Sets position and width and height
inline void Rectangle_setRect(Rectangle *rectangle, usint minx, usint miny, usint width, usint height) 
	{ Widget_setRect((Widget*)rectangle, minx, miny, width, height); }

inline void Rectangle_scale(Rectangle *rectangle, double xscale, double yscale, int smooth)
	{ Widget_scale((Widget*)rectangle, xscale, yscale, smooth); }

static char str_id[32];
char *Rectangle_toString(Rectangle *rectangle) {
	if (! rectangle) return "rectangle=NULL";
	snprintf(str_id, 32, "Rectangle color: 0x%X", rectangle->color);
	return str_id;
}
