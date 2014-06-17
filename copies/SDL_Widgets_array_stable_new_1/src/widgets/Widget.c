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

#include "StdDefinitions.h"
#include "MemoryUsage.h"
#include "Screen.h"
#include "Static.h"
#include "Object.h"
#include "Memory.h"
#include "Histogram.h"
#include "HistStretchGraph.h"
#include "PixelDrawBox.h"
#include "WaveDrawBox.h"
#include "Widget.h"
#include "Image.h"
#include "Button.h"
#include "TextBlock.h"
#include "Label.h"
#include "LabelImage.h"
#include "ButtonImage.h"
#include "Rectangle.h"
#include "Container.h"

static usint stx, sty;
static signed short dx, dy;

perr Widget_addParameter(Widget* widget, void *vparam, uint def_size) {
	if (widget->vparam_size == widget->vparam_count) {
		perr e;
		void **new_array = Static_growArray(	&e,							// error management
												widget->vparam, 			// array to grow
												&(widget->vparam_size),		// current size
												widget->vparam_count,		// position of adding
												widget->vparam_count,		// count to restore
												(def_size > widget->vparam_count) ? def_size : 10, // default size
												(uint)0xFFFFFFFF,			// maximum size
												sizeof(void*));				// sizeof item
		if (! new_array) {
			fprintf(stderr, "Widget_addParameter: Fatal error occured while creating/growing widget.vparam array. Method Static_growArray exited with error %s\n", perr_getName(e));
			return e;
		}
		else 
			widget->vparam = new_array;
	}
	widget->vparam[widget->vparam_count++] = vparam;
	return E_NO_ERROR;
}

inline static void Widget_destroy_common(Widget *this, const char *fname) {
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", 
			(fname)?(fname):"Widget_destroy_common", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	SDL_FreeSurface(this->surf);	// delete surface
	this->surf = NULL;
	free(this->vparam); 			// delete vparam array
	this->vparam 		= NULL; 
	this->vparam_size	= 0; 
	this->vparam_count 	= 0;
	this->visible 		= false;	// set self visibility to false
	
	/*! Delete parent object !*/
	Object_destroy((Object*)this);
}

/** virtual destructor (useful when class inheriting from Widget has nothing to destroy) **/
static void Widget_vdestroy(void *vthis) { 
	Widget_destroy_common((Widget*)vthis, "Widget_vdestroy"); 
}

/** Current destructor (called by inheriting classes) **/
void Widget_destroy(Widget *this) {
	Widget_destroy_common(this, "Widget_destroy");
}

inline void Widget_copy_common(Widget *widget_dest, Widget *widget_src) {
	widget_dest->draggable = widget_src->draggable;
	widget_dest->dragging = false;
	widget_dest->mevent = widget_src->mevent;
	widget_dest->need_reload = true;
	widget_dest->mouse_state = 0;
	widget_dest->mouse_over = false;
	widget_dest->mouse_move_listen = widget_src->mouse_move_listen;
	widget_dest->click_handler = NULL;
	widget_dest->press_handler = NULL;
	widget_dest->release_handler = NULL;
	widget_dest->mouse_enter_handler = NULL;
	widget_dest->parameter = widget_src->parameter;
	widget_dest->void_parameter = widget_src->void_parameter;
	widget_dest->void_parameter2= widget_src->void_parameter2;
	widget_dest->vparam = NULL;			// don't copy vparam
	widget_dest->vparam_size = widget_dest->vparam_count = 0;
	widget_dest->cparam = NULL;	
	widget_dest->cparam_exist = true;
	widget_dest->id = 0;
	widget_dest->type = widget_src->type;
	widget_dest->internal = widget_src->internal;
}

// Run this after calling Widget_init_type in class inheriting from Widget
void Widget_copy(Widget *widget_dest, Widget *widget_src, bool copy_pos, bool copy_surf) {
	Object_copy((Object*)widget_dest, (Object*)widget_src);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Widget_copy", Object_getType((Object*)widget_dest), widget_dest);
	
	if (copy_surf) {
		widget_dest->visible = true;
		if (! (widget_dest->surf = Static_CopySurface(widget_src->surf))) {		// copy surface
			fprintf(stderr, "Widget_copy: Failed to copy surface SDL_ConvertSurface: %s\n", SDL_GetError());
			widget_dest->visible = false;
			return;
		}
	}
	else {
		widget_dest->visible = false;
		widget_dest->surf = NULL;
	}
	
	if (copy_pos) { // whether copy minx miny maxx maxy point
		widget_dest->pos  = widget_src->pos;
		widget_dest->maxx = widget_src->maxx;
		widget_dest->maxy = widget_src->maxy;
	}
	else {
		widget_dest->pos.w = widget_src->pos.w;
		widget_dest->pos.h = widget_src->pos.h;
	}
	
	// Copy fields or set default
	Widget_copy_common(widget_dest, widget_src);
}

// initialize only fields this is run when constructing 
// any object inheriting from Widget
inline void Widget_std_init(Widget *widget) {
	widget->pos.x = widget->pos.y = widget->pos.h = widget->pos.w = widget->maxx = widget->maxy = 0;
	widget->draggable 			= false;
	widget->dragging  			= false;
	widget->surf  				= NULL;
	widget->visible 			= false;
	widget->mevent 				= false;
	widget->mouse_move_listen 	= false;
	widget->mouse_state 		= 0;
	widget->need_reload 		= true;
	widget->mouse_over 			= false;
	widget->click_handler		= NULL;
	widget->press_handler		= NULL;
	widget->release_handler		= NULL;
	widget->mouse_enter_handler = NULL;
	widget->parameter			= NULL;
	widget->void_parameter		= NULL;
	widget->void_parameter2	    = NULL;
	widget->cparam				= NULL;
	widget->cparam_exist		= true;		// of course it does NOT yet exist, it'll be searched for 
											// first time click_event occur;
	widget->vparam				= NULL;
	widget->vparam_size			= 0;
	widget->vparam_count		= 0;
	widget->id = 0;
	widget->internal			= false;
	//fprintf(stderr, "Widget_std_init(): widget=%p, widget->cparam_exist=%d, widget->cparam=%p\n", widget, widget->cparam_exist, widget->cparam);
}

// Initialize Widget object with given type and child pointer
// It is run from constructors of classes inheriting from Widget
// allows to perform downcasting (for example from Widget to Image)
//! @NOTE: vdestroy can be NULL, therefore Widget_vdestroy is used as a virtual destructor
void Widget_init_type(Widget *widget, widgettype widget_type, void (*vdestroy) (void* vthis), const char *type) {
	/* Initialize parent Object class and virtual destructor */
	Object_init_type((Object*)widget, (vdestroy)?(vdestroy):Widget_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Widget_init_type", Object_getType((Object*)widget), widget);
	
	widget->type  = widget_type;
	Widget_std_init(widget);
}

static char str_id[512];
char *Widget_toString(Widget *widget) {
	if (! widget) return "widget=NULL";
	snprintf(str_id, 512, "Widget[%p](%s): ID=%u, VIS=%s [x,y,mx,my,w,h]=[%hu,%hu,%hu,%hu,%hu,%hu]", 
		widget, Object_getType((Object*)widget), widget->id, Bool_toString(widget->visible), 
		widget->pos.x, widget->pos.y, widget->maxx, widget->maxy, widget->pos.w, widget->pos.h);
	return str_id;
}

// Draw widget - one method for all classes inheriting from Widget
void Widget_draw(Widget *widget, Screen *screen, bool flip) {
	if ((widget->visible)) {
		/*
		if (widget->need_refresh) {
			switch (widget->type) {
				//case IMAGE_TYPE : break;
				case TEXTBLOCK_TYPE: 	TextBlock_refresh((TextBlock*)widget); break;
				case LABEL_TYPE: 		Label_refresh((Label*)widget); break;
				case BUTTON_TYPE: 		Button_refresh((Button*)widget); break;
				case LABELIMAGE_TYPE: 	LabelImage_refresh((LabelImage*)widget); break;
				case BUTTONIMAGE_TYPE:  ButtonImage_refresh((ButtonImage*)widget); break;
				case RECTANGLE_TYPE:	Rectangle_refresh((Rectangle*)widget); break;
				case HISTOGRAM_TYPE:	Histogram_refresh((Histogram*)widget); break;
				case CONTAINER_TYPE:	Container_refresh((Container*)widget); break;
				case HISTSTRETCHGRAPH_TYPE:	HistStretchGraph_refresh((HistStretchGraph*)widget); break;
			}
			widget->need_refresh = false;
		}*/
		
		SDL_BlitSurface(widget->surf, NULL, screen->screen, &(widget->pos));
		widget->need_reload = false;
		if (flip) SDL_Flip(screen->screen);
	}
}

#define MOUSE_MOVE    1
#define MOUSE_DRAG    2
#define MOUSE_ENTER   3
#define MOUSE_EXIT    4
#define MOUSE_PRESS   5
#define MOUSE_CLICK   6
#define MOUSE_RELEASE 7

void Widget_mousePressed(Widget *widget, SDL_Event *event) {
	if (event->button.button == 1) { 	// left button
		if ((widget->draggable) && (widget->visible)) {
			widget->dragging = true;	// start dragging
			stx = event->button.x;
			sty = event->button.y;
			fprintf(stderr, "\n----------------------\nStart drag: %s\n", Widget_toString(widget));
		}
	}
}

bool Widget_mouseDragging(Widget *widget, SDL_Event *event) {
	if (widget->dragging) {
		dx = event->motion.x - stx;
		dy = event->motion.y - sty;
		
		if ((widget->pos.x + dx < 0) || (widget->pos.y + dy < 0)) return false;
		
		stx += dx;
		sty += dy;
		
		if (widget->type == CONTAINER_TYPE) 
			Container_dragItems((Container*)widget, dx, dy);
		else {
			widget->pos.x 	+= dx; 
			widget->pos.y 	+= dy; 
			widget->maxx 	+= dx;
			widget->maxy 	+= dy;
		}
		
		return true;
	}
	else return false;
}

void Widget_mouseReleased(Widget *widget, SDL_Event *event) {
	if (widget->dragging) { 
		widget->dragging = false; 
		fprintf(stderr, "End drag:   %s\n", Widget_toString(widget));
	}
}

static bool s;
void mouseEvent(Widget *widget, Screen *screen, uchar _event_type) {
	/* process widget dragging */
	if ((screen->drag_on) && (widget->draggable) && (_event_type == MOUSE_PRESS)) {
		Widget_mousePressed(widget, screen->pevent);
		while (widget->dragging) {
			while (SDL_PollEvent(screen->pevent)) {
				s = Widget_mouseDragging(widget, screen->pevent);
				if (screen->pevent->type == SDL_MOUSEBUTTONUP) {
					Screen_draw(screen);
					widget->dragging = false; 
					fprintf(stderr, "End drag:   %s\n", Widget_toString(widget));
					widget->mouse_state ^= widget->mouse_state;
					if (widget->click_handler) {
						screen->event_handled = true;
						widget->click_handler(widget, screen);	// execute user function
					}
					if (widget->release_handler) {
						screen->event_handled = true;
						widget->release_handler(widget, screen);	// execute user function
					}
					return;
				}
			}
			if (s) {
				Screen_draw(screen);
			}
		}
	}
	
	if (! widget->mevent) return;
	
	switch (widget->type) {		// type of inheriting class is written in parent class field
		case BUTTON_TYPE:		// runs actions specified in widget classes
			switch (_event_type) {
				case MOUSE_CLICK:   Button_mouseClicked((Button*)widget, screen); break;
				case MOUSE_PRESS:	Button_mousePressed((Button*)widget, screen); break;
				case MOUSE_RELEASE:	Button_mouseReleased((Button*)widget, screen); break;
				case MOUSE_ENTER:	Button_mouseEnter((Button*)widget, screen); break;
				case MOUSE_EXIT:	Button_mouseExit((Button*)widget, screen); break;
				case MOUSE_MOVE:    Button_mouseMove((Button*)widget, screen); break;
				case MOUSE_DRAG:	Button_mouseDragging((Button*)widget, screen); break;
				default:			return;
			}
			break;
		case BUTTONIMAGE_TYPE:
			switch (_event_type) {
				case MOUSE_CLICK:   ButtonImage_mouseClicked((ButtonImage*)widget, screen); break;
				case MOUSE_PRESS:	ButtonImage_mousePressed((ButtonImage*)widget, screen); break;
				case MOUSE_RELEASE:	ButtonImage_mouseReleased((ButtonImage*)widget, screen); break;
				case MOUSE_ENTER:	ButtonImage_mouseEnter((ButtonImage*)widget, screen); break;
				case MOUSE_EXIT:	ButtonImage_mouseExit((ButtonImage*)widget, screen); break;
				case MOUSE_MOVE:    ButtonImage_mouseMove((ButtonImage*)widget, screen); break;
				case MOUSE_DRAG:	ButtonImage_mouseDragging((ButtonImage*)widget, screen); break;
				default:			return;
			}
			break;
		case WAVEDRAWBOX_TYPE:
			if (_event_type == MOUSE_PRESS) {
				WaveDrawBox_mousePressed(((WaveDrawBox*)widget), screen); 
			}
			else return;
			break;
		case HISTSTRETCHGRAPH_TYPE:
			if (_event_type == MOUSE_PRESS) {
				HistStretchGraph_mousePressed(((HistStretchGraph*)widget), screen); 
			}
			else return;
			break;
		default: return;
	}
}

void Widget_mevent(Widget *widget, Screen *screen) {
	//!static uint ct;
	//!if (VERBOSE_EVENTS)
	//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEG GOT event(%s) THIS={%s}\n", widget->id, ct, Screen_getEventName(screen->event.type), Widget_toString(widget));
	if ((
			(! widget->click_handler)&&
			(! widget->press_handler)&&
			(! widget->release_handler)&&
			(! widget->mouse_enter_handler)&&
			(! widget->mevent)&&
			(! widget->draggable)&&
			(!PRINT_MOUSE_ENTERS))
			 
		|| 
			(! widget->visible)) {
		//!if (VERBOSE_EVENTS)
		//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): RET on first condition[%d,%d,%d,%d] event(%s)\n", widget->id, ct++, widget->mevent, widget->draggable, PRINT_MOUSE_ENTERS, widget->visible, Screen_getEventName(screen->event.type));
		return;
	}
	
	switch (screen->event.type) {
		case SDL_MOUSEMOTION:
			//fprintf(stderr, "Widget_mevent: Start MOUSEMOTION\n");
			if ( ((widget->draggable)||(widget->mevent))  && (widget->mouse_state)) { // dragging
				//fprintf(stderr, "Widget_mevent: Dragging\n");
				//!if (VERBOSE_EVENTS)
				//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse drag event, event(%s)\n", widget->id, ct, Screen_getEventName(screen->event.type));
				mouseEvent(widget, screen, MOUSE_DRAG);
			}
			else { // not dragging
				//fprintf(stderr, "Widget_mevent: widget->mouse_move_listen=%d\n", widget->mouse_move_listen);
				if (widget->mouse_move_listen) mouseEvent(widget, screen, MOUSE_MOVE);
				if (! widget->mouse_over) { // mouse wasn't over widget
					if (Widget_contains(widget, screen->event.motion.x, screen->event.motion.y)) {
						if (PRINT_MOUSE_ENTERS)
							fprintf(stderr, "M_ENTER: %s\n", Widget_toString(widget));
						//!if (VERBOSE_EVENTS)
						//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse enter event, event(%s)\n", widget->id, ct, Screen_getEventName(screen->event.type));	
							
						widget->mouse_over = true;
						
						mouseEvent(widget, screen, MOUSE_ENTER);
						if (widget->mouse_enter_handler) {
							screen->event_handled = true;
							widget->mouse_enter_handler(widget, screen);
						}
					}
				}
				else { // mouse was over widget
					if (! Widget_contains(widget, screen->event.motion.x, screen->event.motion.y)) {
						widget->mouse_over = false;
						//fprintf(stderr, "Widget_mevent: [ID=%u] Exiting widget=[(x,y)=(%3hu,%3hu) (x',y')=(%3hu,%3hu)]             event =[(x,y)=(%3hu,%3hu)]\n",
						//		widget->id, (usint)widget->pos.x, (usint)widget->pos.y, (usint)widget->maxx, (usint)widget->maxy, (usint)screen->event.motion.x, (usint)screen->event.motion.y);
						//fprintf(stderr, "Widget_mevent: Exiting widget\n");
						//!if (VERBOSE_EVENTS)
						//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse exit event, event(%s)\n", widget->id, ct, Screen_getEventName(screen->event.type));
						
						mouseEvent(widget, screen, MOUSE_EXIT);
					}
				}
			}
			//fprintf(stderr, "Widget_mevent: End MOUSEMOTION\n");
			break;
		case SDL_MOUSEBUTTONDOWN:
			//fprintf(stderr, "Widget_mevent: SDL_MOUSEBUTTONDOWN, event->button.button=%d, SDL_BUTTON(event->button.button)=%u\n", event->button.button, SDL_BUTTON(event->button.button));
			if (Widget_contains(widget, screen->event.button.x, screen->event.button.y)) {
				widget->mouse_state |= SDL_BUTTON(screen->event.button.button);
				//fprintf(stderr, "Widget_mevent: Mouse pressed\n");
				
				/*! Pass here PRESS event!*/
				//fprintf(stderr, "\t\tWidget_mevent[%s] widget->press_handler=%p\n", Widget_toString(widget), widget->press_handler);
				if (widget->press_handler) {
					screen->event_handled = true;
					widget->press_handler(widget, screen);	// execute user function
				}
				else
					if (widget->click_handler) screen->event_handled = true;
					
				mouseEvent(widget, screen, MOUSE_PRESS);
				/**/
				//!if (VERBOSE_EVENTS)
				//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse press event, event(%s)\n", widget->id, ct, Screen_getEventName(screen->event.type));
			}
			break;
		case SDL_MOUSEBUTTONUP:
			//fprintf(stderr, "Widget_mevent: SDL_MOUSEBUTTONUP, event->button.button=%d, SDL_BUTTON(event->button.button)=%u\n", event->button.button, SDL_BUTTON(event->button.button));
			if (widget->mouse_state) {
				if (Widget_contains(widget, screen->event.button.x, screen->event.button.y) &&
					((widget->mouse_state)&(SDL_BUTTON(screen->event.button.button)))) {
					//fprintf(stderr, "Widget_mevent: Mouse clicked widget->cparam_exist=%d, widget->cparam=%p, handler=%p\n", widget->cparam_exist, widget->cparam, widget->click_handler);
					//fprintf(stderr, "                       widget=%p, widget->cparam_exist=%d, widget->cparam=%p\n", widget, widget->cparam_exist, widget->cparam);
					//!if (VERBOSE_EVENTS)
					
					mouseEvent(widget, screen, MOUSE_CLICK);
					
					/*! Click event handle by user code !*/
					if (widget->click_handler) {
						if ((widget->cparam_exist) && (! widget->cparam)) {
							//fprintf(stderr, "Widget_mevent: Widget[click=%p] %s check for CParam\n", widget->click_handler, Widget_toString(widget));
							widget->cparam_exist = Screen_getCParam(screen, widget->click_handler, &(widget->cparam));
							//fprintf(stderr, "\twidget->cparam_exist=%d, widget->cparam=%p\n", widget->cparam_exist, widget->cparam);
						}
						//fprintf(stderr, "\t\tWidget_mevent[%s]: BEGIN mouse click event, event(%s)\n", Widget_toString(widget), Screen_getEventName(screen->event.type));
						screen->event_handled = true;
						widget->click_handler(widget, screen);	// execute user function
					}
					else 
						if (widget->press_handler) screen->event_handled = true;
					/**/
				}
				//fprintf(stderr, "Widget_mevent: Mouse release\n");
				//!if (VERBOSE_EVENTS)
				//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): BEGIN mouse release event, event(%s)\n", widget->id, ct, Screen_getEventName(screen->event.type));
				mouseEvent(widget, screen, MOUSE_RELEASE);
				widget->mouse_state ^= widget->mouse_state;
				/*! Handle release user event here !*/
				//fprintf(stderr, "%p Mouse released on widget %s\n", widget->release_handler, Widget_toString(widget));
				if (widget->release_handler) {
					screen->event_handled = true;
					widget->release_handler(widget, screen);	// execute user function
				}
				/**/
			}
			break;
	}
	//if (t) fprintf(stderr, "----------------\n");
	//!if (VERBOSE_EVENTS)
	//!	fprintf(stderr, "\t\tWidget_mevent[ID=%u](%u): RET finish event(%s) response(%d,%d,%u,%u)\n", widget->id, ct++, Screen_getEventName(screen->event.type), screen->has_exited, screen->toggle_dragon, screen->clicked_id, screen->pressed_id);
}

//! Scale widget, creates new .surf, updates .pos.w, .pos.h, .maxx, .maxy
void Widget_scale(Widget *widget, double xscale, double yscale, int smooth) {
	SDL_Surface *surf = zoomSurface(widget->surf, xscale, yscale, smooth);
	if (! surf) return;
	SDL_FreeSurface(widget->surf);
	widget->surf   = surf;
	widget->pos.w *= xscale;
	widget->pos.h *= yscale;
	widget->maxx = widget->pos.x + widget->pos.w;
	widget->maxy = widget->pos.y + widget->pos.h;
}

//! Returns true if given widget pointer contains usint x,y absolute point (use .pos as reference)
inline bool Widget_contains(Widget *widget, usint x, usint y) { 
	return (widget) 
				? Static_PointInside(x, y, widget->pos.x, widget->maxx, widget->pos.y, widget->maxy)
				: false; 
}

//! Updates .pos.x, .pos.y, .minx, .miny
void Widget_setPosition(Widget *widget, usint minx, usint miny) {
	if (widget) {
		widget->pos.x = minx;
		widget->pos.y = miny;
		widget->maxx  = minx + widget->pos.w;
		widget->maxy  = miny + widget->pos.h;
	}
}

//! Updates .pos.w and .pos.h
void Widget_setSize(Widget *widget, usint width, usint height) {
	if (widget) {
		widget->pos.w = width;
		widget->pos.h = height;
	}
}

//! Updates .pos.w, .pos.h, .maxx, .maxy
void Widget_setSizeUpdatePos(Widget *widget, usint width, usint height) {
	if (widget) {
		widget->pos.w = width;
		widget->pos.h = height;
		widget->maxx  = widget->pos.x + width;
		widget->maxy  = widget->pos.y + height;
	}
}

//! Updates .pos.x, .pos.y, .pos.w, .pos.h, .maxx, .maxy
void Widget_setRect(Widget *widget, usint minx, usint miny, usint width, usint height) {
	if (widget) {
		widget->pos.x = minx;
		widget->pos.y = miny;
		widget->pos.w = width;
		widget->pos.h = height;
		widget->maxx  = minx + width;
		widget->maxy  = miny + height;
	}
}

//! Updates .visible or call Container_setVisible()
void Widget_setVisible(Widget *widget, bool vis) {
	if (widget) {
		if (widget->type == CONTAINER_TYPE)
			Container_setVisible((Container*)widget, vis);
		else
			widget->visible = vis;
	}
}

//! Gets center of widget (uses .pos as reference)
void Widget_getCenter(Widget *widget, usint *cx, usint *cy) {
	if ((widget) && (cx) && (cy)) {
		*cx = widget->pos.x + (widget->pos.w >> 1);
		*cy = widget->pos.y + (widget->pos.h >> 1);
	}
}

//! Sets center of widget (updates .pos.x, .pos.y, .maxx, .maxy
void Widget_setCenter(Widget *widget, usint cx, usint cy) {
	if (widget) {
		widget->pos.x = cx - (widget->pos.w >> 1);
		widget->pos.y = cy - (widget->pos.h >> 1);
		widget->maxx  = widget->pos.x + widget->pos.w;
		widget->maxy  = widget->pos.y + widget->pos.h;
	}
}

void Widget_printMemoryUsage() {
	//fprintf(stderr, "Widget_printMemoryUsage(): Memory used by widgets (not precisely): %Lu bytes\n", memory_used);
	fprintf(stderr, "Widget_printMemoryUsage(): Memory used by whole program:\n");
	fprintf(stderr, "Widget_printMemoryUsage(): 		current_size = %lu bytes\n", getCurrentRSS());
	fprintf(stderr, "Widget_printMemoryUsage(): 		peak_size    = %lu bytes\n", getPeakRSS());
}
