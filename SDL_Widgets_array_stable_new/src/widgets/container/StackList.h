/*		[StackList - simple grid with one row or one column]
 *      StackList.h - this file is part of SDL_Widgets
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

#ifndef _StackList_h_
	#define _StackList_h_
	#include "Container.h"
	#include "StdDefinitions.h"
	#include "perr.h"
	
	// layout of StackList (horizontal or vertical)
	enum layouttype {
		HORIZONTAL = 0,
		VERTICAL = 1
	};
	
	extern const coClass *StackList_class;
	#define STACKLIST(VTHIS) ((StackList*)VTHIS)
	
	struct StackList {
		Container				_super;		// inherits from Container
		ContainerItem 			*items;			// array of items
		u32 					size;
		u32 					count;
		enum layouttype			layout;
	};
	
	const char* StackList_getLayoutName(layouttype layout);

	const const char *StackList_toString(const StackList *this);

	const char *StackList_lastWidgetToString(const StackList *this);

	void StackList_vdestroy(void *vthis);
	void StackList_vmevent(void *vthis, Screen *screen);
	void StackList_vdraw(void *vthis, Screen *screen, b8 flip);
	void StackList_vrefresh(void *vthis);
	void StackList_vdrag(void *vthis, s16 dx, s16 dy);
	void StackList_vsetVisible(void *vthis, b8 vis);
	
	// constructor
	StackList* StackList_new(StackList *this, layouttype layout, u32 size);

	// Append item to specific position, this index can be in range 0...count
	// if added at last, count is automatically increased
	// 
	// given element is structure which just copies (can be changed later in source)
	// another approach is to add widget manually filling:
	// stacklist->items[index] and then run StackList_validateAt(stacklist, index)
	// one another is to add only Widget*, fill its properties and validateAt
	perr StackList_appendAt(StackList *this, ContainerItem *container_item, u32 index);

	// add item at last position
	perr StackList_addLast(StackList *this, ContainerItem *container_item);

	// Add single widget to end of StackList, remember to run StackList_refresh 
	// after adding a bunch of items
	perr StackList_addWidgetLast(	StackList *this, Widget *widget, 
									alignment halign, alignment valign,
									u16 marg_top, u16 marg_left, 
									u16 marg_bot, u16 marg_right);

	perr StackList_appendWidgetAt(	StackList *this, Widget *widget, 
									u32 index,
									alignment halign, alignment valign,
									u16 marg_top, u16 marg_left, 
									u16 marg_bot, u16 marg_right
								 );
#endif
