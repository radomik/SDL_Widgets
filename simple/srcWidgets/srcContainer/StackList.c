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

#include "../Widget.h"
#include "../../srcCommon/StdDefinitions.h"
#include "../../srcCommon/Screen.h"
#include "../../srcCommon/Static.h"
#include "../../srcCommon/Object.h"
#include "../../srcCommon/Memory.h"
#include "../../srcCommon/perr.h"
#include "StackList.h"

#define SLI_DBG 0

static void StackList_vprint(void *vthis);
static void StackList_vdestroy(void *vthis);

static Type type = {
	.size      = sizeof(StackList),
	.name      = "StackList",
	.super_get = Widget_gt,
	.vprint    = StackList_vprint,
	.vdestroy  = StackList_vdestroy
};
const Type *StackList_t = &type;
const Type *StackList_gt() { return StackList_t; }

struct CellInfo {
	usint		w;
	usint		h;
	usint 		max_base_coord;
};

struct StackListItem {
	Widget 				*widget;		// this is any widget pointer 
	struct CellInfo		cell;
	Spacing				margin;			// draw a rectangle of widget inside of cell rectangle
										// there are preserved margins between these rectangles inside
	alignment 			halign;			// these are alignments of inner rectangle relative to cell rectangle
	alignment 			valign;
};

static void StackList_vprint(void *vthis) {
	StackList *this = (StackList*)vthis;
	fprintf(stderr, "StackList[this=%p]:\n\
\t.items:                %p\n\
\t.size:                 %u\n\
\t.count:                %u\n\
\t.first_to_valid:       %u\n\
\t.bg_color:             0x%06X\n\
\t.layout:               %s\n\
\t.padding.top:          %hu\n\
\t.padding.left:         %hu\n\
\t.padding.bottom:       %hu\n\
\t.padding.right:        %hu\n\
\t.all_widgets_internal: %s\n",
	this, this->items, this->size, this->count, this->first_to_valid, this->bg_color,
	Layout_toString(this->layout), this->padding.top, this->padding.left, 
	this->padding.bottom, this->padding.right,
	Bool_toString(this->all_widgets_internal));
	Widget_print(WIDGET(this));
}

inline void StackList_print(StackList *this) { StackList_vprint(this); }

inline void StackList_destroy(StackList *this) {
	/*! Delete self stuff (delete only widget with .internal == true ought to be dynamic) !*/
	if (this->items) {
		StackListItem 	*c;
		uint 			i = 0;
		for (; i < this->count; i++) {
			c = &(this->items[i]);
			if ((c->widget) && (Widget_fisInternal(c->widget))) 
				delete(c->widget);
		}
		free(this->items);
		this->items = NULL;
		this->size = this->count = 0;
	}
	
	/*! Delete parent object !*/
	Widget_destroy(WIDGET(this));
}
static void StackList_vdestroy(void *vthis) { StackList_destroy((StackList*)vthis); }

static void StackList_vrefresh(void *vthis) {
	StackList 	*this 	 = (StackList*)vthis;
	Widget 		*this_wt = WIDGET(vthis);
	Widget		*wt;
	SDL_Surface	*surf = this_wt->surf;
	uint		i = 0;
	usint		w, h;
	
	/* if stacklist have no items */
	if (! this->count) {
		w = this->padding.left + this->padding.right;
		h = this->padding.top  + this->padding.bottom;
		if ((! surf) || (w != surf->w) || (h != surf->h)) {
			SDL_FreeSurface(surf);
			if (! (surf = Static_NewSurface(w, h))) {
				fprintf(stderr, "StackList_vrefresh[this=%p]: Failed to create stacklist surface [%s].\n",
					this, SDL_GetError());
				Widget_fsetInvalid(this_wt, true);
				return;
			}
			if (SDL_FillRect(surf, NULL, this->bg_color)) {
				fprintf(stderr, "StackList_vrefresh[this=%p]: Failed to fill surface with background color.\n", this);
			}
			this_wt->surf = surf;
		}
		Widget_updateSize(this_wt, w, h);
		return;
	}
	
	/* Loop over children to refresh them if needed */
	for (; i < this->count; i++) {
		wt = this->items[i].widget;
		if (Widget_fisNeedRefresh(wt)) { // check if widget needs refresh
			w = wt->w;					 // store previous widget size
			h = wt->h;					 // --//--
			if (SLI_DBG) fprintf(stderr, "# Widget[%s@%p] at index[%u] of previous size [w=%hu,h=%hu] need to be refreshed.\n",
				typename(wt), wt, i, w, h);
			Widget_refresh(wt);			 // refresh widget
			if (SLI_DBG) fprintf(stderr, "# After refresh: invalid=%s, new size [w=%hu,h=%hu] index[%u], first_to_valid=%u\n",
						Bool_toString(Widget_fisInvalid(wt)), wt->w, wt->h, i, this->first_to_valid);
			if ((! Widget_fisInvalid(wt)) && 			// if widget is valid after refresh
				((w != wt->w) || (h != wt->h)) &&		// and its size has changed
				(i < this->first_to_valid)				// and its index is before first to valid
				)
					this->first_to_valid = i;			// update first to valid index
		}
		else {
			if (Widget_fisSizePosChanged(wt)) {			// if widget changed its surface size and
				Widget_fsetSizePosChanged(wt, false);		// called Widget_setParentRefresh()
				if (i < this->first_to_valid)
					this->first_to_valid = i;
			}
		}
	}
	
	if (SLI_DBG) fprintf(stderr, "# Start validate on base axis, from first_to_valid=%u\n", this->first_to_valid);
	if (this->first_to_valid == UINF) {					// stacklist doesn't have to be validated
		if (! surf) {									// this situation cannot happen
			fprintf(stderr, "StackList_vrefresh[this=%p]: Error this_wt->surf is NULL while .first_to_valid=UINF\n", this);
			Widget_fsetInvalid(this_wt, true);
			return;
		}
		
		/* StackList have surface and it is of proper size 
		 * all of widgets have the same sizes (use previous stacklist surface) */
		for (i = 0; i < this->count; i++) {
			Widget_draw(this->items[i].widget);
		}
	}
	else {												// stacklist should be validated
		StackListItem	*item;
		usint			s, max_cell_opposite_size = 0; // VERTICAL: width, HORIZONTAL: height 
		usint 			last_cell_max_base_coord;
		uchar			d;
		/** Validate stacklist on base axis **/
		if (i = this->first_to_valid) { // validation starts from not first item
			last_cell_max_base_coord = this->items[i-1].cell.max_base_coord;
		}
		else { // validation starts from first item
			last_cell_max_base_coord = (this->layout == VERTICAL)
														? this->padding.top		// first child relative y position
														: this->padding.left;	// first child relative x position
		}
		if (SLI_DBG) fprintf(stderr, "# last_cell_max_base_coord=%hu\n", last_cell_max_base_coord);
		
		// note: i = first_to_valid on loop start
		for (; i < this->count; i++) {
			item = &(this->items[i]);				// get next item
			if (item->halign == ALIGN_CENTER) {		// deal with non-even margin sum values
				item->margin.left 	+= item->margin.right;
				d 		 		     = item->margin.left & 1; 	// modulo 2
				item->margin.left 	>>= 1;
				item->margin.right 	=  item->margin.left;
				item->margin.right += d;			// left is equal right, equal average of them
			}
			if (item->valign == ALIGN_CENTER) {	
				item->margin.top 		+= item->margin.bottom;
				d 			  			 = item->margin.top & 1; // modulo 2
				item->margin.top 		>>= 1;
				item->margin.bottom 	=  item->margin.top;
				item->margin.bottom 	+= d;		// top is equal bottom, equal average of them
			}
			
			/* Calculate cell rectangle size */
			item->cell.w = item->widget->w + item->margin.left + item->margin.right;
			item->cell.h = item->widget->h + item->margin.top  + item->margin.bottom;
			if (SLI_DBG) fprintf(stderr, "# Calculated: i=%u, cell.w=%hu, cell.h=%hu, margin=[%hu,%hu,%hu,%hu]\n",
				i, item->cell.w, item->cell.h, item->margin.top, item->margin.left, item->margin.bottom, item->margin.right);
			
			if (this->layout == VERTICAL) 
			{	/* StackList is VERTICAL */
				item->widget->relmin.y = last_cell_max_base_coord 
					+ item->margin.top;	// update child relative y position
				
				last_cell_max_base_coord += item->cell.h;			// for next child
				
				Widget_updateMaxY(item->widget);					// update max.y relative position
				
				item->cell.max_base_coord = last_cell_max_base_coord;
				
				if (SLI_DBG) fprintf(stderr, "VERTICAL: widget->relmin.y=%hu, widget->relmax.y=%hu, cell.max_base_coord=%hu\n\n", 
					item->widget->relmin.y, item->widget->relmax.y, last_cell_max_base_coord);
			}
			else 
			{	/* StackList is HORIZONTAL */
				item->widget->relmin.x = last_cell_max_base_coord
					+ item->margin.left;	// update child relative x position
				
				last_cell_max_base_coord += item->cell.w;			// for next child
				
				Widget_updateMaxX(item->widget);					// update max.x relative position
				
				item->cell.max_base_coord = last_cell_max_base_coord;
				
				if (SLI_DBG) fprintf(stderr, "HORIZONTAL: widget->relmin.x=%hu, widget->relmax.x=%hu, cell.max_base_coord=%hu\n\n", 
					item->widget->relmin.x, item->widget->relmax.x, last_cell_max_base_coord);
			}
		}
		this->first_to_valid = UINF;					// reset first to valid index
		if (SLI_DBG) fprintf(stderr, "# After validate on base axis last_cell_max_base_coord=%hu\n", last_cell_max_base_coord);
		/** End validation on base axis **/
		
		/** Find max_cell_opposite_size **/
		if (this->layout == VERTICAL) {
			for (i = 0; i < this->count; i++) {
				if (this->items[i].cell.w > max_cell_opposite_size) 		// store max cell width
					max_cell_opposite_size = this->items[i].cell.w;
			}
		}
		else {
			for (i = 0; i < this->count; i++) {
				if (this->items[i].cell.h > max_cell_opposite_size) 		// store max cell height
					max_cell_opposite_size = this->items[i].cell.h;
			}
		}
		/**/
		
		/** Determine size of stacklist and create surface **/
		if (this->layout == VERTICAL)  {
			w = max_cell_opposite_size   + this->padding.left + this->padding.right;
			h = last_cell_max_base_coord + this->padding.bottom;
		}
		else {
			w = last_cell_max_base_coord + this->padding.right;
			h = max_cell_opposite_size   + this->padding.top + this->padding.bottom;
		}
		if (SLI_DBG) fprintf(stderr, "# Creating surface of size [w=%hu, h=%hu]\n", w, h);
		if ((! surf) || (w != surf->w) || (h != surf->h)) {
			SDL_FreeSurface(surf);
			if (! (surf = Static_NewSurface(w, h))) {
				fprintf(stderr, "StackList_vrefresh[this=%p]: Failed to create stacklist surface [%s].\n", 
					this, SDL_GetError());
				Widget_fsetInvalid(this_wt, true);
				return;
			}
			if (SDL_FillRect(surf, NULL, this->bg_color)) {
				fprintf(stderr, "StackList_vrefresh[this=%p]: Failed to fill surface with background color.\n", this);
			}
			this_wt->surf 	= surf;
		}
		Widget_updateSize(this_wt, w, h);
		if (SLI_DBG) _error("StackList_vrefresh", this, "New stacklist size: w=%hu, h=%hu\n", this_wt->w, this_wt->h);
		/** End surface creation **/
		
		/** Validate stacklist on opposite axis **/
		if (SLI_DBG) fprintf(stderr, "# Start validate on opposite axis, max_cell_opposite_size=%hu\n", max_cell_opposite_size);
		if (this->layout == VERTICAL) {
			for (i = 0; i < this->count; i++) {
				item = &(this->items[i]);
				
				// Set relative minx coordinate
				if (item->cell.w == max_cell_opposite_size) { // the widest items
					if (SLI_DBG) fprintf(stderr, "# item[%u] Widget have cell.w = max_cell_opposite_size=%hu\n", i, max_cell_opposite_size);
					item->widget->relmin.x = this->padding.left + item->margin.left;
				}
				else { // width < maxw 
					if (item->halign == ALIGN_LEFT) {
						if (SLI_DBG) fprintf(stderr, "item[%u] ALIGN_LEFT: padding.left=%hu, margin_left=%hu\n", i, this->padding.left, item->margin.left);
						item->widget->relmin.x = this->padding.left + item->margin.left;
					}
					else {
						if (item->halign == ALIGN_RIGHT) {
							if (SLI_DBG) fprintf(stderr, "item[%u] ALIGN_RIGHT: w=%hu, padding.right=%hu, margin_right=%hu, widget->w=%hu\n", 
								i, w, this->padding.right, item->margin.right, item->widget->w);
							item->widget->relmin.x = w - this->padding.right - item->margin.right - item->widget->w;
						}
						else { // hcenter
							if (SLI_DBG) fprintf(stderr, "item[%u] ALIGN_CENTER: w=%hu, cell.w=%hu\n", 
								i, w, item->cell.w);
							item->widget->relmin.x = (w - item->cell.w) >> 1;
						}
					}
				}
				
				// Update relative maxx coordinate
				Widget_updateMaxX(item->widget);
				if (SLI_DBG) fprintf(stderr, "item[%u] Final position and size: (x,y)=(%hu,%hu), (mx,my)=(%hu,%hu), (w,h)=(%hu,%hu)\n", 
					i, item->widget->relmin.x, item->widget->relmin.y, item->widget->relmax.x, item->widget->relmax.y, 
					item->widget->w, item->widget->w);
					
				// blit widget onto stacklist surface
				Widget_draw(item->widget);
			}
		}
		else {
			for (i = 0; i < this->count; i++) {
				item = &(this->items[i]);
				
				// Set relative miny coordinate
				if (item->cell.h == max_cell_opposite_size) { // the widest items
					if (SLI_DBG) fprintf(stderr, "# item[%u] Widget have cell.h = max_cell_opposite_size=%hu\n", i, max_cell_opposite_size);
					item->widget->relmin.y = this->padding.top + item->margin.top;
				}
				else { // height < maxh
					if (item->valign == ALIGN_TOP) {
						if (SLI_DBG) fprintf(stderr, "item[%u] ALIGN_TOP: padding.top=%hu, margin_top=%hu\n", i, this->padding.top, item->margin.top);
						item->widget->relmin.y = this->padding.top + item->margin.top;
					}
					else {
						if (item->halign == ALIGN_BOTTOM) {
							if (SLI_DBG) fprintf(stderr, "item[%u] ALIGN_BOTTOM: h=%hu, padding.bottom=%hu, margin_bottom=%hu, widget->h=%hu\n", 
								i, h, this->padding.bottom, item->margin.bottom, item->widget->h);
							item->widget->relmin.y = h - this->padding.bottom - item->margin.bottom - item->widget->h;
						}
						else { // vcenter
							if (SLI_DBG) fprintf(stderr, "item[%u] ALIGN_CENTER: h=%hu, cell.h=%hu\n", 
								i, h, item->cell.h);
							item->widget->relmin.y = (h - item->cell.h) >> 1;
						}
					}
				}
				
				// Update relative maxy coordinate
				Widget_updateMaxY(item->widget);
				
				if (SLI_DBG) fprintf(stderr, "item[%u] Final position and size: (x,y)=(%hu,%hu), (mx,my)=(%hu,%hu), (w,h)=(%hu,%hu)\n", 
					i, item->widget->relmin.x, item->widget->relmin.y, item->widget->relmax.x, item->widget->relmax.y, 
					item->widget->w, item->widget->w);
					
				// blit widget onto stacklist surface
				Widget_draw(item->widget);
			}
		}
		/** End validation stacklist on opposite axis **/
	}
}

static void StackList_vmevent(void *vthis, Screen *screen) {
	StackList	*this    = (StackList*)vthis;
	
	if (this->count) 
	{ /** have items, pass mevent to every child **/
		uint i = 0;
		
		// transform mevent coordinates for children
		screen->mevent.x -= (WIDGET(this))->relmin.x;
		screen->mevent.y -= (WIDGET(this))->relmin.y;
		
		// pass mevent to all of children
		for (; i < this->count; i++) {
			Widget_mevent(this->items[i].widget, screen);		// pass mevent
			if (screen->mevent_handled) {						// if child handled mevent
				screen->mevent.x += (WIDGET(this))->relmin.x;	// restore previous coordinates
				screen->mevent.y += (WIDGET(this))->relmin.y;
				return;											// end method
			}
		}
		screen->mevent.x += (WIDGET(this))->relmin.x;	// restore previous coordinates
		screen->mevent.y += (WIDGET(this))->relmin.y;	// before passing mevent to self widget
		//if (screen->event.type != SDL_MOUSEMOTION)
		//	_error("StackList_vmevent", this, "handled=%s\n", Bool_toString(screen->mevent_handled));
	}
	
	if (! screen->mevent_handled) { // children not handled mevent (pass mevent to self widget)
		Widget_vmevent(this, screen);
	}
}

StackList *StackList_new(layouttype layout, uint size, bool all_widgets_internal) {
	/** Create this pointer **/
	StackList *this = new(&type);
	if (! this) { _error("StackList_new", this, "new() failed. @param layout[%s], size[%u], all_widgets_internal[%s]", 
		Layout_toString(layout), size, Bool_toString(all_widgets_internal)); return this; }
	
	/** Do common initialization of direct super class and of current class object **/
	StackList_new2(this, layout, size, all_widgets_internal);
	
	/** Return newly created this pointer **/
	return this;
}

inline void StackList_new2(StackList *this, layouttype layout, uint size, bool all_widgets_internal) {
	Widget_new2(WIDGET(this));
	
	/* Initialize fields */
	Widget_fsetContainer(this, true);
	(WIDGET(this))->vrefresh = StackList_vrefresh;
	(WIDGET(this))->vmevent  = StackList_vmevent;
	this->layout  			  = layout;
	this->size 				  = size;
	this->all_widgets_internal= all_widgets_internal;
	this->first_to_valid	  = UINF;
	this->bg_color			  = W_DEFAULT_BGCOLOR;
	if (size) 	this->items 	= calloc(size, sizeof(StackListItem));
}

/* Grow stacklist array or return current function with error */
static const char *_StackList_growArray = 
	"%s: Fatal error occured while creating/growing stacklist.items array. Method Static_growArray exited with error %s\n";
#define StackList_growArray(SLI, FNAME)																	\
{																										\
	perr e;																								\
	StackListItem* new_array = Static_growArray(	&e,						/* error management		*/	\
													(SLI)->items, 			/* array to grow		*/	\
													&((SLI)->size),			/* current size			*/	\
													(SLI)->count,			/* position of adding	*/	\
													(SLI)->count,			/* count to restore		*/	\
													(uint)10, 				/* default size			*/	\
													(uint)0xFFFFFFFF,		/* maximum size			*/	\
													sizeof(StackListItem),	/* sizeof item			*/	\
													GROW_MEMSET_ZERO);									\
	if (! new_array) {																					\
		fprintf(stderr, _StackList_growArray, FNAME, perr_getName(e));									\
		return e;																						\
	}																									\
	else (SLI)->items = new_array;																		\
}

// Add single widget to end of StackList
perr StackList_addWidgetLast(	StackList *this, Widget *widget, 
								alignment halign, alignment valign,
								usint marg_top, usint marg_left, 
								usint marg_bot, usint marg_right)
{
	if ((! this) || (! widget)) {
		fprintf(stderr, "StackList_addWidgetLast: Passed NULL: this(%p) or widget(%p)\n", this, widget);
		return E_INTRO_FAILED;
	}
	uint index = this->count;
	if (this->size == this->count) {
		StackList_growArray(this, "StackList_addWidgetLast");
	}
	StackListItem *item = &(this->items[index]);	// pointer to last item of array
	item->widget			= widget;
	item->margin.top		= marg_top;
	item->margin.left		= marg_left;
	item->margin.bottom		= marg_bot;
	item->margin.right		= marg_right;
	item->halign			= halign;
	item->valign			= valign;
	widget->parent		    = WIDGET(this);
	
	if (this->all_widgets_internal) Widget_fsetInternal(widget, true);
	
	if (SLI_DBG) fprintf(stderr, "StackList_addWidgetLast[this=%p]: Added new widget of type %s, this->first_to_valid=%u, widget->need_refresh=%s\n", 
		this, typename(widget), this->first_to_valid, Bool_toString(Widget_fisNeedRefresh(widget)));
	if (Widget_fisNeedRefresh(widget)) Widget_refresh(widget);
	
	if (index < this->first_to_valid) this->first_to_valid = index;
	//this->first_to_valid = 0;
	
	Widget_setRefresh(WIDGET(this));
	
	if (SLI_DBG) fprintf(stderr, "StackList_addWidgetLast[this=%p]: After refresh: [(x,y)=(%hu,%hu), (mx,my)=(%hu,%hu), (w,h)=(%hu,%hu)] this->first_to_valid=%u\n",
	 this, widget->relmin.x, widget->relmin.y, widget->relmax.x, widget->relmax.y, widget->w, widget->h, this->first_to_valid);
	
	this->count++;
	
	return E_NO_ERROR;
}

// Add single widget to top of StackList
perr StackList_addWidgetFirst(	StackList *this, Widget *widget, 
								alignment halign, alignment valign,
								usint marg_top, usint marg_left, 
								usint marg_bot, usint marg_right)
{
	if ((! this) || (! widget)) {
		fprintf(stderr, "StackList_addWidgetFirst: Passed NULL: this(%p) or widget(%p)\n", this, widget);
		return E_INTRO_FAILED;
	}
	if (! this->count) {
		return StackList_addWidgetLast(this, widget, halign, valign, marg_top, marg_left, marg_bot, marg_right);
	}
	else {
		//~ fprintf(stderr, "StackList_addWidgetFirst[this=%p]: Before count: %u, size: %u, this->items: %p\n", 
			//~ this, this->count, this->size, this->items);
		
		if (this->size == this->count) this->size++;
		StackListItem *temp_array = calloc(this->size, sizeof(StackListItem));
		//~ fprintf(stderr, "StackList_addWidgetFirst[this=%p]: New array temp_array=%p, temp_array+1=%p, of size=%u, count to copy: %u, size to copy: %lu\n", 
			//~ this, temp_array, temp_array+1, this->size, this->count, (this->count) * sizeof(StackListItem));
		memcpy(temp_array+1, this->items, (this->count) * sizeof(StackListItem));
		free(this->items);
		this->items = temp_array;
		this->count++;
		
		StackListItem *item = &(this->items[0]);	// pointer to first item of array
		item->widget			= widget;
		item->margin.top		= marg_top;
		item->margin.left		= marg_left;
		item->margin.bottom		= marg_bot;
		item->margin.right		= marg_right;
		item->halign			= halign;
		item->valign			= valign;
		widget->parent		    = WIDGET(this);
		if (this->all_widgets_internal) Widget_fsetInternal(widget, true);
		
		//if (SLI_DBG) fprintf(stderr, "StackList_addWidgetFirst[this=%p]: Added new widget of type %s, this->first_to_valid=%u, widget->need_refresh=%s\n", 
		//	this, typename(widget), this->first_to_valid, Bool_toString(Widget_fisNeedRefresh(widget)));
		
		if (Widget_fisNeedRefresh(widget)) Widget_refresh(widget);
		
		this->first_to_valid = 0;
		
		Widget_setRefresh(WIDGET(this));
		
		//if (SLI_DBG) fprintf(stderr, "StackList_addWidgetFirst[this=%p]: After refresh: [(x,y)=(%hu,%hu), (mx,my)=(%hu,%hu), (w,h)=(%hu,%hu)] this->first_to_valid=%u\n",
		// this, widget->relmin.x, widget->relmin.y, widget->relmax.x, widget->relmax.y, widget->w, widget->h, this->first_to_valid);
		
		return E_NO_ERROR;
	}
}

perr StackList_appendWidgetAt(	StackList *this, Widget *widget, 
								uint index,
								alignment halign, alignment valign,
								usint marg_top, usint marg_left, 
								usint marg_bot, usint marg_right
							 )
{
	if ((! this) || (! widget)) {
		fprintf(stderr, "StackList_appendWidgetAt: Passed NULL: this(%p) or widget(%p)\n", this, widget);
		return E_INTRO_FAILED;
	}
	
	if (index > this->count) {	
		fprintf(stderr, "StackList_appendWidgetAt: index=%u out of range (count=%u)\n", index, this->count);
		return E_INDEX_OUT_OF_RANGE;
	}
	if ((index == this->count) && (this->size == this->count)) {	
		StackList_growArray(this, "StackList_appendWidgetAt");
	}
	StackListItem *item = &(this->items[index]);		// pointer to item of appending
	
	item->widget			= widget;
	item->margin.top		= marg_top;
	item->margin.left		= marg_left;
	item->margin.bottom		= marg_bot;
	item->margin.right		= marg_right;
	item->halign			= halign;
	item->valign			= valign;
	widget->parent 			= WIDGET(this);
	
	if (this->all_widgets_internal) Widget_fsetInternal(widget, true);
	
	if (Widget_fisNeedRefresh(widget)) Widget_refresh(widget);
	
	if (index < this->first_to_valid) this->first_to_valid = index;
	
	if (index == this->count) this->count++;
	
	Widget_setRefresh(WIDGET(this));
	
	return E_NO_ERROR;
}

Widget* StackList_removeWidget(StackList *this, uint index) {
	if (index >= this->count) return NULL;
	
	this->count--;
	
	Widget *deleted_widget = this->items[index].widget;
	
	if (index == this->count) {		// widget removed from last index
		if (! this->count)			// now array is empty (no widgets in stacklist)
			this->first_to_valid = UINF;	// on refresh create empty rectangle of stacklist
	}
	else { // (index < this->count) ==> (this->count != 0)
		   // stacklist still have items and removed one was not from last index
		this->first_to_valid = 0; // validate all of items (is it the best way?)
								  // because maybe deleted widget was of the greatest width(VERTICAL)
								  // or height(HORIZONTAL). Therefore, stacklist size should decrease
		memmove(&(this->items[index]), &(this->items[index+1]), (this->count - index) * sizeof(StackListItem));
								  // shift remaining items
	}
	
	Widget_setRefresh(WIDGET(this));
	
	return deleted_widget;
}

perr StackList_setAttributesAt(StackList *this, uint index, 
								alignment halign, alignment valign,
								usint marg_top,  usint marg_left, 
								usint marg_bot,  usint marg_right)
{
	if (index >= this->count) return E_INDEX_OUT_OF_RANGE;
	
	StackListItem *item = &(this->items[index]);
	
	item->margin.top		= marg_top;
	item->margin.left		= marg_left;
	item->margin.bottom		= marg_bot;
	item->margin.right		= marg_right;
	item->halign			= halign;
	item->valign			= valign;
	if (index < this->first_to_valid) this->first_to_valid = index;
	
	Widget_setRefresh(WIDGET(this));
	
	return E_NO_ERROR;
}

inline void StackList_setPadding(StackList *this, usint pad_top, usint pad_left, usint pad_bottom, usint pad_right) {
	if ((this->padding.top == pad_top) && 
		(this->padding.left == pad_left) &&
		(this->padding.bottom == pad_bottom) && 
		(this->padding.right == pad_right)) return;
	this->padding.top    = pad_top;
	this->padding.left   = pad_left;
	this->padding.bottom = pad_bottom;
	this->padding.right  = pad_right;
	if (this->count) this->first_to_valid = 0; // force revalidation of all children
	Widget_setRefresh(WIDGET(this));
}

inline void StackList_setBgColor(StackList *this, uint bg_color) {
	if (this->bg_color != bg_color) {
		this->bg_color = bg_color;
		Widget_setRefresh(WIDGET(this));
	}
}
