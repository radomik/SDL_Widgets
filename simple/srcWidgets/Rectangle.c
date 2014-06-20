/*		[Rectangle filled with one color]
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

#include "../srcCommon/StdDefinitions.h"
#include "../srcCommon/Types.h"
#include "../srcCommon/Static.h"
#include "../srcCommon/Memory.h"
#include "Rectangle.h"
#include "Widget.h"
static void Rectangle_vprint(void *vthis);

static Type type = {
	.size      = sizeof(Rectangle),
	.name      = "Rectangle",
	.super_get = Widget_gt,
	.vprint    = Rectangle_vprint,
	.vdestroy  = NULL
};
const Type *Rectangle_t = &type;
const Type *Rectangle_gt() { return Rectangle_t; }

static void Rectangle_vprint(void *vthis) {
	Rectangle *this = (Rectangle*)vthis;
	fprintf(stderr, "Rectangle[this=%p]:\n\
\t.bg_color:               0x%06X\n", this, this->bg_color);
	Widget_print(WIDGET(this));
}

inline void Rectangle_print(Rectangle *this) { Rectangle_vprint(this); } 

inline void Rectangle_destroy(Rectangle *this) { Widget_destroy(WIDGET(this)); }

static void Rectangle_vrefresh(void *vthis) {
	Widget		*this_wt   = WIDGET(vthis);
	Rectangle	*this	   = (Rectangle*)vthis;
	SDL_Surface *surf	   = this_wt->surf;
	usint		w		   = this_wt->w;
	usint		h		   = this_wt->h;
	
	if ((! surf) || (surf->w != w) || (surf->h != h)) {
		SDL_FreeSurface(surf);
		surf = Static_NewTransparentSurface(w, h);
		if (! surf) {
			fprintf(stderr, "Rectangle_vrefresh[this=%p] Failed to create empty surface SDL_CreateRGBSurface() (%s)\n", this, SDL_GetError());
			Widget_fsetInvalid(this_wt, true);
			return;
		}
	}
	
	if ((this->radius > 0) || (this->radius == -1)) {
		Uint8 a, r, g, b;
		ARGB_CONV(this->bg_color, a, r, g, b);
		
		if (roundedBoxRGBA(surf, 0, 0, w-1, h-1, this->radius, r, g, b, a)) {
			_error("Rectangle_vrefresh", this, "Failed to draw rounded rectangle (roundedBoxRGBA) (%s)\n", 
				this, SDL_GetError());
		}
	}
	else {
		if (SDL_FillRect(surf, NULL, this->bg_color)) {
			_error("Rectangle_vrefresh", this, "Failed to fill background surface (FillRect) (%s)\n", 
				this, SDL_GetError());
		}
	}
	
	this_wt->surf		 = surf;
}

Rectangle *Rectangle_new(uint bg_color, Sint16 radius) {
	/** Create this pointer **/
	Rectangle *this = new(&type);
	if (! this) { _error("Rectangle_new", this, "new() failed. @param bg_color[0x08X], radius=%hd", bg_color, radius); return this; }
	
	Rectangle_new2(this, bg_color, radius);
	
	return this;
}

inline void Rectangle_new2(Rectangle *this, uint bg_color, Sint16 radius) {
	Widget_new2(WIDGET(this));
	
	this->bg_color	= bg_color;
	this->radius	= radius;
	(WIDGET(this))->vrefresh = Rectangle_vrefresh;
}

Rectangle* Rectangle_copy(Rectangle *src) {
	if (! src) {
		_error("Rectangle_copy", NULL, "Passed NULL @param: src pointer"); return NULL; 
	}
	Rectangle *this = new(&type);
	if (! this) { _error("Rectangle_copy", this, "new() failed. @param src[%p][0x%08X]", src, src->bg_color); return this; }
	
	Rectangle_copy2(this, src);
	
	return this;
}

inline void Rectangle_copy2(Rectangle *this, Rectangle *src) {
	/** Initialize super class with choosen super constructor **/
	Widget_copy2(WIDGET(this), (Widget*)src);
	
	/** Do common initialization of current class **/
	this->bg_color = src->bg_color;
	this->radius   = src->radius;
}

inline void Rectangle_setColor(Rectangle *this, uint bg_color) {
	if (this->bg_color == bg_color) return;
	this->bg_color = bg_color;
	Widget_setRefresh(WIDGET(this));
}

inline void Rectangle_setRadius(Rectangle *this, Sint16 radius) {
	if (this->radius == radius) return;
	this->radius = radius;
	Widget_setRefresh(WIDGET(this));
}
