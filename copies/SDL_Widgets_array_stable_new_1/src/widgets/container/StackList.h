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
	
	// types of direct children of StackList
	enum stacklisttype {
		SSTACKLIST_TYPE,
		SFLOATING_MENU_TYPE
	};
	
	struct StackList {
		struct Container		container;		// inherits from Container
		struct ContainerItem 	*items;
		uint 					size;
		uint 					count;
		enum layouttype			layout;
		enum stacklisttype		type;
	};

	// ToStrings methods
	const char *StackList_toString(StackList *stacklist);
	const char *StackList_lastWidgetToString(StackList *stacklist);
	const char* StackList_getLayoutName(layouttype layout);
	
	// Use this to make whole StackList visible/invisible
	inline void StackList_setVisible(StackList *stacklist, bool vis);
	
	// constructor
	StackList* StackList_new(StackList *this, layouttype layout, uint size); 
	
	// type constructor used by classes inheriting from StackList
	//! @NOTE: StackList is not abstract class such as: Widget, Container etc.
	//! @NOTE: vdestroy can be NULL therefore StackList_vdestroy is used
	void StackList_init_type(	StackList 			*stacklist, 
								stacklisttype 		stacklist_type,
								layouttype 			layout, 
								uint 				size,
								void 				(*vdestroy) (void* vthis),
								const char			*type);
	
	/** Current destructor (called by inherititng classes). Useful when class inheriting from StackList has nothing to destroy */
	void StackList_destroy(StackList *this);
	
	// translate all items (without stacklist background which is translated in Widget class)
	// of vector [dx,dy]
	inline void StackList_dragItems(StackList *stacklist, signed short dx, signed short dy);
	
	// Draw StackList and all off items (in order of direction of StackList variant)
	void StackList_draw(StackList *stacklist, Screen *screen, bool flip);
	
	/* Adding methods, applies for both StackListX and StackListY */
	perr StackList_appendAt(StackList *stacklist, ContainerItem *container_item, uint index) ;
	perr StackList_addLast(StackList *stacklist, ContainerItem *container_item);
	perr StackList_addWidgetLast(	StackList *stacklist, Widget *widget, 
									alignment halign, alignment valign,
									usint marg_top, usint marg_left, 
									usint marg_bot, usint marg_right);
	perr StackList_appendWidgetAt(	StackList *stacklist, Widget *widget, 
									uint index,
									alignment halign, alignment valign,
									usint marg_top, usint marg_left, 
									usint marg_bot, usint marg_right
								);
							 
	inline void StackList_setVisible(StackList *stacklist, bool vis);
	
	/* Refresh method, call it after adding a bunch of items */
	// Validates StackList on other axis than main of given StackList:
	// for StackListX it validates on Y axis
	// for StackListY on X axis
	void StackList_refresh(StackList *stacklist);
	
	/* Validate methods, call one of them at runtime when sizes/alignment of children change 
	 * then obviously call StackList_refresh */
	inline void StackList_validate(StackList *stacklist);
	inline void StackList_validateFrom(StackList *stacklist, uint index);
	void StackList_validateAt(StackList *stacklist, uint index);
	
	// pass event to this stacklist and all of its children
	void StackList_mevent(StackList *stacklist, Screen *screen);
#endif
