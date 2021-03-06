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

#include "Screen.h"
#include "Static.h"
#include "Memory.h"
#include "Widget.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = Widget_vdestroy,
	.toString = Widget_vtoString
};

/** Methods overriden from interface IWidget */
static const IWidget override_IWidget = {
	.mevent 	= Widget_vmevent,
	.draw 		= Widget_vdraw,
	.refresh	= Widget_vrefresh,
	.drag		= Widget_vdrag,
	.setVisible	= Widget_vsetVisible
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IWidget
};

static coClass type = {
	.size	= sizeof(Widget),
	.name	= "Widget",
	.vtable	= vtable
};
const coClass *Widget_class = &type;

perr Widget_addVParam(Widget* this, void *vparam, u32 def_size) {
	if (this->vparam_size == this->vparam_count) {
		perr e;
		void **new_array = Static_growArray(	&e,							// error management
												this->vparam, 				// array to grow
												&this->vparam_size,			// current size
												this->vparam_count,			// position of adding
												this->vparam_count,			// count to restore
												(def_size > this->vparam_count) ? def_size : 10, // default size
												(u32)0xFFFFFFFF,			// maximum size
												sizeof(void*));				// sizeof item
		if (! new_array) {
			fprintf(stderr, "Widget_addVParam: Fatal error occured while creating/growing widget.vparam array. Method Static_growArray exited with error %s\n", perr_getName(e));
			return e;
		}
		else 
			this->vparam = new_array;
	}
	this->vparam[this->vparam_count++] = vparam;
	return E_NO_ERROR;
}

void Widget_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif

	/*! Delete self stuff !*/
	SDL_FreeSurface(WIDGET(vthis)->surf);	// delete surface
	WIDGET(vthis)->surf = NULL;
	free(WIDGET(vthis)->vparam); 			// delete vparam array
	WIDGET(vthis)->vparam 		= NULL; 
	WIDGET(vthis)->vparam_size	= 0; 
	WIDGET(vthis)->vparam_count = 0;
	WIDGET(vthis)->visible 		= false;	// set self visibility to false
	
	/*! Delete parent object !*/
	coObject_vdestroy(vthis);
}

static inline void Widget_copy_common(Widget *this, const Widget *src) {
	this->draggable 			= src->draggable;
	this->dragging 				= false;
	this->mevent 				= src->mevent;
	this->need_reload 			= true;
	this->mouse_state 			= 0;
	this->mouse_over 			= false;
	this->mouse_move_listen 	= src->mouse_move_listen;
	this->click_handler 		= NULL;
	this->press_handler 		= NULL;
	this->release_handler 		= NULL;
	this->mouse_enter_handler 	= NULL;
	this->mouse_exit_handler	= NULL;
	this->mevent_internal.click 	  = NULL;
	this->mevent_internal.mouse_enter = NULL;
	this->mevent_internal.mouse_exit  = NULL;
	this->mevent_internal.press       = NULL;
	this->mevent_internal.release	  = NULL;
	this->parameter 			= src->parameter;
	this->void_parameter 		= src->void_parameter;
	this->vparam 				= NULL;			// don't copy vparam
	this->vparam_size 			= this->vparam_count = 0;
	this->cparam 				= NULL;	
	this->cparam_exist 			= true;
	this->id 					= 0;
	this->internal 				= src->internal;
	this->is_container			= src->is_container;
}

Widget* Widget_copy(Widget *this, const Widget *src, b8 copy_pos, b8 copy_surf) {
	coObject_copy(CO_OBJECT(this), CO_OBJECT(src));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	if (copy_surf) {
		this->visible = true;
		if (! (this->surf = Static_copySurface(src->surf))) {		// copy surface
			fprintf(stderr, "Widget_copy: Failed to copy surface SDL_ConvertSurface: %s\n", SDL_GetError());
			this->visible = false;
			return this;
		}
	}
	else {
		this->visible = false;
		this->surf = NULL;
	}
	
	if (copy_pos) { // whether copy minx miny maxx maxy point
		this->pos  = src->pos;
		this->maxx = src->maxx;
		this->maxy = src->maxy;
	}
	else {
		this->pos.w = src->pos.w;
		this->pos.h = src->pos.h;
	}
	
	// Copy fields or set default
	Widget_copy_common(this, src);
	return this;
}

// initialize only fields this is run when constructing 
// any object inheriting from Widget
static inline void Widget_std_init(Widget *this) {
	this->pos.x = this->pos.y = this->pos.h = this->pos.w = this->maxx = this->maxy = 0;
	this->draggable 			= false;
	this->dragging  			= false;
	this->surf  				= NULL;
	this->visible 				= false;
	this->mevent 				= false;
	this->mouse_move_listen 	= false;
	this->mouse_state 			= 0;
	this->need_reload 			= true;
	this->mouse_over 			= false;
	this->click_handler			= NULL;
	this->press_handler			= NULL;
	this->release_handler		= NULL;
	this->mouse_enter_handler 	= NULL;
	this->mouse_exit_handler	= NULL;
	this->mevent_internal.click 	  = NULL;
	this->mevent_internal.mouse_enter = NULL;
	this->mevent_internal.mouse_exit  = NULL;
	this->mevent_internal.press       = NULL;
	this->mevent_internal.release	  = NULL;
	this->parameter				= NULL;
	this->void_parameter		= NULL;
	this->cparam				= NULL;
	this->cparam_exist			= true;		// of course it does NOT yet exist, it'll be searched for 
											// first time click_event occur;
	this->vparam				= NULL;
	this->vparam_size			= 0;
	this->vparam_count			= 0;
	this->id 					= 0;
	this->internal				= false;
	this->is_container			= false;
	//fprintf(stderr, "Widget_std_init(): this=%p, this->cparam_exist=%d, this->cparam=%p\n", this, this->cparam_exist, this->cparam);
}

Widget* Widget_new(Widget *this) {
	coObject_new(CO_OBJECT(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	Widget_std_init(this);
	return this;
}

const char *Widget_vtoString(const void *vthis) {
	static char str_id[512];
	const Widget *this = WIDGET(vthis);
	snprintf(str_id, sizeof(str_id), "Widget[%p](%s): ID=%u, VIS=%s [x,y,mx,my,w,h]=[%hu,%hu,%hu,%hu,%hu,%hu]", 
		this, classof(this)->name, this->id, Bool_toString(this->visible), 
		this->pos.x, this->pos.y, this->maxx, this->maxy, this->pos.w, this->pos.h);
	return str_id;
}

const char *Widget_toString(const Widget* this) {
	return this ? Widget_vtoString(this) : "widget=NULL";
}

#define MOUSE_MOVE    1
#define MOUSE_DRAG    2
#define MOUSE_ENTER   3
#define MOUSE_EXIT    4
#define MOUSE_PRESS   5
#define MOUSE_CLICK   6
#define MOUSE_RELEASE 7

static void Widget_mousePressed(Widget *this, SDL_Event *event) {
	if (event->button.button == 1) { 	// left button
		if ((this->draggable) && (this->visible)) {
			this->dragging = true;	// start dragging
			this->stx = event->button.x;
			this->sty = event->button.y;
			fprintf(stderr, "\n----------------------\nStart drag: %s\n", Widget_toString(this));
		}
	}
}

static b8 Widget_mouseDragging(Widget *this, SDL_Event *event) {
	if (this->dragging) {
		const s16	dx = event->motion.x - this->stx;
		const s16	dy = event->motion.y - this->sty;
		
		if ((this->pos.x + dx < 0) || (this->pos.y + dy < 0)) return false;
		
		this->stx += dx;
		this->sty += dy;
		
		Widget_drag(this, dx, dy);
		
		return true;
	}
	return false;
}

static inline void Widget_mouseReleased(Widget *this, SDL_Event *event) {
	if (this->dragging) { 
		this->dragging = false; 
		fprintf(stderr, "End drag:   %s\n", Widget_toString(this));
	}
}

static void Widget_mouseEvent(Widget *this, Screen *screen, u8 _event_type) {
	/* process widget dragging */
	if ((screen->drag_on) && (this->draggable) && (_event_type == MOUSE_PRESS)) {
		b8 s = false;
		Widget_mousePressed(this, screen->pevent);
		while (this->dragging) {
			while (SDL_PollEvent(screen->pevent)) {
				s = Widget_mouseDragging(this, screen->pevent);
				if (screen->pevent->type == SDL_MOUSEBUTTONUP) {
					Screen_draw(screen);
					this->dragging = false; 
					fprintf(stderr, "End drag:   %s\n", Widget_toString(this));
					this->mouse_state = 0;
					if (this->click_handler) {
						screen->event_handled = true;
						this->click_handler(this, screen);	// execute user function
					}
					if (this->release_handler) {
						screen->event_handled = true;
						this->release_handler(this, screen);	// execute user function
					}
					return;
				}
			}
			if (s) {
				Screen_draw(screen);
			}
		}
	}
	
	if (! this->mevent) return;
	
	switch (_event_type) {
		case MOUSE_ENTER:   
			if (this->mevent_internal.mouse_enter) this->mevent_internal.mouse_enter(this, screen);
			break;
		case MOUSE_EXIT:   
			if (this->mevent_internal.mouse_exit) this->mevent_internal.mouse_exit(this, screen);
			break;
		case MOUSE_PRESS:   
			if (this->mevent_internal.press) this->mevent_internal.press(this, screen);
			break;
		case MOUSE_RELEASE:   
			if (this->mevent_internal.release) this->mevent_internal.release(this, screen);
			break;
		case MOUSE_CLICK:   
			if (this->mevent_internal.click) this->mevent_internal.click(this, screen);
			break;
		default: return;
	}
}

//! Scale widget, creates new .surf, updates .pos.w, .pos.h, .maxx, .maxy
void Widget_scale(Widget *this, double xscale, double yscale, int smooth) {
	SDL_Surface *surf = zoomSurface(this->surf, xscale, yscale, smooth);
	if (! surf) return;
	SDL_FreeSurface(this->surf);
	this->surf   = surf;
	this->pos.w  = surf->w;
	this->pos.h  = surf->h;
	Widget_updateMaxXY(this);
}

//! Returns true if given widget pointer contains u16 x,y absolute point (use .pos as reference)
inline b8 Widget_contains(const Widget *this, u16 x, u16 y) { 
	return Static_pointInside(x, y, this->pos.x, this->maxx, this->pos.y, this->maxy);
}

//! Updates .pos.x, .pos.y, .minx, .miny
void Widget_setPosition(Widget *this, u16 minx, u16 miny) {
	this->pos.x = minx;
	this->pos.y = miny;
	Widget_updateMaxXY(this);
}

//! Updates .pos.w and .pos.h
void Widget_setSize(Widget *this, u16 width, u16 height) {
	this->pos.w = width;
	this->pos.h = height;
}

//! Updates .pos.w, .pos.h, .maxx, .maxy
void Widget_setSizeUpdatePos(Widget *this, u16 width, u16 height) {
	this->pos.w = width;
	this->pos.h = height;
	Widget_updateMaxXY(this);
}

//! Updates .pos.x, .pos.y, .pos.w, .pos.h, .maxx, .maxy
void Widget_setRect(Widget *this, u16 minx, u16 miny, u16 width, u16 height) {
	this->pos.x = minx;
	this->pos.y = miny;
	this->pos.w = width;
	this->pos.h = height;
	Widget_updateMaxXY(this);
}

//! Gets center of widget (uses .pos as reference)
void Widget_getCenter(const Widget *this, u16 *cx, u16 *cy) {
	if ((this) && (cx) && (cy)) {
		*cx = this->pos.x + (this->pos.w >> 1);
		*cy = this->pos.y + (this->pos.h >> 1);
	}
}

//! Sets center of widget (updates .pos.x, .pos.y, .maxx, .maxy
void Widget_setCenter(Widget *this, u16 cx, u16 cy) {
	if (this) {
		this->pos.x = cx - (this->pos.w >> 1);
		this->pos.y = cy - (this->pos.h >> 1);
		Widget_updateMaxXY(this);
	}
}

inline void Widget_updateMaxXY(Widget *this) {
	this->maxx = this->pos.x + this->pos.w - 1;
	this->maxy = this->pos.y + this->pos.h - 1;
}

/** ### Default virtual methods implementations ### */

/// mouse event handler [ default virtual method implementation ]
void Widget_vmevent(void *vthis, Screen *screen) {
	Widget *this = WIDGET(vthis);
	//!static u32 ct;
	//!if (VERBOSE_EVENTS)
	//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEG GOT event(%s) THIS={%s}\n", this->id, ct, Screen_getEventName(screen->event.type), Widget_toString(this));
	if ((
			(! this->click_handler)&&
			(! this->press_handler)&&
			(! this->release_handler)&&
			(! this->mouse_enter_handler)&&
			(! this->mevent)&&
			(! this->draggable)&&
			(!PRINT_MOUSE_ENTERS))
			 
		|| 
			(! this->visible)) {
		//!if (VERBOSE_EVENTS)
		//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): RET on first condition[%d,%d,%d,%d] event(%s)\n", this->id, ct++, this->mevent, this->draggable, PRINT_MOUSE_ENTERS, this->visible, Screen_getEventName(screen->event.type));
		return;
	}
	
	switch (screen->event.type) {
		case SDL_MOUSEMOTION:
			//fprintf(stderr, "Widget_mevent: Start MOUSEMOTION\n");
			if ( ((this->draggable)||(this->mevent))  && (this->mouse_state)) { // dragging
				//fprintf(stderr, "Widget_mevent: Dragging\n");
				//!if (VERBOSE_EVENTS)
				//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse drag event, event(%s)\n", this->id, ct, Screen_getEventName(screen->event.type));
				Widget_mouseEvent(this, screen, MOUSE_DRAG);
			}
			else { // not dragging
				//fprintf(stderr, "Widget_mevent: this->mouse_move_listen=%d\n", this->mouse_move_listen);
				if (this->mouse_move_listen) Widget_mouseEvent(this, screen, MOUSE_MOVE);
				if (! this->mouse_over) { // mouse wasn't over widget
					if (Widget_contains(this, screen->event.motion.x, screen->event.motion.y)) {
						if (PRINT_MOUSE_ENTERS)
							fprintf(stderr, "M_ENTER: %s\n", Widget_toString(this));
						//!if (VERBOSE_EVENTS)
						//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse enter event, event(%s)\n", this->id, ct, Screen_getEventName(screen->event.type));	
							
						this->mouse_over = true;
						
						Widget_mouseEvent(this, screen, MOUSE_ENTER);
						if (this->mouse_enter_handler) {
							screen->event_handled = true;
							this->mouse_enter_handler(this, screen);
						}
					}
				}
				else { // mouse was over widget
					if (! Widget_contains(this, screen->event.motion.x, screen->event.motion.y)) {
						this->mouse_over = false;
						//fprintf(stderr, "Widget_mevent: [ID=%u] Exiting this=[(x,y)=(%3hu,%3hu) (x',y')=(%3hu,%3hu)]             event =[(x,y)=(%3hu,%3hu)]\n",
						//		this->id, (u16)this->pos.x, (u16)this->pos.y, (u16)this->maxx, (u16)this->maxy, (u16)screen->event.motion.x, (u16)screen->event.motion.y);
						//fprintf(stderr, "Widget_mevent: Exiting widget\n");
						//!if (VERBOSE_EVENTS)
						//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse exit event, event(%s)\n", this->id, ct, Screen_getEventName(screen->event.type));
						
						Widget_mouseEvent(this, screen, MOUSE_EXIT);
						if (this->mouse_exit_handler) {
							screen->event_handled = true;
							this->mouse_exit_handler(this, screen);
						}
					}
				}
			}
			//fprintf(stderr, "Widget_mevent: End MOUSEMOTION\n");
			break;
		case SDL_MOUSEBUTTONDOWN:
			//fprintf(stderr, "Widget_mevent: SDL_MOUSEBUTTONDOWN, event->button.button=%d, SDL_BUTTON(event->button.button)=%u\n", event->button.button, SDL_BUTTON(event->button.button));
			if (Widget_contains(this, screen->event.button.x, screen->event.button.y)) {
				this->mouse_state |= SDL_BUTTON(screen->event.button.button);
				//fprintf(stderr, "Widget_mevent: Mouse pressed\n");
				
				/*! Pass here PRESS event!*/
				//fprintf(stderr, "\t\tWidget_mevent[%s] this->press_handler=%p\n", Widget_toString(this), this->press_handler);
				if (this->press_handler) {
					screen->event_handled = true;
					this->press_handler(this, screen);	// execute user function
				}
				else
					if (this->click_handler) screen->event_handled = true;
					
				Widget_mouseEvent(this, screen, MOUSE_PRESS);
				/**/
				//!if (VERBOSE_EVENTS)
				//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse press event, event(%s)\n", this->id, ct, Screen_getEventName(screen->event.type));
			}
			break;
		case SDL_MOUSEBUTTONUP:
			//fprintf(stderr, "Widget_mevent: SDL_MOUSEBUTTONUP, event->button.button=%d, SDL_BUTTON(event->button.button)=%u\n", event->button.button, SDL_BUTTON(event->button.button));
			if (this->mouse_state) {
				if (Widget_contains(this, screen->event.button.x, screen->event.button.y) &&
					((this->mouse_state)&(SDL_BUTTON(screen->event.button.button)))) {
					//fprintf(stderr, "Widget_mevent: Mouse clicked this->cparam_exist=%d, this->cparam=%p, handler=%p\n", this->cparam_exist, this->cparam, this->click_handler);
					//fprintf(stderr, "                       this=%p, this->cparam_exist=%d, this->cparam=%p\n", this, this->cparam_exist, this->cparam);
					//!if (VERBOSE_EVENTS)
					
					Widget_mouseEvent(this, screen, MOUSE_CLICK);
					
					/*! Click event handle by user code !*/
					if (this->click_handler) {
						if ((this->cparam_exist) && (! this->cparam)) {
							//fprintf(stderr, "Widget_mevent: Widget[click=%p] %s check for CParam\n", this->click_handler, Widget_toString(this));
							this->cparam_exist = Screen_getCParam(screen, this->click_handler, &this->cparam);
							//fprintf(stderr, "\twidget->cparam_exist=%d, this->cparam=%p\n", this->cparam_exist, this->cparam);
						}
						//fprintf(stderr, "\t\tWidget_mevent[%s]: BEGIN mouse click event, event(%s)\n", Widget_toString(this), Screen_getEventName(screen->event.type));
						screen->event_handled = true;
						this->click_handler(this, screen);	// execute user function
					}
					else 
						if (this->press_handler) screen->event_handled = true;
					/**/
				}
				//fprintf(stderr, "Widget_mevent: Mouse release\n");
				//!if (VERBOSE_EVENTS)
				//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse release event, event(%s)\n", this->id, ct, Screen_getEventName(screen->event.type));
				Widget_mouseEvent(this, screen, MOUSE_RELEASE);
				this->mouse_state = 0;
				/*! Handle release user event here !*/
				//fprintf(stderr, "%p Mouse released on widget %s\n", this->release_handler, Widget_toString(this));
				if (this->release_handler) {
					screen->event_handled = true;
					this->release_handler(this, screen);	// execute user function
				}
				/**/
			}
			break;
	}
	//if (t) fprintf(stderr, "----------------\n");
	//!if (VERBOSE_EVENTS)
	//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): RET finish event(%s) response(%d,%d,%u,%u)\n", this->id, ct++, Screen_getEventName(screen->event.type), screen->has_exited, screen->toggle_dragon, screen->clicked_id, screen->pressed_id);
}

/// draw widget [ default virtual method implementation ]
void Widget_vdraw(void *vthis, Screen *screen, b8 flip) {
	if ((WIDGET(vthis)->visible)) {
		SDL_BlitSurface(WIDGET(vthis)->surf, NULL, screen->screen, &(WIDGET(vthis)->pos));
		WIDGET(vthis)->need_reload = false;
		if (flip) SDL_Flip(screen->screen);
	}
}

/// refresh widget [ default virtual method implementation ]
void Widget_vrefresh(void *vthis) {
	// does nothing
}

/// drag widget [ default virtual method implementation ]
void Widget_vdrag(void *vthis, s16 dx, s16 dy) {
	WIDGET(vthis)->pos.x 	+= dx; 
	WIDGET(vthis)->pos.y 	+= dy; 
	WIDGET(vthis)->maxx 	+= dx;
	WIDGET(vthis)->maxy 	+= dy;
}

/// change visibility [ default virtual method implementation ]
inline void Widget_vsetVisible(void *vthis, b8 vis) {
	WIDGET(vthis)->visible = vis;
}
