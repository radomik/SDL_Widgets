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

#include "../srcCommon/StdDefinitions.h"
#include "../srcCommon/Types.h"
#include "../srcCommon/Static.h"
#include "../srcCommon/Screen.h"
#include "../srcCommon/Memory.h"
#include "ScrollView.h"
#include "Widget.h"
static void ScrollView_vprint(void *vthis);
static void ScrollView_vdestroy(void *vthis);

static Type type = {
	.size      = sizeof(ScrollView),
	.name      = "ScrollView",
	.super_get = Widget_gt,
	.vprint    = ScrollView_vprint,
	.vdestroy  = ScrollView_vdestroy
};
const Type *ScrollView_t = &type;
const Type *ScrollView_gt() { return ScrollView_t; }

static void ScrollView_vprint(void *vthis) {
	ScrollView *this = (ScrollView*)vthis;
	fprintf(stderr, "ScrollView[this=%p]:\n\
\t.child:                  %p\n\
\t.child_rect.x:           %hu\n\
\t.child_rect.y:           %hu\n\
\t.child_rect.w:           %hu\n\
\t.child_rect.h:           %hu\n\
\t.border_color:           0x%06X\n\
\t.bg_color:               0x%06X\n\
\t.border_width:           %hu\n\
\t.child_max_w:            %hu\n\
\t.child_max_h:            %hu\n\
\t.scroll_delta:           %hu\n",
	this, this->child, this->child_rect.x, this->child_rect.y, 
	this->child_rect.w, this->child_rect.h, this->border_color,
	this->bg_color, this->border_width, this->child_max_w,
	this->child_max_h, this->scroll_delta);
	Widget_print(WIDGET(this));
}

inline void ScrollView_print(ScrollView *this) { ScrollView_vprint(this); }

inline void ScrollView_destroy(ScrollView *this) {
	_error("ScrollView_destroy", this, "child=%p, internal=%s\n", this->child, Bool_toString(Widget_fisInternal(this->child)));
	if ((this->child) && (Widget_fisInternal(this->child))) 
		delete(this->child);
	
	this->child = NULL;
	
	Widget_destroy(WIDGET(this));
}
static void ScrollView_vdestroy(void *vthis) { ScrollView_destroy((ScrollView*)vthis); }

inline static void ScrollView_updateChildRectSize(ScrollView *this) {
	this->child_rect.w = (this->child->w < this->child_max_w) ? (this->child->w) : (this->child_max_w);
	this->child_rect.h = (this->child->h < this->child_max_h) ? (this->child->h) : (this->child_max_h);
}

inline static void ScrollView_refreshChild(ScrollView *this) {
	Widget_refresh(this->child);
	
	if (this->child->w < this->child_max_w) {
		this->child_rect.x = 0;
		this->child_rect.w = this->child->w;
	}
	else
		this->child_rect.w = this->child_max_w;
		
	if (this->child->h < this->child_max_h) {
		this->child_rect.y = 0;
		this->child_rect.h = this->child->h;
	}
	else
		this->child_rect.h = this->child_max_h;
	
	if (this->child_rect.x > this->child->w) this->child_rect.x = 0;
	if (this->child_rect.y > this->child->h) this->child_rect.y = 0;
}

static void ScrollView_vmevent(void *vthis, Screen *screen) {
	ScrollView 	*this    = (ScrollView*) vthis;
	Widget 		*this_wt = (Widget*) vthis;
	if (! this->child) { // ScrollView has no child widget attached
		if ((Widget_contains(this_wt, screen->mevent.x, screen->mevent.y)) && 
			((screen->event.type == SDL_MOUSEBUTTONDOWN)) && 
			(screen->event.button.button < 4))
			{ // LMB, MMB or RMB press inside ScrollView
			  // mevent is handled and ScrollView should be moved ontop of Screen
				screen->mevent_handled = screen->mevent_switch = true;
			}
		return; // return - has no child
	}
	
	int			delta_transf_x, delta_transf_y;
	usint		b = this->border_width;
	
	usint		minx = b + this_wt->relmin.x,
				miny = b + this_wt->relmin.y,
				maxx = ((this->child->w < this->child_max_w) 
					? (minx + this->child->w) 
					: (minx + this->child_max_w)) - 1,
				maxy = ((this->child->h < this->child_max_h) 
					? (miny + this->child->h)
					: (miny + this->child_max_h)) - 1;
	
	bool		not_motion = (screen->event.type != SDL_MOUSEMOTION);
	bool		not_inside_child;
	
	//if (! motion) fprintf(stderr, "ScrollView_vmevent: mx=%hu, my=%hu, inner=[%hu,%hu,%hu,%hu]\n", mx, my, minx, miny, maxx, maxy);
	
	not_inside_child = ! Static_PointInside(screen->mevent.x, screen->mevent.y, minx, maxx, miny, maxy);
	
	//if (not_inside_child) {
		if ((Widget_contains(this_wt, screen->mevent.x, screen->mevent.y)) && 
			((screen->event.type == SDL_MOUSEBUTTONDOWN)) && 
			(screen->event.button.button < 4))
			{
				screen->mevent_handled = screen->mevent_switch = true;
			}
		//return;
	//}
	if (not_inside_child) return;
	
	/* Update mouse position in event info
	 * to be relative to current:
	 * child.relmin.x = child.relmin.y = 0
	 */
	 
	delta_transf_x   = this->child_rect.x - this_wt->relmin.x; 
	delta_transf_y   = this->child_rect.y - this_wt->relmin.y;
	screen->mevent.x += delta_transf_x;
	screen->mevent.y += delta_transf_y;
	///if (not_motion)
	///	fprintf(stderr, "ScrollView_vmevent: Transformed[%d,%d]: screen->mevent.x=%hu, screen->mevent.y=%hu\n", 
	///			delta_transf_x, delta_transf_y, screen->mevent.x, screen->mevent.y);
	
	Widget_mevent(this->child, screen);		   // pass mevent to child
	
	screen->mevent.x -= delta_transf_x;
	screen->mevent.y -= delta_transf_y;
											   // Continue if:
	//_error("ScrollView_vmevent", this, ".mevent_handled=%s .type=%s\n", Bool_toString(screen->mevent_handled), Screen_getEventName(screen->event.type));
	if ((! screen->mevent_handled) && 		  	  // child not handled event
		(not_motion) &&						 	  // event is not of type SDL_MOUSEMOTION
		(screen->event.type != SDL_MOUSEBUTTONUP) &&// event is not of type SDL_MOUSEBUTTONUP
		((screen->event.button.button == SDL_BUTTON_WHEELUP) || // mouse pressed by whell up/down only
		 (screen->event.button.button == SDL_BUTTON_WHEELDOWN)))// scroll up/down
	{ // child didn't handle event, handle mouse scroll
	  // event is of type SDL_MOUSEBUTTONDOWN
		Uint8 *keystate = SDL_GetKeyState(NULL);
		bool  shift_hold = keystate[SDLK_LSHIFT] || keystate[SDLK_RSHIFT];
		if (screen->event.button.button == SDL_BUTTON_WHEELUP) {  	// mouse wheel up
			if (shift_hold) { 										// shift hold
				ScrollView_scroll(this, LEFT, this->scroll_delta);	// scroll left
			}
			else { 													// shift released
				ScrollView_scroll(this, UP, this->scroll_delta);  	// scroll up
			}
		}
		else {  													// mouse wheel down
			if (shift_hold) { 										// shift hold
				ScrollView_scroll(this, RIGHT, this->scroll_delta);	// scroll right
			}
			else { 													// shift released
				ScrollView_scroll(this, DOWN, this->scroll_delta);  // scroll down
			}
		}
		screen->mevent_handled = true;
	}
	
	///if (! motion) fprintf(stderr, "ScrollView_vmevent: On end mevent.x=%hu, mevent.y=%hu On start: (%hu,%hu)\n", screen->mevent.x, screen->mevent.y, mx, my);
}

static void ScrollView_vrefresh(void *vthis) {
	Widget	    *this_wt = (Widget*) vthis;
	ScrollView  *this = (ScrollView*) vthis;
	SDL_Surface *surf = this_wt->surf;
	usint		b2 = this->border_width << 1;
	usint		b  = this->border_width;
	usint		new_w = this->child_max_w + b2;		// desired surface size
	usint		new_h = this->child_max_h + b2;
	
	if ((! surf) || (surf->w != new_w) || (surf->h != new_h)) {
		SDL_FreeSurface(surf);
		if (! (surf = Static_NewSurface(new_w, new_h))) {
			fprintf(stderr, "ScrollView_vrefresh[this=%p]: Failed to create base surface: %s\n", this, SDL_GetError());
			///Widget_fsetInvalid(this_wt, true);
			return;
		}
	}
	
	// fill surface with border color
	if ((b) && (SDL_FillRect(surf, NULL, this->border_color))) 
		fprintf(stderr, "ScrollView_vrefresh[this=%p]: Failed to fill surface with border color: %s\n", this, SDL_GetError());
	
	// interior blitting rectangle (without border)
	SDL_Rect bgr = { 
		.x = b,
		.y = b,
		.w = this->child_max_w,
		.h = this->child_max_h
	};
	
	if (this->child) 
	{	// have child
	
		// refresh child if needed
		if (Widget_fisNeedRefresh(this->child)) ScrollView_refreshChild(this);
		else
			ScrollView_updateChildRectSize(this);
		
		//ScrollView_printProperties(this);
			
		// if child widget is invalid
		if ((! this->child->surf) /** || (Widget_fisInvalid(this->child))**/ ) {
			if (SDL_FillRect(surf, &bgr, this->bg_color) < 0) {
				fprintf(stderr, "ScrollView_vrefresh[this=%p]: Failed to fill surface with background color: %s\n", 
						this, SDL_GetError());
			}
		}
		
		// fill interior of self widget if child is smaller than
		if ((this->child->w - this->child_rect.x < this->child_max_w)  || 
			(this->child->h - this->child_rect.y < this->child_max_h)) 
		{
			if (SDL_FillRect(surf, &bgr, this->bg_color) < 0) {
				fprintf(stderr, "ScrollView_vrefresh[this=%p]: Failed to fill surface with background color: %s\n", 
						this, SDL_GetError());
			}
		}
		
		// blit clipped child surface onto self surface
		///fprintf(stderr, "ScrollView_vrefresh[this=%p]: Before blit, bgr=[%hu,%hu,%hu,%hu]\n", this, bgr.x, bgr.y, bgr.w, bgr.h);
		if (SDL_BlitSurface(this->child->surf, &(this->child_rect), surf, &bgr) < 0) {
			fprintf(stderr, "ScrollView_vrefresh[this=%p]: Failed to blit child surface onto self surface: %s\n", 
						this, SDL_GetError());
		}
		///fprintf(stderr, "ScrollView_vrefresh[this=%p]: After  blit, bgr=[%hu,%hu,%hu,%hu]\n", this, bgr.x, bgr.y, bgr.w, bgr.h);
		
		if (Widget_fisSizePosChanged(this->child)) Widget_fsetSizePosChanged(this->child, false);
	}
	else 
	{	// child is NULL
		// fill interior of self surface with background color
		if (SDL_FillRect(surf, &bgr, this->bg_color) < 0) {
			fprintf(stderr, "ScrollView_vrefresh[this=%p]: Failed to fill surface with background color: %s\n", 
					this, SDL_GetError());
		}
	}
	
	Widget_updateSize(this_wt, new_w, new_h);
	this_wt->surf = surf;
}

void ScrollView_printProperties(ScrollView *this) {
	Widget *this_wt = WIDGET(this);
	fprintf(stderr, "Scrollview[this=%p]:\n\
.widget.relmin.x      = %hu\n\
.widget.relmin.y      = %hu\n\
.widget.relmin.w      = %hu\n\
.widget.relmin.h      = %hu\n\
.widget.relmax.x      = %hu\n\
.widget.relmax.y      = %hu\n\
.widget.w             = %hu\n\
.widget.h             = %hu\n\
.child                = %p\n\
.child_rect.x         = %hu\n\
.child_rect.y         = %hu\n\
.child_rect.w         = %hu\n\
.child_rect.h         = %hu\n\
.child_max_w          = %hu\n\
.child_max_h          = %hu\n\
.border_width         = %hu\n", this,
	this_wt->relmin.x, this_wt->relmin.y, this_wt->relmin.w, this_wt->relmin.h, this_wt->relmax.x, this_wt->relmax.y,
	this_wt->w, this_wt->h, this->child, this->child_rect.x, this->child_rect.y, this->child_rect.w, this->child_rect.h,
	this->child_max_w, this->child_max_h, this->border_width);
	if (this->child) {
		this_wt = this->child;
		fprintf(stderr, "Child[%p]:\n\
.widget.relmin.x      = %hu\n\
.widget.relmin.y      = %hu\n\
.widget.relmin.w      = %hu\n\
.widget.relmin.h      = %hu\n\
.widget.relmax.x      = %hu\n\
.widget.relmax.y      = %hu\n\
.widget.w             = %hu\n\
.widget.h             = %hu\n", this->child,
		this_wt->relmin.x, this_wt->relmin.y, this_wt->relmin.w, this_wt->relmin.h,
		this_wt->relmax.x, this_wt->relmax.y, this_wt->w, this_wt->h);
	}
}

void ScrollView_scroll(ScrollView *this, direction dir, usint delta) {
	if ((! delta) || (! this->child)) return;
	if (Widget_fisNeedRefresh(this->child)) ScrollView_refreshChild(this);
	{
		int n;
		switch (dir) {
			case UP:
				n = this->child_rect.y - delta;
				if (n < 0) return;
				//fprintf(stderr, "ScrollView_scroll[this=%p]: UP: delta=%hu, prev.y=%hu, new.y=%d\n", 
				//				this, delta, this->child_rect.y, n);
				this->child_rect.y = n;
				break;
			case LEFT:
				n = this->child_rect.x - delta;
				if (n < 0) return;
				//fprintf(stderr, "ScrollView_scroll[this=%p]: LEFT: delta=%hu, prev.x=%hu, new.x=%d\n", 
				//				this, delta, this->child_rect.x, n);
				this->child_rect.x = n;
				break;
			case DOWN:
				n = this->child_rect.y + delta;
				//fprintf(stderr, "ScrollView_scroll[this=%p]: DOWN: %d > %hu - %hu\n", 
				//	this, n, this->child->h , this->child_rect.h);
				if (n > this->child->h - this->child_rect.h) return;
				//fprintf(stderr, "ScrollView_scroll[this=%p]: DOWN: delta=%hu, prev.y=%hu, new.y=%d\n", 
				//				this, delta, this->child_rect.y, n);
				this->child_rect.y = n;
				break;
			case RIGHT:
				n = this->child_rect.x + delta;
				//fprintf(stderr, "ScrollView_scroll[this=%p]: RIGHT: %d > %hu - %hu\n", 
				//	this, n, this->child->w , this->child_rect.w);
				if (n > this->child->w - this->child_rect.w) return;
				//fprintf(stderr, "ScrollView_scroll[this=%p]: RIGHT: delta=%hu, prev.x=%hu, new.x=%d\n", 
				//				this, delta, this->child_rect.x, n);
				this->child_rect.x = n;
				break;
		}
		Widget_setRefresh(WIDGET(this));
	}
}

ScrollView *ScrollView_new(usint w, usint h) {
	ScrollView *this = new(&type);
	if (! this) { _error("ScrollView_new", this, "new() failed. @param w=%hu, h=%hu", w, h); return this; }
	
	ScrollView_new2(this, w, h);
	
	return this;
}

inline void ScrollView_new2(ScrollView *this, usint w, usint h) {
	Widget_new2(WIDGET(this));
	
	this->child_max_w  = w < 3 ? 3 : w;
	this->child_max_h  = h < 3 ? 3 : h;
	this->border_color = W_DEFAULT_BORDER_COLOR;
	this->bg_color     = W_DEFAULT_BGCOLOR;
	this->border_width = DEF_BORDER_WIDTH;
	this->scroll_delta = DEF_SCROLL_DELTA;
	(WIDGET(this))->vrefresh = ScrollView_vrefresh;
	(WIDGET(this))->vmevent = ScrollView_vmevent;
}

ScrollView *ScrollView_copy(ScrollView *src) {
	if (! src) {
		_error("ScrollView_copy", NULL, "Passed NULL @param: src pointer"); return NULL; 
	}
	ScrollView *this = new(&type);
	if (! this) { _error("ScrollView_copy", this, "new() failed. @param src[%p]", src); return this; }
	
	ScrollView_copy2(this, src);
	
	return this;
}

inline void ScrollView_copy2(ScrollView *this, ScrollView *src) {
	/** Initialize super class with choosen super constructor **/
	Widget_copy2(WIDGET(this), (Widget*)src);
	
	//
	this->child = NULL;
	this->border_color = src->border_color;
	this->bg_color = src->bg_color;
	this->border_width = src->border_width;
	this->child_max_w = src->child_max_w;
	this->child_max_h = src->child_max_h;
	this->scroll_delta = src->scroll_delta;
}

void ScrollView_addChild(ScrollView *this, Widget *child, usint start_x, usint start_y) {
	_error("ScrollView_addChild", this, "child=%p[%s]\n", child, typename(child));
	this->child = child;
	Widget_setRefresh(WIDGET(this));
	if (child) {
		child->parent      = WIDGET(this); // for setRefresh propagation
		Widget_updateMinXY(child, 0, 0);
		this->child_rect.x = start_x;
		this->child_rect.y = start_y;
		if (Widget_fisNeedRefresh(child)) 
			ScrollView_refreshChild(this);
		else {
			//fprintf(stderr, "ScrollView_addChild: max=[w=%hu, h=%hu], child=[w=%hu, h=%hu]\n", 
			//	this->child_max_w, this->child_max_h, this->child->w, this->child->h);
			ScrollView_updateChildRectSize(this);
			if (this->child->w < this->child_max_w) this->child_rect.x = 0;
			if (this->child->h < this->child_max_h) this->child_rect.y = 0;
		}
	}
}

void ScrollView_setSize(ScrollView *this, usint w, usint h) {
	usint b2 = this->border_width << 1;
	if ( ((this->child_max_w == w) && (this->child_max_h == h)) ||
		 (w <= b2) ||
		 (h <= b2) ||
		 (w < 3) ||
		 (h < 3))
		return;
	this->child_max_w = w;
	this->child_max_h = h;
	
	if (this->child) {
		if (Widget_fisNeedRefresh(this->child)) 
			ScrollView_refreshChild(this);
		else
			ScrollView_updateChildRectSize(this);
	}
	Widget_setRefresh(WIDGET(this));
}

void ScrollView_setBorder(ScrollView *this, uint border_color, usint border_width) {
	usint b2 = border_width << 1;
	int   db = b2 - (this->border_width << 1);
	if ( ((this->border_color == border_color) && (! db)) ||
		 (this->child_max_w <= b2) ||
		 (this->child_max_h <= b2) )
		return;
	if (db) {
		this->child_max_w += db;
		this->child_max_h += db;
	}
	this->border_color = border_color;
	this->border_width = border_width;
	if (this->child) {
		if (Widget_fisNeedRefresh(this->child)) 
			ScrollView_refreshChild(this);
		else
			ScrollView_updateChildRectSize(this);
	}
	Widget_setRefresh(WIDGET(this));
}

inline void ScrollView_setBgColor(ScrollView *this, uint bg_color) {
	if (this->bg_color == bg_color) return;
	this->bg_color = bg_color;
	Widget_setRefresh(WIDGET(this));
}
