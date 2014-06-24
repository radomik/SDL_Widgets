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

#include "StdDefinitions.h"
#include "Screen.h"
#include "Static.h"
#include "perr.h"
#include "Memory.h"
#include "StackList.h"
#include "StackListX.h"
#include "StackListY.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = StackList_vdestroy,
	.toString = StackList_vtoString
};

/** Methods overriden from interface IWidget */
static const IWidget override_IWidget = {
	.mevent 	= StackList_vmevent,
	.draw 		= StackList_vdraw,
	.refresh	= StackList_vrefresh,
	.drag		= StackList_vdrag,
	.setVisible	= StackList_vsetVisible
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IWidget
};

static coClass type = {
	.size	= sizeof(StackList),
	.name	= "StackList",
	.vtable	= vtable
};
const coClass *StackList_class = &type;

const char* StackList_getLayoutName(layouttype layout) { 
	return (layout == HORIZONTAL)?"HORIZONTAL":"VERTICAL"; 
}

const char *StackList_vtoString(const void *vthis) {
	static char str_id[80];
	const StackList *this = STACKLIST(vthis);
	snprintf(str_id, sizeof(str_id), "StackList[this=%p]: layout=%s, count=%u, size=%u",
		this, StackList_getLayoutName(this->layout), this->count, this->size);
	return str_id;
}

const char *StackList_lastWidgetToString(const StackList *this) { 
	return (this->count != 0) ? Widget_toString(this->items[this->count-1].widget) : "(empty stacklist)"; 
}

void StackList_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif

	/*! Delete self stuff !*/
	if (STACKLIST(vthis)->items) {
		free(STACKLIST(vthis)->items); STACKLIST(vthis)->items = NULL; 
		STACKLIST(vthis)->size = STACKLIST(vthis)->count = 0; 
	}
	
	/*! Delete parent object !*/
	Container_vdestroy(vthis);
}

/// constructor
StackList* StackList_new(StackList *this, layouttype layout, u32 size) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: layout='%s', size=%u\n", __FUNCTION__, StackList_getLayoutName(layout), size);
		return NULL;
	}
	
	Container_new(CONTAINER(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	/* Initialize fields */
	this->layout  			= layout;
	this->size 				= size;
	this->count 			= 0;
	this->items 			= (size) ? malloc(size * sizeof(ContainerItem)) : NULL;

#ifdef STACKLIST_DEBUG
	fprintf(stderr, "%s: this(%p), .layout(%s), .size(%u), .items(%p) [malloc]\n", 
		__FUNCTION__, this, StackList_getLayoutName(this->layout), this->size, this->items);
#endif
	return this;
}

void StackList_vdrag(void *vthis, s16 dx, s16 dy) { 
	Widget *item_wt;
	u32 	i = 0;
	
	Widget_vdrag(vthis, dx, dy);
	
	for (; i < STACKLIST(vthis)->count; i++) {
		item_wt = STACKLIST(vthis)->items[i].widget; 
		if (item_wt) {
			Widget_drag(item_wt, dx, dy);
		}
	}
}

void StackList_vdraw(void *vthis, Screen *screen, b8 flip) {
	Widget *item_wt;
	u32 	i = 0;
	
	Widget_vdraw(vthis, screen, false);
		
	for (; i < STACKLIST(vthis)->count; i++) {	// draw visible children even if stacklist is invisible
		item_wt = STACKLIST(vthis)->items[i].widget;
		if (item_wt) {
			Widget_draw(item_wt, screen, false);
		}
	}
	if (flip) Screen_flip(screen);
}

void StackList_vmevent(void *vthis, Screen *screen) {
	Widget *item_wt;
	u32 i=0;
	
	for (; i < STACKLIST(vthis)->count; i++) {	// draw all of children
		item_wt = STACKLIST(vthis)->items[i].widget;
		if (item_wt) {
			Widget_mevent(item_wt, screen);
			if (screen->event_handled) return;
		}
	}
	
	Widget_vmevent(vthis, screen);
}

void StackList_vsetVisible(void *vthis, b8 vis) {
	StackList 	*this = STACKLIST(vthis);
	Widget 		*widget; 
	u32 		i=0; 
	Widget_vsetVisible(this, vis);
	
	for (; i < this->count; i++) { 
		if ( (widget = this->items[i].widget) ) { 
			Widget_setVisible(widget, vis);
		} 
	}
}

/** Refresh stacklist virtual on both axis
 * This is implementation of virtual Widget_refresh() */
void StackList_vrefresh(void *vthis) {
	if (STACKLIST(vthis)->layout == VERTICAL)
		StackListY_refresh(STACKLIST(vthis));
	else
		StackListX_refresh(STACKLIST(vthis));
}

static inline u16 StackList_validateItemOnBaseAxis(const StackList *this, ContainerItem *item, u32 index, u16 max_opposite_size) {
	u8 d;
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
	
#ifdef STACKLIST_DEBUG
	fprintf(stderr, "%s: before specific {X,Y}_validateItem: item[%u]:\n\t%s\n",
		__FUNCTION__, index, ContainerItem_toString(item));
#endif
	
	u16 item_opposite_size = (this->layout == VERTICAL)
		? StackListY_validateItemOnBaseAxis(this, item, index)
		: StackListX_validateItemOnBaseAxis(this, item, index);
		
	
	return item_opposite_size > max_opposite_size ? item_opposite_size : max_opposite_size;
}

/** Validate all stacklist items on its base axis
 * i.e. for StackListX this method updates items on X axis
 * for StackListY on Y axis
 * 
 * Method is called only from StackListX_refresh() and StackListY_refresh()
 * 
 * @return MAX(.items[].cell_rect.w) for StackListY or 
 *  		MAX(.items[].cell_rect.h) for StackListX
 * 
 */
u16 StackList_validateAllItemsOnBaseAxis(StackList *this) {
	ContainerItem	*item;
	u32 			i;
	u16 			max_opposite_size = 0;
	
#ifdef STACKLIST_DEBUG
	fprintf(stderr, "%s: [%s] Validating stacklist on base axis and finding maximum cell opposite size:\n", 
		__FUNCTION__, StackList_getLayoutName(this->layout));
#endif
	for (i = 0; i < this->count; i++) {
		item = &this->items[i];
#ifdef STACKLIST_DEBUG
		fprintf(stderr, "   *** [%u] Validating: %s\n", i, ContainerItem_toString(item));
#endif
		max_opposite_size = StackList_validateItemOnBaseAxis(this, item, i, max_opposite_size);
#ifdef STACKLIST_DEBUG
		fprintf(stderr, "   *** [%u] Validated: %s\n", i, ContainerItem_toString(item));
#endif
	}
	
	return max_opposite_size;
}

/** Grow stacklist array or return current function with error */
static perr StackList_growArray(StackList *this) {
	perr e = E_NO_ERROR;
	ContainerItem* new_array = Static_growArray(	&e,							/* error management		*/
													this->items, 				/* array to grow		*/
													&this->size,				/* current size			*/
													this->count,				/* position of adding	*/
													this->count,				/* count to restore		*/
													(u32)10, 					/* default size			*/
													(u32)0xFFFFFFFF,			/* maximum size			*/
													sizeof(ContainerItem));		/* sizeof item			*/
	if (! new_array) {
		fprintf(stderr, "%s: Fatal error occured while creating/growing stacklist.items array. Method Static_growArray exited with error %s\n", 
			__FUNCTION__, perr_getName(e));
	}
	else this->items = new_array;
	return e;
}

/** Append item to specific position, this index can be in range 0...count
 * if added at last, count is automatically increased
 * 
 * given element is structure which just copies (can be changed later in source)
 * another approach is to add widget manually filling:
 * stacklist->items[index] and then run StackList_validateItem(stacklist, item, index)
 * one another is to add only Widget*, fill its properties and validateAt */
perr StackList_appendAt(StackList *this, ContainerItem *container_item, u32 index) 
{
	if ((! this) || (! container_item)) {
		fprintf(stderr, "StackList_appendAt: Passed NULL: this(%p) or container_item(%p)\n", this, container_item);
		return E_INTRO_FAILED;
	}
	if (index > this->count) {	
		fprintf(stderr, "StackList_appendAt: index=%u out of range (count=%u)\n", index, this->count);
		return E_INDEX_OUT_OF_RANGE;
	}
	if ((index == this->count) && (this->size == this->count)) {	// append last
		perr e = StackList_growArray(this);
		if (e) {
			fprintf(stderr, "StackList_appendAt: Failed to append item at index: %u, [err: %s, .count: %u, .size: %u]\n",
				index, perr_getName(e), this->count, this->size);
			return e;
		}
	}
	
	this->items[index] = *container_item;	// copy structure
	
	if (index == this->count) this->count++; 
	
	//StackList_validateFrom(this, index);
	
	return E_NO_ERROR;
}

/// add item at last position
perr StackList_addLast(StackList *this, ContainerItem *container_item) {
	if ((! this) || (! container_item)) {
		fprintf(stderr, "StackList_addLast: Passed NULL: this(%p) or container_item(%p)\n", this, container_item);
		return E_INTRO_FAILED;
	}
	if (this->size == this->count) {
		perr e = StackList_growArray(this);
		if (e) {
			fprintf(stderr, "StackList_addLast: Failed to add item on the end [err: %s, .count: %u, .size: %u]\n",
				perr_getName(e), this->count, this->size);
			return e;
		}
	}
	
	this->items[this->count] = *container_item;	// copy structure
	
	//StackList_validateItem(this, &this->items[this->count], this->count);
	
	this->count++;
	return E_NO_ERROR;
}

/** Add single widget to end of StackList, remember to run StackList_refresh 
 * after adding a bunch of items */
perr StackList_addWidgetLast(	StackList *this, Widget *widget, 
								alignment halign, alignment valign,
								u16 marg_top, u16 marg_left, 
								u16 marg_bot, u16 marg_right)
{
	if ((! this) || (! widget)) {
		fprintf(stderr, "StackList_addWidgetLast: Passed NULL: this(%p) or widget(%p)\n", this, widget);
		return E_INTRO_FAILED;
	}
	if (this->size == this->count) {
		perr e = StackList_growArray(this);
		if (e) {
			fprintf(stderr, "StackList_addWidgetLast: Failed to grow array of items [err: %s, .count: %u, .size: %u]\n",
				perr_getName(e), this->count, this->size);
			return e;
		}
	}
	ContainerItem *item = &this->items[this->count];	// pointer to last item of array
	item->widget			= widget;
	item->margin_top		= marg_top;
	item->margin_left		= marg_left;
	item->margin_bottom		= marg_bot;
	item->margin_right		= marg_right;
	item->halign			= halign;
	item->valign			= valign;

#ifdef STACKLIST_DEBUG	
	fprintf(stderr, "\n--------------\n%s: >>> this(%s) padXY=[%hu,%hu]\n\tAdding item[%u](%s)\n",
		__FUNCTION__, Widget_toString(WIDGET(this)), 
		CONTAINER(this)->padx, CONTAINER(this)->pady, 
		this->count, ContainerItem_toString(item));
#endif
	//StackList_validateItem(this, item, this->count);
	
	this->count++;

#ifdef STACKLIST_DEBUG
	fprintf(stderr, "%s: >>> this(%p) Added widget current count: %u\n", __FUNCTION__, this, this->count);
#endif	
	return E_NO_ERROR;
}

perr StackList_appendWidgetAt(	StackList *this, Widget *widget, 
								u32 index,
								alignment halign, alignment valign,
								u16 marg_top, u16 marg_left, 
								u16 marg_bot, u16 marg_right
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
		perr e = StackList_growArray(this);	
		if (e) {
			fprintf(stderr, "StackList_addWidgetLast: Failed to append widget at index %u [err: %s, .count: %u, .size: %u]\n",
				index, perr_getName(e), this->count, this->size);
			return e;
		}
	}
	ContainerItem *item = &this->items[index];	// pointer to last item of array
	item->widget			= widget;
	item->margin_top		= marg_top;
	item->margin_left		= marg_left;
	item->margin_bottom		= marg_bot;
	item->margin_right		= marg_right;
	item->halign			= halign;
	item->valign			= valign;
	
	if (index == this->count) this->count++;
	
	//StackList_validateFrom(this, index);
	
	return E_NO_ERROR;
}
