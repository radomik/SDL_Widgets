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
	typedef uchar alignment;
	*/
	
	// NOTE: 
	//  Items alignments, margins, container paddings or items size can be changed
	//  by changing them and then run Container_refresh
	struct ContainerItem {
		struct Widget 	*widget;		// this is any widget pointer 
		SDL_Rect		cell_rect;		// that is cell rectangle minx, miny, w, h
		usint 			margin_left;	// draw a rectangle of widget inside of cell rectangle
		usint 			margin_right;	// there are preserved margins between these rectangles inside
		usint 			margin_top;		
		usint 			margin_bottom;
		usint			maxx;			// this is most right-bottom point of cell rectangle
		usint			maxy;		
		alignment 		halign;			// these are alignments of inner rectangle relative to cell rectangle
		alignment 		valign;
	};
	
	
	enum containertype {
		CSTACKLIST_TYPE=0,
		CGRID_TYPE=1
	};
	
	struct Container {
		Widget					widget;			// inherits from Widget
		uint					color;
		usint					padx;
		usint					pady;
		containertype			type;
	};
	
	//#include "../Screen.h"
	// toStrings methods
	char *Container_alignmentToString(alignment align);
	char *ContainerItem_toString(ContainerItem *container_item);
	char *Container_toString(Container *container);
	
	/** Current destructor (called by inheriting classes) */
	void Container_destroy(Container *this);
	
	// constructor called by inheriting classes
	//! @NOTE: vdestroy can be NULL, therefore Widget_vdestroy is used as a virtual destructor
	//! @NOTE: Container_vdestroy is never used because it has nothing to destroy
	void Container_init_type(	Container 			*container,
								enum containertype 	container_type,
								void 				(*vdestroy) (void* vthis),
								const char			*type
								);
						 
	// set container visible or not
	void Container_setVisible(Container *container, bool vis);
	
	inline void Container_setPadding(Container *container, usint padx, usint pady);
	
	// drag container
	void Container_dragItems(Container *container, signed short dx, signed short dy);
	
	// draw container
	void Container_draw(Container *container, Screen *screen, bool flip);
	
	
	// process events by container
	void Container_mevent(Container *container, Screen *screen);
	
	// refresh container
	void Container_refresh(Container *container);
	
	// recreates surface of this container itself
	// NOTE container.widget.pos.w and h should already be set
	void Container_createSurfaceIfNeeded(Container *container);

#endif
