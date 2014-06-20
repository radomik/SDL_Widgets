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
	u32					i;
	u16					y_rel, maxh = 0;

#ifdef STACKLIST_DEBUG	
	fprintf(stderr, "%s: this(%s)\n", __FUNCTION__, Widget_toString(widget));
#endif

	if (this->count == 0) {
		fprintf(stderr, "StackListX_refresh: No items, setting itself visible to false\n");
		widget->visible = false;
		return;
	}
	
	/* Validate stacklist on its base axis and find maximum height of cell 
	 * note that this->pos.x and this->pos.y are already set */
	maxh = StackList_validateAllItemsOnBaseAxis(this);
	
#ifdef STACKLIST_DEBUG	
	fprintf(stderr, "%s: Maximum cell height: maxh: %hu\n", __FUNCTION__, maxh);
#endif
	
	/* Update container dimension (assuming pos.x and pos.y are already set) */
#ifdef STACKLIST_DEBUG
	fprintf(stderr, "%s: ### Updating container dimensions:\n", __FUNCTION__);
#endif

	widget->pos.h = maxh + (container->pady << 1);
#ifdef STACKLIST_DEBUG
	fprintf(stderr, "  .pos.h(%hu)=maxh(%hu)  + 2*.pady(%hu)\n", widget->pos.h, maxh, (container->pady << 1));
#endif

	widget->maxy  = widget->pos.y + widget->pos.h - 1;
#ifdef STACKLIST_DEBUG
	fprintf(stderr, "  .maxy(%hu) =.pos.y(%hu) + .pos.h(%hu) - 1\n", widget->maxy, widget->pos.y, widget->pos.h);
#endif

	widget->maxx  = this->items[this->count-1].maxx + container->padx;
#ifdef STACKLIST_DEBUG
	fprintf(stderr, "  .maxx(%hu) =.items[%u].maxx(%hu) + .pad.x(%hu)\n", widget->maxx, this->count-1, this->items[this->count-1].maxx, container->padx);
#endif

	widget->pos.w = widget->maxx - widget->pos.x + 1;
#ifdef STACKLIST_DEBUG
	fprintf(stderr, "  .pos.w(%hu)=.maxx(%hu)  - .pos.x(%hu) + 1\n", widget->pos.w, widget->maxx, widget->pos.x);
#endif

	if (widget->pos.w > widget->maxx+1) {
		fprintf(stderr, "StackListX_refresh: (DEBUG FATAL) pos.x=%hu maxx=%hu w=%hu && w > maxx+1\n",
						widget->pos.x, widget->maxx, widget->pos.w);
		fprintf(stderr, "\t\tAdditional info:\n\t\tlast widget in stacklist:\n\t%s\n\t(padx,pady)=(%hu,%hu)\n",
			StackList_lastWidgetToString(this), container->padx, container->pady);
		widget->visible = false;
		return;
	}
	
#ifdef STACKLIST_DEBUG	
	fprintf(stderr, "%s: [YYY] Validating stacklist on opposite axis\n", __FUNCTION__);
#endif	
	
	/* Update pos.y of each cell and pos.y of widget in each cell */
	for (i = 0; i < this->count; i++) {
		item = &this->items[i];
		
#ifdef STACKLIST_DEBUG
		fprintf(stderr, "    *** [%u] Validating: %s\n", i, ContainerItem_toString(item));
#endif

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
#ifdef STACKLIST_DEBUG		
		fprintf(stderr, "    *** [%u] Validated: %s\n", i, ContainerItem_toString(item));
#endif

		if (item->widget->is_container) {
#ifdef STACKLIST_DEBUG			
			fprintf(stderr, " ###### Refreshing container child\n");
#endif

			Widget_refresh(item->widget);
#ifdef STACKLIST_DEBUG
			fprintf(stderr, " ###### Refreshed container child: %s\n", ContainerItem_toString(item));
#endif

		}
#ifdef STACKLIST_DEBUG		
		fprintf(stderr, "Refreshed item[%u]\n  %s\n", i, ContainerItem_toString(item));
#endif

	}
	
	Container_createSurfaceIfNeeded(container);
#ifdef STACKLIST_DEBUG
	fprintf(stderr, "%s: @@@@@ Finished for this(%s)\n", __FUNCTION__, Widget_toString(WIDGET(this)));
#endif
}

/// Validates only element at given index on X axis
/// index ought to be valid index of items array (no check)
/// better to use as private method
///
/// @returns Final item->cell_rect.h
///
u16 StackListX_validateItemOnBaseAxis(const StackList *this, ContainerItem *item, u32 index) {
	/* Assuming container itself has assigned property pos.x (minx relative to window)
	 * calcuate minx of cell rectangle (relative to window) and
	 * modify pos.x of item to container.pos.x + cell.minx + margin_left */
	/* Calculate xmin and xmax for both cell_rectangle and widget */
	// *** 1 *** cell minx and maxx
	if (index == 0) {
		item->cell_rect.x = 	// first item minx is in padx relative to left border of container
			CONTAINER(this)->padx + WIDGET(this)->pos.x;

#ifdef STACKLIST_DEBUG
		fprintf(stderr, "%s: [0] item.cell_rect.x(%hu)=.padx(%hu)+.pos.x(%hu)\n",
			__FUNCTION__, item->cell_rect.x, CONTAINER(this)->padx, WIDGET(this)->pos.x);		
#endif
	}
	else {
		item->cell_rect.x = this->items[index-1].maxx + 1;  // minx is previous cell maxx

#ifdef STACKLIST_DEBUG
		fprintf(stderr, "%s: [%u] item.cell_rect.x(%hu)=.items[%u].maxx(%hu) + 1\n",
			__FUNCTION__, index, item->cell_rect.x, index-1, this->items[index-1].maxx);
#endif
	}
	item->maxx = item->cell_rect.x + item->cell_rect.w - 1;	// maxx = minx + cell_rect.w
		
	// *** 2 *** Widget properties minx, maxx
	item->widget->pos.x = item->cell_rect.x + item->margin_left;		// widget.minx

#ifdef STACKLIST_DEBUG
	fprintf(stderr, "%s: item.widget.pos.x(%hu)=item.cell_rect.x(%hu)+item.margin_left(%hu)\n",
		__FUNCTION__, item->widget->pos.x, item->cell_rect.x, item->margin_left);
#endif
	
	item->widget->maxx  = item->widget->pos.x + item->widget->pos.w - 1;// widget.maxx
	
#ifdef STACKLIST_DEBUG
	fprintf(stderr, "%s: item.widget.maxx(%hu)=item.widget.pos.x(%hu)+item.widget.pos.w(%hu)-1\n",
		__FUNCTION__, item->widget->maxx, item->widget->pos.x, item->widget->pos.w);
#endif
	
	return item->cell_rect.h;
}
