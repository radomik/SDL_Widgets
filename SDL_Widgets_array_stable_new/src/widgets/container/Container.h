/*		[parent class for any container, shouldn't be instantined]
 *      Container.h - this file is part of SDL_Widgets
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

#ifndef _Container_h_
	#define _Container_h_
	
	#include "StdDefinitions.h"
	#include "Widget.h"
	
	enum alignment {
		ALIGN_TOP = 1,
		ALIGN_BOTTOM,
		ALIGN_CENTER,
		ALIGN_LEFT,
		ALIGN_RIGHT
	};
	/*
	#define	ALIGN_TOP		(1)
	#define	ALIGN_BOTTOM	(2)
	#define ALIGN_CENTER	(3)
	#define ALIGN_LEFT		(4)
	#define ALIGN_RIGHT		(5)
	typedef u8 alignment;
	*/
	
	// NOTE: 
	//  Items alignments, margins, container paddings or items size can be changed
	//  by changing them and then run Container_refresh
	struct ContainerItem {
		Widget 			*widget;		// this is any widget pointer 
		SDL_Rect		cell_rect;		// that is cell rectangle minx, miny, w, h
		u16 			margin_left;	// draw a rectangle of widget inside of cell rectangle
		u16 			margin_right;	// there are preserved margins between these rectangles inside
		u16 			margin_top;		
		u16 			margin_bottom;
		u16				maxx;			// this is most right-bottom point of cell rectangle
		u16				maxy;		
		alignment 		halign;			// these are alignments of inner rectangle relative to cell rectangle
		alignment 		valign;
	};
	
	extern const coClass *Container_class;
	#define CONTAINER(VTHIS) ((Container*)VTHIS)
	
	struct Container {
		Widget				_super;			// inherits from Widget
		u32					color;
		u16					padx;
		u16					pady;
	};
	
	Container* Container_new(Container *this);
	void Container_vdestroy(void *vthis);
	
	// toStrings methods
	const char *Container_alignmentToString(alignment align);
	const char *ContainerItem_toString(const ContainerItem *item);
	const char *Container_toString(const Container *this);
	
	void Container_setPadding(Container *this, u16 padx, u16 pady);
	
	// recreates surface of this container itself
	// NOTE container.widget.pos.w and h should already be set
	void Container_createSurfaceIfNeeded(Container *this);

#endif
