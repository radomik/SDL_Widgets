/*		[private methods specific for vertical StackList used by StackList.c]
 *      StackListY.c - this file is part of SDL_Widgets
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
#include "StackListY.h"
#include "StackList.h"
#include "Container.h"


// Validates StackListY on X axis,
// Precisely, updates pos.x and maxx of each widget controlled by 
// this container.
// 
// creates surface of container
// this surface is only rectangle filled with background color
void StackListY_refresh(StackList *this) {
	Container *container = CONTAINER(this);
	Widget    *widget    = WIDGET(this);
	ContainerItem *item;
	u32  i = 0;
	u16 x_rel, t, maxw = 0;
	if (this->count == 0) {
		fprintf(stderr, "StackListY_refresh: No items, setting itself visible to false\n");
		widget->visible = false;
		return;
	}
	
	/* Find maximum width of cell */
	for (; i < this->count; i++) {
		if ((t = this->items[i].cell_rect.w) > maxw)
			maxw = t;
	}
	
	/* Update container dimension (assuming pos.x and pos.y are already set) */
	widget->pos.w = maxw + (container->padx << 1);
	widget->maxx  = widget->pos.x + widget->pos.w;
	widget->maxy  = this->items[this->count-1].maxy + container->pady;
	widget->pos.h = widget->maxy - widget->pos.y;
	if (widget->pos.h > widget->maxy) {
		fprintf(stderr, "StackListY_refresh: (DEBUG FATAL) pos.y=%hu maxy=%hu h=%hu && h > maxy\n",
						widget->pos.y, widget->maxy, widget->pos.h);
		fprintf(stderr, "\t\tAdditional info:\n\t\tlast widget in stacklist:\n\t%s\n\t(padx,pady)=(%hu,%hu)\n",
			StackList_lastWidgetToString(this), container->padx, container->pady);
		widget->visible = false;
		return;
	}
	
	//fprintf(stderr, "StackListY_refresh: Container: %s\n", Widget_toString(widget));
	
	/* Update pos.x of each cell and pos.x of widget in each cell */
	for (i = 0; i < this->count; i++) {
		item = &this->items[i];
		if (item->cell_rect.w == maxw) { // the widest items
			item->cell_rect.x = widget->pos.x + container->padx;
			item->maxx = item->cell_rect.x + item->cell_rect.w - 1;
		}
		else { // width < maxw 
			if (item->halign == ALIGN_LEFT) {
				item->cell_rect.x = container->padx + widget->pos.x;
				item->maxx = item->cell_rect.x + item->cell_rect.w - 1;
			}
			else {
				if (item->halign == ALIGN_RIGHT) {
					item->maxx = widget->maxx - container->padx - item->margin_right;
					item->cell_rect.x = item->maxx - item->cell_rect.w;
				}
				else { // hcenter
					x_rel = (maxw - item->cell_rect.w) >> 1;
					item->cell_rect.x = container->padx + x_rel + widget->pos.x;
					item->maxx = item->cell_rect.x + item->cell_rect.w - 1;
				}
			}
		}
		// widget absolute x dimension is 
		// cell rectangle x + margin left of widget
		item->widget->pos.x = item->cell_rect.x + item->margin_left;
		item->widget->maxx  = item->widget->pos.x + item->widget->pos.w - 1;
		if (item->widget->is_container) {
			Widget_refresh(item->widget);
		}
	}
	
	Container_createSurfaceIfNeeded(container);
}

// Validates only element at given index on Y axis
// index ought to be valid index of items array (no check)
// better to use as private method
void StackListY_validateItem(const StackList *this, ContainerItem *item, u32 index) {
	/* Assuming container itself has assigned property pos.y (miny relative to window)
	 * calcuate miny/minx of cell rectangle (relative to window) and
	 * modify pos.y of item to container.pos.y + cell.miny + margin_top */

	/* Calculate ymin and ymax for both cell_rectangle and widget */
	// *** 1 *** cell miny and maxy
	if (index == 0) {
		item->cell_rect.y = 	// first item miny is in pady relative to top border of container
			CONTAINER(this)->pady + WIDGET(this)->pos.y;	
	}
	else {
		item->cell_rect.y = this->items[index-1].maxy;  // miny is previous cell maxy
	}
	item->maxy = item->cell_rect.y + item->cell_rect.h - 1;	// maxy = miny + cell_rect.h
		
	// *** 2 *** Widget properties miny, maxy
	item->widget->pos.y = item->cell_rect.y + item->margin_top;			// widget.miny
	item->widget->maxy  = item->widget->pos.y + item->widget->pos.h - 1;// widget.maxy
}
