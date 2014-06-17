/*		[private methods specific for horizontal StackList used by StackList.c]
 *      StackListX.c - this file is part of SDL_Widgets
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
#include "Memory.h"
#include "Widget.h"
#include "StackListX.h"
#include "StackList.h"
#include "Container.h"

// Validates StackListX on Y axis,
// Precisely, updates pos.y and maxy of each widget controlled by 
// this container.
// 
// creates surface of container
// this surface is only rectangle filled with background color
void StackListX_refresh(StackList *this) {
	Container			*container = CONTAINER(this);
	Widget				*widget    = WIDGET(this);
	ContainerItem		*item;
	u32				i = 0;
	u16				y_rel, t, maxh = 0;
	
	if (this->count == 0) {
		fprintf(stderr, "StackListX_refresh: No items, setting itself visible to false\n");
		widget->visible = false;
		return;
	}
	
	/* Find maximum height of cell */
	for (; i < this->count; i++) {
		if ((t = this->items[i].cell_rect.h) > maxh)
			maxh = t;
	}
	
	/* Update container dimension (assuming pos.x and pos.y are already set) */
	widget->pos.h = maxh + (container->pady << 1);
	widget->maxy  = widget->pos.y + widget->pos.h;
	widget->maxx  = this->items[this->count-1].maxx + container->padx;
	widget->pos.w = widget->maxx - widget->pos.x;
	if (widget->pos.w > widget->maxx) {
		fprintf(stderr, "StackListX_refresh: (DEBUG FATAL) pos.x=%hu maxx=%hu w=%hu && w > maxx\n",
						widget->pos.x, widget->maxx, widget->pos.w);
		fprintf(stderr, "\t\tAdditional info:\n\t\tlast widget in stacklist:\n\t%s\n\t(padx,pady)=(%hu,%hu)\n",
			StackList_lastWidgetToString(this), container->padx, container->pady);
		widget->visible = false;
		return;
	}
	
	//fprintf(stderr, "StackListX_refresh: Container: %s\n", Widget_toString(widget));
	
	/* Update pos.y of each cell and pos.y of widget in each cell */
	for (i = 0; i < this->count; i++) {
		item = &this->items[i];
		if (item->cell_rect.h == maxh) { // the highest items
			item->cell_rect.y = widget->pos.y + container->pady;
			item->maxy = item->cell_rect.y + item->cell_rect.h - 1;
		}
		else { // height < maxh
			if (item->valign == ALIGN_TOP) {
				item->cell_rect.y = container->pady + widget->pos.y;
				item->maxy = item->cell_rect.y + item->cell_rect.h - 1;
			}
			else {
				if (item->valign == ALIGN_BOTTOM) {
					item->maxy = widget->maxy - container->pady - item->margin_bottom;
					item->cell_rect.y = item->maxy - item->cell_rect.h;
				}
				else { // vcenter
					y_rel = (maxh - item->cell_rect.h) >> 1;
					item->cell_rect.y = container->pady + y_rel + widget->pos.y;
					item->maxy = item->cell_rect.y + item->cell_rect.h - 1;
				}
			}
		}
		// widget absolute y dimension is 
		// cell rectangle y + margin top of widget
		item->widget->pos.y = item->cell_rect.y + item->margin_top;
		item->widget->maxy  = item->widget->pos.y + item->widget->pos.h - 1;
		if (item->widget->is_container) {
			Widget_refresh(item->widget);
		}
	}
	
	Container_createSurfaceIfNeeded(container);
}

// Validates only element at given index on X axis
// index ought to be valid index of items array (no check)
// better to use as private method
void StackListX_validateItem(const StackList *this, ContainerItem *item, u32 index) {
	/* Assuming container itself has assigned property pos.x (minx relative to window)
	 * calcuate minx of cell rectangle (relative to window) and
	 * modify pos.x of item to container.pos.x + cell.minx + margin_left */
	/* Calculate xmin and xmax for both cell_rectangle and widget */
	// *** 1 *** cell minx and maxx
	if (index == 0) {
		item->cell_rect.x = 	// first item minx is in padx relative to left border of container
			CONTAINER(this)->padx + WIDGET(this)->pos.x;	
	}
	else {
		item->cell_rect.x = this->items[index-1].maxx;  // minx is previous cell maxx
	}
	item->maxx = item->cell_rect.x + item->cell_rect.w - 1;	// maxx = minx + cell_rect.w
		
	// *** 2 *** Widget properties minx, maxx
	item->widget->pos.x = item->cell_rect.x + item->margin_left;		// widget.minx
	item->widget->maxx  = item->widget->pos.x + item->widget->pos.w - 1;// widget.maxx
	//fprintf(stderr, "StackListX_validateItem(%u): ITEM: %s\n", index, ContainerItem_toString(item));
}
