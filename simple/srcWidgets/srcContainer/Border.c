/*		[Border with one child]
 *      Border.c - this file is part of SDL_Widgets
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

#include "../../srcCommon/StdDefinitions.h"
#include "../../srcCommon/Types.h"
#include "../../srcCommon/Static.h"
#include "../../srcCommon/Memory.h"
#include "../../srcCommon/Screen.h"
#include "Border.h"
#include "../Widget.h"
static void Border_vprint(void *vthis);
static void Border_vdestroy(void *vthis);

static Type type = {
	.size      = sizeof(Border),
	.name      = "Border",
	.super_get = Widget_gt,
	.vprint    = Border_vprint,
	.vdestroy  = Border_vdestroy
};
const Type *Border_t = &type;
const Type *Border_gt() { return Border_t; }

static void Border_vprint(void *vthis) {
	Border *this = (Border*)vthis;
	fprintf(stderr, "Border[this=%p]:\n\
\t.child:                  %p[%s]\n\
\t.padding.top:            %hu\n\
\t.padding.left:           %hu\n\
\t.padding.bottom:         %hu\n\
\t.padding.right:          %hu\n\
\t.border_color:           0x%06X\n\
\t.bgcolor:                0x%06X\n\
\t.border_width:           %hu\n\
", this, this->child, typename(this->child), this->padding.top, this->padding.left, this->padding.bottom, this->padding.right,
this->border_color, this->bgcolor, this->border_width);
	Widget_print(WIDGET(this));
}

inline void Border_print(Border *this) { Border_vprint(this); } 

inline void Border_destroy(Border *this) { 
	if ((this->child) && (Widget_fisInternal(this->child))) {
		delete(this->child);
		this->child = NULL;
	}
	Widget_destroy(WIDGET(this)); 
}
static void Border_vdestroy(void *vthis) { Border_destroy((Border*)vthis); }

static void Border_vrefresh(void *vthis) {
	Widget		*this_wt   = WIDGET(vthis);
	Border		*this	   = (Border*)vthis;
	SDL_Surface *surf	   = this_wt->surf;
	usint		w, h;
	usint		b2 = this->border_width << 1;
	SDL_Rect	child_rect = {
		.x = this->border_width + this->padding.left,
		.y = this->border_width + this->padding.top,
		.w = 0,
		.h = 0,
	};
	bool		child_valid = ((this->child) && (! Widget_fisInvalid(this->child)));
	
	/** If ((.child != NULL) && (! .child.invalid)) **/
	if (child_valid) {
		if (Widget_fisNeedRefresh(this->child)) { // if .child.need_refresh == true
			Widget_refresh(this->child);		  // refresh it
			child_valid = ((this->child->surf) && (! Widget_fisInvalid(this->child)));
			if (child_valid) {					  // if child have surface and is valid
				child_rect.w = this->child->w;	  // store its width and height
				child_rect.h = this->child->h;
			}									  // not valid-> (w,h)=(0,0)
		}
		else {									  // not need refresh ->store (w,h)
			child_rect.w = this->child->w;
			child_rect.h = this->child->h;
		}
	}
	
	/** Calculate new self surface size **/
	w = child_rect.w + this->padding.left + this->padding.right  + b2;
	h = child_rect.h + this->padding.top  + this->padding.bottom + b2;
	
	if ((! surf) || (surf->w != w) || (surf->h != h)) {
		SDL_FreeSurface(surf);
		surf = Static_NewSurface(w, h);
		if (! surf) {
			fprintf(stderr, "Border_vrefresh[this=%p] Failed to create empty surface SDL_CreateRGBSurface() (%s)\n", this, SDL_GetError());
			Widget_fsetInvalid(this_wt, true);
			return;
		}
	}
	this_wt->surf = surf; // update here because .surf needed for Widget_draw() (on end)
	
	/** Update self .w and .h **/
	Widget_updateSize(this_wt, w, h);
	
	/** Update child relmin.x and relmin.y **/
	if (child_valid) {
		Widget_updateMinXY(this->child, child_rect.x, child_rect.y); // minx, miny, maxx, maxy
	}
	
	/** Fill surface with border color, then with background color **/
	if (this->border_width) { // have border
		SDL_Rect bgr = { // bgcolor filling rectangle
			.x = this->border_width,
			.y = this->border_width,
			.w = w - b2,
			.h = h - b2
		};
		if (SDL_FillRect(surf, NULL, this->border_color)) 
			_error("Border_vrefresh", this, "Fill rect of border failed with border_width != 0 [%s]\n", SDL_GetError());
		if (SDL_FillRect(surf, &bgr, this->bgcolor)) 
			_error("Border_vrefresh", this, "Fill rect of bgcolor failed with border_width != 0 [%s]\n", SDL_GetError());
	}
	else { // no border
		if (SDL_FillRect(surf, NULL, this->bgcolor)) 
			_error("Border_vrefresh", this, "Fill rect of bgcolor failed with border_width == 0 [%s]\n", SDL_GetError());
	}
	
	/** Blit child surface if valid **/
	if (child_valid) {
		Widget_draw(this->child);
	}
}

static void Border_vmevent(void *vthis, Screen *screen) {
	Widget 		*this_wt = (Widget*) vthis;
	
	if (((Border*)vthis)->child) {
		screen->mevent.x -= this_wt->relmin.x;
		screen->mevent.y -= this_wt->relmin.y;
		Widget_mevent(((Border*)vthis)->child, screen);
		screen->mevent.x += this_wt->relmin.x;
		screen->mevent.y += this_wt->relmin.y;
		if (! screen->mevent_handled)
			Widget_vmevent(this_wt, screen);
	}
	else {
		Widget_vmevent(this_wt, screen);
	}
}

Border *Border_new() {
	/** Create this pointer **/
	Border *this = new(&type);
	if (! this) { _error("Border_new", this, "new() failed"); return this; }
	
	Border_new2(this);
	
	return this;
}

inline void Border_new2(Border *this) {
	Widget_new2(WIDGET(this));
	this->bgcolor = W_DEFAULT_BGCOLOR;
	this->border_color = W_DEFAULT_BORDER_COLOR;
	(WIDGET(this))->vmevent  = Border_vmevent;
	(WIDGET(this))->vrefresh = Border_vrefresh;
}

Border* Border_copy(Border *src) {
	if (! src) {
		_error("Border_copy", NULL, "Passed NULL @param: src pointer"); return NULL; 
	}
	Border *this = new(&type);
	if (! this) { 
		_error("Border_copy", this, "new() failed. @param src[%p][src.child=%p]", src, src->child); 
		return this; 
	}
	
	Border_copy2(this, src);
	
	return this;
}

inline void Border_copy2(Border *this, Border *src) {
	/** Initialize super class with choosen super constructor **/
	Widget_copy2(WIDGET(this), (Widget*)src);
	
	/** Do common initialization of current class **/
	this->child = NULL;
	this->padding = src->padding;
	this->border_color = src->border_color;
	this->bgcolor = src->bgcolor;
	this->border_width = src->border_width;
}

void Border_addChild(Border *this, Widget *child) {
	this->child = child;
	Widget_setRefresh(WIDGET(this));
	if (child) {
		child->parent   = WIDGET(this);
		if (Widget_fisNeedRefresh(child)) Widget_refresh(child);
	}
}

inline void Border_setPadding(Border *this, usint pad_top, usint pad_left, usint pad_bottom, usint pad_right) {
	if ((this->padding.top == pad_top) && 
		(this->padding.left == pad_left) &&
		(this->padding.bottom == pad_bottom) && 
		(this->padding.right == pad_right)) return;
	this->padding.top    = pad_top;
	this->padding.left   = pad_left;
	this->padding.bottom = pad_bottom;
	this->padding.right  = pad_right;
	Widget_setRefresh(WIDGET(this));
}

inline void Border_setBgColor(Border *this, uint bg_color) {
	if (this->bgcolor == bg_color) return;
	this->bgcolor = bg_color;
	Widget_setRefresh(WIDGET(this));
}

inline void Border_setBorder(Border *this, uint border_color, usint border_width) {
	if ((this->border_color == border_color) && (this->border_width == border_width)) return;
	this->border_color = border_color;
	this->border_width = border_width;
	Widget_setRefresh(WIDGET(this));
}

