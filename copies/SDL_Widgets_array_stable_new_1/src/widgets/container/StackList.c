/*		[StackList - simple grid with one row or one column]
 *      StackList.c - this file is part of SDL_Widgets
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

#include "Widget.h"
#include "StdDefinitions.h"
#include "Screen.h"
#include "Static.h"
#include "Object.h"
#include "perr.h"
#include "Memory.h"
#include "StackList.h"
#include "StackListX.h"
#include "StackListY.h"
#include "Container.h"

static const char *type = "StackList";

const char* StackList_getLayoutName(layouttype layout) { 
	return (layout == HORIZONTAL)?"HORIZONTAL":"VERTICAL"; 
}

static char str_id[80];
const char *StackList_toString(StackList *stacklist) {
	if (! stacklist) return "stacklist=NULL";
	snprintf(str_id, 80, "StackList[this=%p]: layout=%s, count=%u, size=%u",
		stacklist, StackList_getLayoutName(stacklist->layout), stacklist->count, stacklist->size);
	return str_id;
}

const char *StackList_lastWidgetToString(StackList *stacklist) { return (stacklist->count == 0) ? "(null)" : Widget_toString(stacklist->items[stacklist->count-1].widget); }

static inline void StackList_destroy_common(StackList *this, const char *fname) {
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", (fname)?(fname):"StackList_destroy_common", Object_getType((Object*)this), this);
		
	/*! Delete self stuff (delete only array of children widgets, no widgets themself) !*/
	if (this->items) {
		free(this->items); this->items = NULL; 
		this->size = this->count = 0; 
	}
	
	/*! Delete parent object !*/
	Container_destroy((Container*)this);
}

/** StackList virtual destructor */
static void StackList_vdestroy(void *vthis) {
	StackList_destroy_common((StackList*)vthis, "StackList_vdestroy");
}

/** Current destructor (called by inherititng classes). Useful when class inheriting from StackList has nothing to destroy */
void StackList_destroy(StackList *this) {
	StackList_destroy_common(this, "StackList_destroy");
}

static inline void StackList_new_common(StackList *this, layouttype layout, uint size, const char *fname) {
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", 
			(fname)?(fname):"StackList_new_common", Object_getType((Object*)this), this);
	
	this->layout  = layout;
	
	/* Initialize fields */
	this->size 				= size;
	this->count 			= 0;
	if (size) 	this->items 	= calloc(size, sizeof(ContainerItem));
	else 		this->items 	= NULL;
}

// constructor
StackList* StackList_new(StackList *this, layouttype layout, uint size) {
	if (! this) {
		fprintf(stderr, "StackList_new: Passed NULL this pointer. layout=%s, size=%u\n", StackList_getLayoutName(layout), size);
		return NULL;
	}
	
	Container_init_type((Container*)this, CSTACKLIST_TYPE, StackList_vdestroy, type);	// initialize parent Container class
	StackList_new_common(this, layout, size, "StackList_new");
	this->type = SSTACKLIST_TYPE;
	return this;
}

// type constructor used by classes inheriting from StackList
//! @NOTE: StackList is not abstract class such as: Widget, Container etc.
//! @NOTE: vdestroy can be NULL therefore StackList_vdestroy is used
void StackList_init_type(	StackList 			*stacklist, 
							stacklisttype 		stacklist_type,
							layouttype 			layout, 
							uint 				size,
							void 				(*vdestroy) (void* vthis),
							const char			*type) {
	Container_init_type((Container*)stacklist, CSTACKLIST_TYPE, (vdestroy)?(vdestroy):StackList_vdestroy, type);
	StackList_new_common(stacklist, layout, size, "StackList_init_type");
	stacklist->type  = stacklist_type;
}

inline void StackList_dragItems(StackList *stacklist, signed short dx, signed short dy) {  
	Widget *item_wt=&(stacklist->container.widget); 
	item_wt->pos.x += dx; 
	item_wt->pos.y += dy; 
	item_wt->maxx  += dx; 
	item_wt->maxy  += dy;  
	uint i = 0; for (; i < stacklist->count; i++) {
		item_wt = stacklist->items[i].widget; 
		if (item_wt) {
			if (item_wt->type == CONTAINER_TYPE) Container_dragItems((Container*)item_wt, dx, dy); 
			else { item_wt->pos.x+=dx; item_wt->maxx+=dx; item_wt->pos.y+=dy; item_wt->maxy+=dy; } 
		}
	} 
}

void StackList_draw(StackList *stacklist, Screen *screen, bool flip) {
	//fprintf(stderr, "StackList_draw(): %s\n", StackList_toString(stacklist));
	SDL_Surface *sscreen = screen->screen;
	Widget *widget = &(stacklist->container.widget);
	if (widget->visible) {		// draw StackList background
		SDL_BlitSurface(widget->surf, NULL, sscreen, &(widget->pos));
		widget->need_reload = false;
	}
		
	uint i = 0; for (; i < stacklist->count; i++) {	// draw all of children
		widget = stacklist->items[i].widget;
		//fprintf(stderr, "Redrawing: %s\n", Widget_toString(widget));
		if (widget) {
			if (widget->visible) {
				if (widget->type == CONTAINER_TYPE) {
					Container_draw((Container*)widget, screen, flip);
				}
				else {
					SDL_BlitSurface(widget->surf, NULL, sscreen, &(widget->pos));
					widget->need_reload = false;
				}
			}
		}
	}
	if (flip) SDL_Flip(sscreen);
}

void StackList_mevent(StackList *stacklist, Screen *screen) {
	Widget *widget;
	uint i=0;
	
	//!static uint ct;
	//!if (VERBOSE_EVENTS)
	//!	fprintf(stderr, "\tStackList_mevent[ID=%u](%u): BEG GOT event(%s) THIS={%s}\n", stacklist->widget.id, ct, Screen_getEventName(screen->event.type), Widget_toString(&(stacklist->widget)));
	
	for (; i < stacklist->count; i++) {		// handle events for all children of this container
		widget = stacklist->items[i].widget;
		if (widget) {
			if (widget->type == CONTAINER_TYPE) {
				//!if (VERBOSE_EVENTS) fprintf(stderr, "\tStackList_mevent[ID=%u](%u): MOVE event(%s) to CHILD[%u/%u] as CONTAINER {%s}\n", stacklist->widget.id, ct, Screen_getEventName(screen->event.type), i, stacklist->count, Widget_toString(stacklist->items[i].widget));
				Container_mevent((Container*)widget, screen);
				//!if (VERBOSE_EVENTS) fprintf(stderr, "\tStackList_mevent[ID=%u](%u): MOVE FINISHED event(%s) from CHILD[%u/%u] as CONTAINER response(%d,%d,%u,%u)\n", stacklist->widget.id, ct, Screen_getEventName(screen->event.type), i, stacklist->count, screen->has_exited, screen->toggle_dragon, screen->clicked_id, screen->pressed_id);
			}
			else {
				//!if (VERBOSE_EVENTS) fprintf(stderr, "StackList_mevent[ID=%u](%u): MOVE event(%s) to CHILD[%u/%u] as WIDGET {%s}\n", stacklist->widget.id, ct, Screen_getEventName(screen->event.type), i, stacklist->count, Widget_toString(stacklist->items[i].widget));
				Widget_mevent(widget, screen);
				//!if (VERBOSE_EVENTS) fprintf(stderr, "StackList_mevent[ID=%u](%u): MOVE FINISHED event(%s) from CHILD[%u/%u] as WIDGET response(%d,%d,%u,%u)\n", stacklist->widget.id, ct, Screen_getEventName(screen->event.type), i, stacklist->count, screen->has_exited, screen->toggle_dragon, screen->clicked_id, screen->pressed_id);
			}
			
			if (screen->event_handled) {
				//!if (VERBOSE_EVENTS) fprintf(stderr, "\tStackList_mevent[ID=%u](%u): RET FINISH event(%s) in CHILD[%u/%u] response(%d,%d,%u,%u)\n", stacklist->widget.id, ct++, Screen_getEventName(screen->event.type), i, stacklist->count, screen->has_exited, screen->toggle_dragon, screen->clicked_id, screen->pressed_id);
				return;
			}
		}
	}
	
	widget = &(stacklist->container.widget);
	if ((widget->draggable) || (widget->mevent)) {	//handle events (mainly dragging for container itself)
		//!if (VERBOSE_EVENTS) fprintf(stderr, "\tStackList_mevent[ID=%u](%u): MOVE event(%s) to WIDGET(this)\n", stacklist->widget.id, ct, Screen_getEventName(screen->event.type));
		Widget_mevent(widget, screen);
		
		//if (screen->event_handled) {
		//	//!if (VERBOSE_EVENTS) fprintf(stderr, "\tStackList_mevent[ID=%u](%u) : RET FINISH event(%s) in WIDGET(this) reponse(%d,%d,%u,%u)\n", stacklist->widget.id, ct++, Screen_getEventName(screen->event.type), screen->has_exited, screen->toggle_dragon, screen->clicked_id, screen->pressed_id);
		//	return;
		//}
	}
	//!if (VERBOSE_EVENTS) 
		//!fprintf(stderr, "\tStackList_mevent[ID=%u](%u) : RET FINISH event(%s) WITH NO RESPONSE\n", stacklist->widget.id, ct++, Screen_getEventName(screen->event.type));
}

inline void StackList_setVisible(StackList *stacklist, bool vis) {
	stacklist->container.widget.visible = vis; 
	Widget *widget; 
	uint i=0; for (; i<stacklist->count; i++) { 
		widget = stacklist->items[i].widget; 
		if (widget) { 
			if (widget->type == CONTAINER_TYPE) Container_setVisible((Container*)widget, vis); 
			else widget->visible=vis; 
		} 
	} 
}

// Validates StackList on other axis than main of given StackList:
// for StackListX it validates on Y axis
// for StackListY on X axis
void StackList_refresh(StackList *stacklist) {
	if (stacklist->layout == VERTICAL)
		StackListY_refresh(stacklist);
	else
		StackListX_refresh(stacklist);
}

void StackList_validateAt(StackList *stacklist, uint index) {
	ContainerItem *item = &(stacklist->items[index]);
	uchar d;
	if (item->halign == ALIGN_CENTER) {	// if center calculate average of horizontal margineses
		item->margin_left 	+= item->margin_right;
		d 		 		     = item->margin_left & 1; 	// modulo 2
		item->margin_left 	>>= 1;
		item->margin_right 	=  item->margin_left;
		item->margin_right += d;
	}
	if (item->valign == ALIGN_CENTER) {	// if center calculate average of vertical margineses
		item->margin_top 		+= item->margin_bottom;
		d 			  			 = item->margin_top & 1; // modulo 2
		item->margin_top 		>>= 1;
		item->margin_bottom 	=  item->margin_top;
		item->margin_bottom 	+= d;
	}
	
	
	/* Calculate also width, height of cell rectangle */
	// *** 1 *** Cell properties w, h 
	// NOTE that for StackListY width is only minimal and can be changed later in StackList_refresh
	// analogous for StackListX height is only minimal
	item->cell_rect.w = item->widget->pos.w + item->margin_left + item->margin_right;
	item->cell_rect.h = item->widget->pos.h + item->margin_top  + item->margin_bottom;
	
	item->widget->draggable = false;	// for security (there is no such thing like dragging widget in a stack)
	
	if (stacklist->layout == VERTICAL)
		StackListY_validateAt(stacklist, index);
	else
		StackListX_validateAt(stacklist, index);
}

// Validates whole list on Y axis - StackListY or on X - StackListX (runs validateAt for each item)
inline void StackList_validate(StackList *stacklist) { 
	uint i = 0; for (; i < stacklist->count; i++) StackList_validateAt(stacklist, i); 
}

// Validates all items from given index (including it) on Y axis - StackListY or on X - StackListX
inline void StackList_validateFrom(StackList *stacklist, uint index) { 
	uint i = index; for (; i < stacklist->count; i++) StackList_validateAt(stacklist, i); 
}

/* Grow stacklist array or return current function with error */
#define StackList_growArray(SLI, FNAME)																																			\
{																																												\
	perr e;																																										\
	ContainerItem* new_array = Static_growArray(	&e,							/* error management		*/																		\
													(SLI)->items, 				/* array to grow		*/																		\
													&((SLI)->size),				/* current size			*/																		\
													(SLI)->count,				/* position of adding	*/																		\
													(SLI)->count,				/* count to restore		*/																		\
													(uint)10, 					/* default size			*/																		\
													(uint)0xFFFFFFFF,			/* maximum size			*/																		\
													sizeof(ContainerItem));		/* sizeof item			*/																		\
	if (! new_array) {																																							\
		fprintf(stderr, "%s: Fatal error occured while creating/growing stacklist.items array. Method Static_growArray exited with error %s\n", FNAME, perr_getName(e));		\
		return e;																																								\
	}																																											\
	else (SLI)->items = new_array;																																				\
}

// Append item to specific position, this index can be in range 0...count
// if added at last, count is automatically increased
// 
// given element is structure which just copies (can be changed later in source)
// another approach is to add widget manually filling:
// stacklist->items[index] and then run StackList_validateAt(stacklist, index)
// one another is to add only Widget*, fill its properties and validateAt
perr StackList_appendAt(StackList *stacklist, ContainerItem *container_item,
						 uint index) 
{
	if ((! stacklist) || (! container_item)) {
		fprintf(stderr, "StackList_appendAt: Passed NULL: stacklist(%p) or container_item(%p)\n", stacklist, container_item);
		return E_INTRO_FAILED;
	}
	if (index > stacklist->count) {	
		fprintf(stderr, "StackList_appendAt: index=%u out of range (count=%u)\n", index, stacklist->count);
		return E_INDEX_OUT_OF_RANGE;
	}
	if ((index == stacklist->count) && (stacklist->size == stacklist->count)) {	// append last
		StackList_growArray(stacklist, "StackList_appendAt");
	}
	
	stacklist->items[index] = *container_item;	// copy structure
	
	if (index == stacklist->count) stacklist->count++; 
	
	StackList_validateFrom(stacklist, index);
	
	return E_NO_ERROR;
}

// add item at last position
perr StackList_addLast(StackList *stacklist, ContainerItem *container_item) {
	if ((! stacklist) || (! container_item)) {
		fprintf(stderr, "StackList_addLast: Passed NULL: stacklist(%p) or container_item(%p)\n", stacklist, container_item);
		return E_INTRO_FAILED;
	}
	if (stacklist->size == stacklist->count) {
		StackList_growArray(stacklist, "StackList_addLast");
	}
	
	stacklist->items[stacklist->count] = *container_item;	// copy structure
	
	StackList_validateAt(stacklist, stacklist->count);
	
	stacklist->count++;
	return E_NO_ERROR;
}

// Add single widget to end of StackList, remember to run StackList_refresh 
// after adding a bunch of items
perr StackList_addWidgetLast(	StackList *stacklist, Widget *widget, 
								alignment halign, alignment valign,
								usint marg_top, usint marg_left, 
								usint marg_bot, usint marg_right)
{
	if ((! stacklist) || (! widget)) {
		fprintf(stderr, "StackList_addWidgetLast: Passed NULL: stacklist(%p) or widget(%p)\n", stacklist, widget);
		return E_INTRO_FAILED;
	}
	if (stacklist->size == stacklist->count) {
		StackList_growArray(stacklist, "StackList_addWidgetLast");
	}
	ContainerItem *item = &(stacklist->items[stacklist->count]);	// pointer to last item of array
	item->widget			= widget;
	item->margin_top		= marg_top;
	item->margin_left		= marg_left;
	item->margin_bottom		= marg_bot;
	item->margin_right		= marg_right;
	item->halign			= halign;
	item->valign			= valign;
	
	StackList_validateAt(stacklist, stacklist->count);
	
	//fprintf(stderr, "StackList_addWidgetLast: item[%u]: %s\n\n", stacklist->count, 
					//StackList_itemToString(&(stacklist->items[stacklist->count])));
	
	stacklist->count++;
	
	return E_NO_ERROR;
}

perr StackList_appendWidgetAt(	StackList *stacklist, Widget *widget, 
								uint index,
								alignment halign, alignment valign,
								usint marg_top, usint marg_left, 
								usint marg_bot, usint marg_right
							 )
{
	if ((! stacklist) || (! widget)) {
		fprintf(stderr, "StackList_appendWidgetAt: Passed NULL: stacklist(%p) or widget(%p)\n", stacklist, widget);
		return E_INTRO_FAILED;
	}
	
	if (index > stacklist->count) {	
		fprintf(stderr, "StackList_appendWidgetAt: index=%u out of range (count=%u)\n", index, stacklist->count);
		return E_INDEX_OUT_OF_RANGE;
	}
	if ((index == stacklist->count) && (stacklist->size == stacklist->count)) {	
		StackList_growArray(stacklist, "StackList_appendWidgetAt");
	}
	ContainerItem *item = &(stacklist->items[index]);	// pointer to last item of array
	item->widget			= widget;
	item->margin_top		= marg_top;
	item->margin_left		= marg_left;
	item->margin_bottom		= marg_bot;
	item->margin_right		= marg_right;
	item->halign			= halign;
	item->valign			= valign;
	
	if (index == stacklist->count) stacklist->count++;
	
	StackList_validateFrom(stacklist, index);
	
	return E_NO_ERROR;
}
