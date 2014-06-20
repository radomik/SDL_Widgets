/*		[Widget is parent class for many widgets and containers (shouldn't be instantined)]
 *      Widget.c - this file is part of SDL_Widgets
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

#include "../srcFastEvents/FeFastEvents.h"
#include "../srcCommon/StdDefinitions.h"
#include "../srcCommon/Types.h"
#include "../srcCommon/Memory.h"
#include "../srcCommon/Screen.h"
#include "../srcCommon/Object.h"
#include "../srcCommon/Static.h"
#include "../srcCommon/MeventCallback.h"
#include "../srcCommon/perr.h"

static void Widget_vdestroy(void *vthis);

static Type type = {
	.size      = 0,				// class Widget is abstract
	.super_get = Object_gt,
	.vprint    = Widget_vprint,
	.vdestroy  = Widget_vdestroy
};
const Type *Widget_t = &type;
const Type *Widget_gt() { return Widget_t; }

void Widget_vprint(void *vthis) {
	Widget *this = WIDGET(vthis);
	fprintf(stderr, "Widget[this=%p]:\n\
\t.parent:                 %p\n\
\t.surf:                   %p\n\
\t.srcrect:                %p\n\
\t.vparam:                 %p\n\
\t.mhandle:                %p\n\
\t.vrefresh:               %p\n\
\t.vmevent:                %p\n\
\t.relmin.x:               %hu\n\
\t.relmin.y:               %hu\n\
\t.relmin.w:               %hu\n\
\t.relmin.h:               %hu\n\
\t.id:                     %u\n\
\t.vparam_size:            %u\n\
\t.vparam_count:           %u\n\
\t.relmax.x:               %hu\n\
\t.relmax.y:               %hu\n\
\t.w:                      %hu\n\
\t.h:                      %hu\n\
\t.flags:                  %08X\n\
\t.mouse_state:            %02X\n",
	this, this->parent, this->surf, this->srcrect, this->vparam, this->mhandle,
	this->vrefresh, this->vmevent, this->relmin.x, this->relmin.y,
	this->relmin.w, this->relmin.h, this->id, this->vparam_size, this->vparam_count,
	this->relmax.x, this->relmax.y, this->w, this->h, this->flags, this->mouse_state);
	Object_print(OBJECT(this));
}
inline void Widget_print(Widget *this) { Widget_vprint(this); }

static void Widget_vdestroy(void *vthis) {
	Widget_destroy(WIDGET(vthis));
}

/** Do common initialization of direct super class and of current class object **/
/** Constructor can be used by classes inheriting from current class           **/
/** or by self class constructor after create this pointer                     **/
inline void Widget_new2(Widget *this) {
	/** Initialize super class with choosen super constructor **/
	Object_new2(OBJECT(this));
	
	/** Do common initialization of current class **/
	this->vmevent = Widget_vmevent;
	Widget_fsetCparamExist(this, true);	
	Widget_fsetNeedRefresh(this, true);
	Widget_fsetVisible(this, true);
}

/** Copy constructor (called by children classes copy constructors) **/
void Widget_copy2(Widget *this, Widget *src) {
	/** Initialize super class with choosen super constructor **/
	Object_clone2(OBJECT(this), (Object*)src);
	
	/** Do initialization of current class **/
	// copy surface 
	if (! (this->surf = Static_CopySurface(src->surf))) {
		_error("Widget_copy2", this, "Failed to copy surface from src[%p][%s] with src->surf=%p [error: %s]\n",
			src, typename(src), src->surf, SDL_GetError());
		Widget_fsetInvalid(this, true);
		return;
	}
	
	// this->parent  = NULL;
	// this->srcrect = NULL;
	
	// copy internal mevent handlers (memcpy arrays)
	///memcpy(this->internal_mevent, src->internal_mevent, HANDLERS_ARRAY_SIZE);
	
	///this->vparam  = NULL; this->vparam_count = 0; this->vparam_size = 0; // don't copy vparam
	///this->cparam = NULL;			// don't copy cparam + .cparam_exist=true (below)
	
	this->vmevent  = src->vmevent;
	this->vrefresh = src->vrefresh;
	
	this->relmin = src->relmin;
	this->relmax = src->relmax;
	this->w		 = src->w;
	this->h      = src->h;
	
	Widget_fsetDraggable(this, Widget_fisDraggable(src)); 
	Widget_fsetVisible(this, Widget_fisVisible(src)); 
	Widget_fsetHasInternalMevents(this, Widget_fisHasInternalMevents(src));
	Widget_fsetContainer(this, Widget_fisContainer(src));
	Widget_fsetInvalid(this, Widget_fisInvalid(src));
		// this->draggable 				= src->draggable;
		// this->visible 				= src->visible;
		// this->has_internal_mevents 	= src->has_internal_mevents;
		// this->container 				= src->container;
	
	Widget_fsetNeedRefresh(this, true);
	Widget_fsetCparamExist(this, true);
		// this->need_refresh = true;
		// this->cparam_exist = true;
	
}

inline void Widget_refresh(Widget *this) {
	Widget_fsetNeedRefresh(this, false);
	if (this->vrefresh) this->vrefresh(this);
}

inline bool Widget_contains(Widget *this, usint x, usint y) {
	return Static_PointInside(x, y, this->relmin.x, this->relmax.x, this->relmin.y, this->relmax.y);
}

inline void Widget_mouseRelease(Widget *this) { this->mouse_state ^= this->mouse_state; }

void Widget_addMeventHandler(Widget *this, mevent_type type, void (*cb)(Widget*, Screen*), uint def_size) {
	if (! cb) return;
	if (! this->mhandle) {
		this->mhandle = MeventCallback_new();
		if (! this->mhandle) {
			_error("Widget_addMeventHandler", this, "Failed to create this->mhandle. MeventCallback_new() returned NULL\n");
			return;
		}
	}
	perr e = MeventCallback_addHandler(this->mhandle, type, cb, def_size);
	if (e) {
		_error("Widget_addMeventHandler", this, 
			"Failed to add mevent handler, MeventCallback_addHandler() exited with error %s\n", 
			perr_getName(e));
	}
}

static bool Widget_drag(Widget *this, Screen *screen) { /*private*/
	int				nx, ny;
	usint			stx   = screen->event.button.x; // get drag origin (mouse press absolute coordinates)
	usint			sty   = screen->event.button.y; // --//--
	usint			old_x = this->relmin.x;			// store previous position of dragged widget
	usint			old_y = this->relmin.y;			// --//--
	signed short	dx, dy;							// drag delta's
	bool			drag = false;					// whether drag was performed
	
	_error("Widget_drag", this, "Start drag of %20s, (minx,miny)=(%4hu,%4hu), (maxx,maxy)=(%4hu,%4hu)\n",
						typename(this), this->relmin.x, this->relmin.y, this->relmax.x, this->relmax.y);
	while (true) {
		while (SDL_PollEvent(&(screen->event))) {
			if (screen->event.type == SDL_MOUSEMOTION) { // mouse move event
				dx = screen->event.motion.x - stx;
				dy = screen->event.motion.y - sty;
				
				if (((nx = this->relmin.x + dx) >= 0) &&
					((ny = this->relmin.y + dy) >= 0))
				{	// if drag can be performed
					stx  += dx;
					sty  += dy;
					if (! drag) drag = true;   // indicates whether mouse was moved at all 
											   // (false on press/realease in the same point)
											   
					this->relmin.x = nx;	   // update position of widget
					this->relmin.y = ny;	   // only most top-left point (need for rebliting)
					
					// only reblit all of screen->widget[] onto screen->surf then SDL_Flip()
					Screen_fastDraw(screen);
				}
			}
			else {
				if (screen->event.type == SDL_MOUSEBUTTONUP) {
					_error("Widget_drag", this, "End   drag of %20s, (minx,miny)=(%4hu,%4hu), (maxx,maxy)=(%4hu,%4hu)\n",
						typename(this), this->relmin.x, this->relmin.y, this->relmax.x, this->relmax.y);
					//Widget_mouseReleased(this);
					
					Widget_updateMaxXY(this);
					
					return drag; /// return value indicates that drag was performed (true) 
								 /// or press/release in one place (false)
				}
			}
		}
	}
}

#include "TextBlock.h"
void Widget_vmevent(void *vthis, Screen *screen) {
	//~ if ((typeo(vthis) == TextBlock_t) && 
		//~ (screen->event.type == SDL_MOUSEBUTTONDOWN || screen->event.type == SDL_MOUSEBUTTONUP)) {
		//~ Widget *this = vthis;
		//~ _error("Widget_vmevent", vthis, "\n\
//~ \tthis.type           = %s[%s]\n\
//~ \tevent.type          = %s\n\
//~ \tthis.visible        = %s\n\
//~ \tthis.invalid        = %s\n\
//~ \tthis.mhandle        = %p\n\
//~ \t     mhandle has click = %s\n\
//~ \tmevent.x,y          = (%hu,%hu)\n\
//~ \tthis.relmin.x,y     = (%hu,%hu)\n\
//~ \tthis.relmax.x,y     = (%hu,%hu)\n\
//~ \tthis.w,h            = (%hu x %hu)\n\
//~ \tCONTAINS            = %s\n", 
	//~ typename(this), (typeo(this) == TextBlock_t) ? TextBlock_getText((TextBlock*)this) : "",
	//~ Screen_getEventName(screen->event.type),
	//~ Bool_toString(Widget_fisVisible(this)), Bool_toString(Widget_fisInvalid(this)),
	//~ this->mhandle, Bool_toString((this->mhandle)?MeventCallback_hasType(this->mhandle, MOUSE_CLICK):0),
	//~ screen->mevent.x, screen->mevent.y, this->relmin.x, this->relmin.y, this->relmax.x, this->relmax.y,
	//~ this->w, this->h, Bool_toString(Widget_contains(this, screen->mevent.x, screen->mevent.y))); 
	//~ }
		
	if ((! Widget_fisVisible(vthis)) || // return if widget is not visible
		(Widget_fisInvalid(vthis))) 	// or is invalid (refresh method failed)
	return;
	
	bool contains = Widget_contains(WIDGET(vthis), screen->mevent.x, screen->mevent.y);
	
	if ((screen->event.type == SDL_MOUSEMOTION) && (! contains) && (! Widget_fisMouseOver(vthis))) return;
	
	//_error("Widget_vmevent", vthis, "widget=%20s, contains=%5s, type=%s\n", 
	//	typename(vthis), Bool_toString(contains), 
	//	Screen_getEventName(screen->event.type));
	
		
	if ( ((WIDGET(vthis))->mhandle) || 	// widget have mevent callbacks
		 (Widget_fisDraggable(vthis)) ) {	// or is draggable
		Widget 		*this = WIDGET(vthis);
		mevent_type  type = MOUSE_NONE;
		uchar 		 but = 0;
		bool		 handled  = false; 
		bool 		 set_to_top = false;
					 
		/** Determine type of mevent for this widget **/
		switch (screen->event.type) {
			case SDL_MOUSEMOTION:		// mouse motion event
				if (this->mouse_state != 0)
					type = MOUSE_DRAG;	// at least one button is pressed
				else { 					// all buttons are released
					if (Widget_fisMouseOver(this)) {	// mouse pointer WAS over widget
						if (! contains) {		// NOW widget doesn't contains mouse pointer
							Widget_fsetMouseOver(this, false);
							type = MOUSE_EXIT;
						}
					}
					else {						// mouse pointer WASN't over widget
						if (contains) {			// NOW widget is covered by mouse pointer
							Widget_fsetMouseOver(this, true);
							type = MOUSE_ENTER;
						}
					}
					/*! Here may set type |= MOUSE_MOVE (something like that) to listen to mouse move events 
					 *! by now they are unsupported */
				}
				break;
			case SDL_MOUSEBUTTONDOWN:	// mouse button down event
				if (contains) {			// if objects contains mouse pointer
										// set exact bit of this->mouse_state
					//_error("Widget_vmevent", this, "press before mouse_state=%X\n", this->mouse_state);
					but = SDL_BUTTON(screen->event.button.button);
					this->mouse_state |= but;
					//_error("Widget_vmevent", this, "press after  mouse_state=%X\n", this->mouse_state);
					type = MOUSE_PRESS;	
					
					if ((this->mhandle) && (MeventCallback_hasType(this->mhandle, MOUSE_CLICK)) 
					 && (screen->event.button.button < 4)) handled = true;
				}
				break;
			case SDL_MOUSEBUTTONUP:		// mouse button up event
				//if (this->id == 0xFF)
				//_error("Widget_vmevent", this, "release mouse_state=%X, but=%X\n", 
				//	this->mouse_state, SDL_BUTTON(screen->event.button.button));
				if ((this->mouse_state)&(but = SDL_BUTTON(screen->event.button.button))) {
					//_error("Widget_vmevent", this, "release but=%X\n", but);
					type = MOUSE_RELEASE;
				}
				break;
		}
		
		//if ((typeo(vthis) == TextBlock_t) && 
		//(screen->event.type == SDL_MOUSEBUTTONDOWN || screen->event.type == SDL_MOUSEBUTTONUP))
		//	_error("Widget_vmevent", this, "Mevent type is %s\n", MeventCallback_getMeventName(type));
		
		/** Continue with mevent when its type is other than MOUSE_NONE **/
		if (type != MOUSE_NONE) { 
			_error("Widget_vmevent", this, "type=%s, has_type=%s\n", MeventCallback_getMeventName(type),
				Bool_toString(MeventCallback_hasType(this->mhandle, type)));
			if (this->mhandle) {								// widget has mevent callback attached
				if (MeventCallback_hasType(this->mhandle, type)) {
					handled = true;								// mevent is handled now
																// call mevent callbacks (other than mouse click)
					MeventCallback_callAll(this->mhandle, type, this, screen);		
				}
				if ((type == MOUSE_RELEASE) && 
					(MeventCallback_hasType(this->mhandle, MOUSE_CLICK)) && 
					(contains) &&
					(but != MOUSE_WHELLDOWNMASK) &&
					(but != MOUSE_WHELLUPMASK)
					) {
					handled = true;												// call mouse click on release event
					//~ if ((Widget_fisCparamExist(this)) && (! widget->cparam)) {  // get cparam pointer if needed
						//~ Widget_fsetCparamExist(
								//~ this,
								//~ Screen_getCParam(	screen,
													//~ this->user_mevent[MOUSE_CLICK],
													//~ &(this->cparam)
												//~ )
							//~ );
					//~ }
					
					MeventCallback_callAll(this->mhandle, MOUSE_CLICK, this, screen);		// call click handlers
				}
			}
			
			_error("Widget_vmevent", this, "type=%s, screen->drag_on=%s, but=0x%02X, draggable=%s, this->parent=%s\n",
				MeventCallback_getMeventName(type), Bool_toString(screen->drag_on), but,
				Bool_toString(Widget_fisDraggable(this)), typename(this->parent));
				
			if (
					(type == MOUSE_PRESS) && 						// mouse was pressed ON WIDGET
					(screen->drag_on) &&							// dragging is enabled on current screen
					(but == MOUSE_LMASK) && 						// pressed AT LEAST left button
					(Widget_fisDraggable(this)) && 					// widget is draggable
					(typeo(this->parent) == Screen_t)				// widget is placed directly on screen (not in container)
					)					
			{ // drag widget
				perr e = Screen_setWidgetTop(screen, this);	
				bool dragged = false;			
				handled = true;
				if (! e) {
					set_to_top = true;					 // NOT DO IT AGAIN
					Screen_refresh(screen);				 // refresh/redraw screen
					dragged = Widget_drag(this, screen); // perform dragging
				}
				else {
					_error("Widget_vmevent", this, "Failed to Screen_setWidgetTop() of this widget [%s].\n", perr_getName(e));
				}
				if (dragged) 
				{ // dragged
					if (MeventCallback_hasType(this->mhandle, MOUSE_RELEASE)) { // release mevent
						MeventCallback_callAll(this->mhandle, MOUSE_RELEASE, this, screen);		
					}
				}
				else { // pressed/released in same point or Screen_setWidgetTop() failed
					if (MeventCallback_hasType(this->mhandle, MOUSE_RELEASE)) { // release mevent
						MeventCallback_callAll(this->mhandle, MOUSE_RELEASE, this, screen);		
					}
					if ((MeventCallback_hasType(this->mhandle, MOUSE_CLICK)) && 
						(but != MOUSE_WHELLDOWNMASK) &&
						(but != MOUSE_WHELLUPMASK)
						) 
					{ // click mevent (safe to remove)
						//~ if ((Widget_fisCparamExist(this)) && (! widget->cparam)) {  // get cparam pointer if needed
							//~ Widget_fsetCparamExist(
									//~ this,
									//~ Screen_getCParam(	screen,
														//~ this->user_mevent[MOUSE_CLICK],
														//~ &(this->cparam)
													//~ )
								//~ );
						//~ }
						
						MeventCallback_callAll(this->mhandle, MOUSE_CLICK, this, screen);		// call click handlers
					}
				}
				this->mouse_state &= ~MOUSE_LMASK; // mouse released by left button
			}
			else { // widget cannot be dragged
				if ((this->mouse_state) && (type == MOUSE_RELEASE)) {	// just now because click handler may use this->mouse_state 
												// to get to know about button clicked
					this->mouse_state &= ~but;	// unset exact bit of this->mouse_state
				}
			}
			
			
			if ((type == MOUSE_PRESS) && (screen->event.button.button < 4) && (! set_to_top)) {
				screen->mevent_switch  = true;
				screen->mevent_handled = true;
			}
			else {
				if (handled) screen->mevent_handled = handled;
			}
		}
	}
}

inline void Widget_mevent(Widget *this, Screen *screen) {
	if ((this) && (this->vmevent)) this->vmevent(this, screen);
}

inline void Widget_destroy(Widget *this) {
	//fprintf(stderr, "Widget_destroy[this=%p]: type: %s\n", this, typename(this));
	SDL_FreeSurface(this->surf);
	free(this->vparam);
	delete(this->mhandle);
	this->surf = NULL;
	this->vparam = NULL;
	this->mhandle = NULL;
	Widget_fsetNeedRefresh(this, false);
	Widget_fsetVisible(this, false);// set self visibility to false
	Widget_fsetInvalid(this, true);
	
	Object_destroy(OBJECT(this));
}

void Widget_draw(Widget *this) {
	if ((this->surf) && 
		(this->parent) && 
		(this->parent->surf) &&
		(Widget_fisVisible(this)) &&
		(! Widget_fisInvalid(this))
	) {
		if (this->srcrect) {
			fprintf(stderr, "Widget_draw[this=%p]: Before draw:\n\
\tneed_refresh = %s\n\
\tsrcrect=[x=%hu, y=%hu, w=%hu, h=%hu]\n\
\tdstrect=[x=%hu, y=%hu, w=%hu, h=%hu]\n",
	this, Bool_toString(Widget_fisNeedRefresh(this)), this->srcrect->x, this->srcrect->y, this->srcrect->w, this->srcrect->h,
	this->relmin.x, this->relmin.y, this->relmin.w, this->relmin.w, this->relmin.h);
		}
		SDL_BlitSurface(this->surf, this->srcrect, this->parent->surf, &(this->relmin));
		if (this->srcrect) {
			fprintf(stderr, "Widget_draw[this=%p]: After draw:\n\
\tneed_refresh = %s\n\
\tsrcrect=[x=%hu, y=%hu, w=%hu, h=%hu]\n\
\tdstrect=[x=%hu, y=%hu, w=%hu, h=%hu]\n",
	this, Bool_toString(Widget_fisNeedRefresh(this)), this->srcrect->x, this->srcrect->y, this->srcrect->w, this->srcrect->h,
	this->relmin.x, this->relmin.y, this->relmin.w, this->relmin.w, this->relmin.h);
		}
	}
}

perr Widget_addParameter(Widget* this, void *vparam, uint def_size) {
	if (this->vparam_size == this->vparam_count) {
		perr e;
		void **new_array = Static_growArray(	&e,							// error management
												this->vparam, 				// array to grow
												&(this->vparam_size),		// current size
												this->vparam_count,			// position of adding
												this->vparam_count,			// count to restore
												(def_size > this->vparam_count) ? def_size : 4, // default size
												(uint)0xFFFFFFFF,			// maximum size
												sizeof(void*),				// sizeof item
												GROW_MEMSET_ZERO);
		if (! new_array) {
			fprintf(stderr, "Widget_addParameter[this=%p]: Fatal error occured while creating/growing widget.vparam array. Method Static_growArray exited with error %s\n", this, perr_getName(e));
			return e;
		}
		else 
			this->vparam = new_array;
	}
	this->vparam[this->vparam_count++] = vparam;
	return E_NO_ERROR;
}

inline void Widget_setRefresh(Widget *this) {
	if (Widget_fisNeedRefresh(this)) return;
	while (this) {
		Widget_fsetNeedRefresh(this, true);
		this = this->parent; // stops on Screen which have .parent = NULL
	}
}

inline void Widget_setParentRefresh(Widget *this) {
	if (this->parent) Widget_setRefresh(this->parent);
}

// Get absolute (relative to screen) coordinates of most top-left
// point of widget. Widget can be embedded in any number of containers
// or can be placed directly on screen.
inline void Widget_getAbsMinPos(Widget *this, Point *p) {
	if (! p) return;
	p->x = p->y = 0;
	while (this) {
		p->x += this->relmin.x;
		p->y += this->relmin.y;
		this = this->parent;
	}
}

/** inline void Widget_drawTree(Widget *this);
 *  Reblit @param this widget on @param this->parent widget surface 
 *  then replace this := this->parent and do this until typeof(this)
 *  not equals Screen_t then do SDL_Flip(this->surf)
 * 
 * This method can be useful for widgets which need to manually listen
 * to SDL_Events e.g. drawing, dragging, mouse moving.
 * 
 * Note that this method does only simple rebliting of widgets surfaces.
 * Custom method pseudo-code example can look like: 
 * @code 
  		void press_handler(Widget *this_wt, Screen *screen) {
 			...
 			Point abs;
 			Widget_getAbsMinPos(this_wt, &abs); 	// get absolute position of this widget
 			...										// prepare
 			Screen_setWidgetTop(screen, this_wt);	// set widget on top (handle errors if needed)
 			Screen_refresh(screen); 				// redraw all widgets on screen
  			while (true) {
  				while (SDL_PollEvent(&(screen->event))) { 
					if (screen->event.type == SDL_MOUSEMOTION) { // mouse moved/dragged
						// do sth with screen->event.motion.x screen->event.motion.y
						// substract from them abs.x and abs.y to get coordinates relative
						// to self widget surface
						
						// draw on self surface, refresh it, but remember not to change 
						// surface size and relative position Widget.relmin, Widget.relmax
						// due to Widget_drawTree() only blits surfaces
						// and any change will result in intersecting pictures
						
						// to make changes visible:
						Widget_drawTree(this_wt);
					}
					else {
						if (screen->event.type == SDL_MOUSEBUTTONUP) {
							Widget_mouseRelease(this_wt); // reset this_wt->mouse_state
							...							  // end with activities
							return;
						}
					}
				}
			}
 * @endcode
 **/
inline void Widget_drawTree(Widget *this) {
	while (typeo(this) != Screen_t) {
		Widget_draw(this);
		this = this->parent;
	}
	if ((typeo(this) == Screen_t) && (this->surf)) SDL_Flip(this->surf);
}

//! Scale widget, creates new .surf, updates .pos.w, .pos.h, .maxx, .maxy
void Widget_scale(Widget *this, double xscale, double yscale) {
	if (Widget_fisNeedRefresh(this)) {
		Widget_refresh(this);
		if (Widget_fisInvalid(this)) return;
	}
	
	SDL_Surface *surf = zoomSurface(this->surf, xscale, yscale, 1);
	if (! surf) {
		fprintf(stderr, "Widget_scale[this=%p, xscale=%f, yscale=%f] failed, reason: %s\n", 
			this, xscale, yscale, SDL_GetError());
		return;
	}
	SDL_FreeSurface(this->surf);
	this->surf   = surf;
	Widget_updateSize(this, surf->w, surf->h);
	Widget_updateMaxXY(this);
	Widget_fsetSizePosChanged(this, true);
	Widget_setParentRefresh(this);
}

void Widget_scaleSize(Widget *this, usint new_w, usint new_h, uchar scale_size) {
	if (Widget_fisNeedRefresh(this)) {
		Widget_refresh(this);
		if (Widget_fisInvalid(this)) return;
	}
	if ((this->w == new_w) && (this->h == new_h)) return;
	
	double xs, ys;
	switch (scale_size) {
		case SCALE_SIZE_TO_WIDTH:
			xs = ys = (this->w) ? (double)new_w / (double)this->w : 1.0;
			break;
		case SCALE_SIZE_TO_HEIGHT:
			xs = ys = (this->h) ? (double)new_h / (double)this->h : 1.0;
			break;
		default:
			xs = (this->w) ? (double)new_w / (double)this->w : 1.0;
			ys = (this->h) ? (double)new_h / (double)this->h : 1.0;
			break;
	}
	
	SDL_Surface *surf = zoomSurface(this->surf, xs, ys, 1);
	if (! surf) {
		fprintf(stderr, "Widget_scaleSize[this=%p, new_w=%hu, new_h=%hu] failed, reason: %s\n", 
			this, new_w, new_h, SDL_GetError());
		return;
	}
	SDL_FreeSurface(this->surf);
	this->surf   = surf;
	Widget_updateSize(this, surf->w, surf->h);
	Widget_updateMaxXY(this);
	Widget_fsetSizePosChanged(this, true);
	Widget_setParentRefresh(this);
}

inline void Widget_setSize(Widget *this, usint w, usint h) {
	Widget_updateSize(this, w, h);
	Widget_setRefresh(this);
}

inline void Widget_setPosition(Widget *this, usint x, usint y) {
	_error("Widget_setPosition", this, "before: (x,y)=(%hu,%hu) (mx,my)=(%hu,%hu)\n", 
		this->relmin.x, this->relmin.y, this->relmax.x, this->relmax.y);
	Widget_updateMinXY(this, x, y);
	_error("Widget_setPosition", this, "after : (x,y)=(%hu,%hu) (mx,my)=(%hu,%hu)\n", 
		this->relmin.x, this->relmin.y, this->relmax.x, this->relmax.y);
	Widget_fsetSizePosChanged(this, true);
	Widget_setParentRefresh(this);
}

//! Gets center of widget (uses .relmin, .w, .h as reference)
void Widget_getCenter(Widget *this, usint *cx, usint *cy) {
	if ((this) && (cx) && (cy)) {
		*cx = this->relmin.x + (this->w >> 1);
		*cy = this->relmin.y + (this->h >> 1);
	}
}

//! Sets center of widget (updates .relmin.x, .relmin.y, .relmax.x, .relmax.y
void Widget_setCenter(Widget *this, usint cx, usint cy) {
	if (this) {
		usint h2 = this->h >> 1;
		usint w2 = this->w >> 1;
		this->relmin.y = (h2 < cy) ? (cy - h2) : 0;
		this->relmin.x = (w2 < cx) ? (cx - w2) : 0;
		Widget_updateMaxXY(this);
	}
}

inline void   Widget_updateMaxX(Widget *this) { this->relmax.x = this->relmin.x + this->w - 1; }
inline void   Widget_updateMaxY(Widget *this) { this->relmax.y = this->relmin.y + this->h - 1; }
inline void  Widget_updateMaxXY(Widget *this) { Widget_updateMaxX(this); Widget_updateMaxY(this); }
inline void   Widget_updateMinX(Widget *this, usint x) { this->relmin.x = this->relmax.x = x; this->relmax.x += this->w; this->relmax.x--; }
inline void   Widget_updateMinY(Widget *this, usint y) { this->relmin.y = this->relmax.y = y; this->relmax.y += this->h; this->relmax.y--; }
inline void  Widget_updateMinXY(Widget *this, usint x, usint y) { Widget_updateMinX(this, x); Widget_updateMinY(this, y); }
inline void  Widget_updateWidth(Widget *this, usint w) { this->w = w; }
inline void Widget_updateHeight(Widget *this, usint h) { this->h = h; }
inline void   Widget_updateSize(Widget *this, usint w, usint h) { this->w = w; this->h = h; }

void Widget_p() {
	fprintf(stderr, "Widget_vdestroy: %p\n", Widget_vdestroy);
}
