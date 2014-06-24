/*		[ IWidget is an interface implemented by Widget and all classes derived from it ]
 *      IWidget.h - this file is part of SDL_Widgets
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

#ifndef _IWidget_h_
#define _IWidget_h_
#include "StdDefinitions.h"

/** This is the major problem of current implementation of interfaces
 *  index should be keeped by any class implementing interface 
 * 
 * Here using index = 1 because index = 0 is already occupied by coIObject */
#define IWIDGET_VTABLE_INDEX	1

#define IWIDGET(V) ((IWidget*)V)
struct IWidget {
	/// mouse event handler
	void (*mevent)(void *vthis, Screen *screen);
	
	/// draw widget
	void (*draw)(void *vthis, Screen *screen, b8 flip);
	
	/// refresh widget
	void (*refresh)(void *vthis);
	
	/// drag widget
	void (*drag)(void *vthis, s16 dx, s16 dy);
	
	/// change visibility
	void (*setVisible)(void *vthis, b8 vis);
};

/** extract const IWidget* entry from any const Widget* object pointer
 * @note no checks for NULL: VTHIS, VTHIS->class, VTHIS->class->vtable, 
 * VTHIS->class->vtable[IWIDGET_VTABLE_INDEX]
 */
#define IWidget_vptr(VTHIS) ( IWIDGET( vptrof(VTHIS, IWIDGET_VTABLE_INDEX) ) )


#define IWidget_mevent(VTHIS, SCREEN) ( IWidget_vptr(VTHIS)->mevent(VTHIS, SCREEN) )

#define IWidget_draw(VTHIS, SCREEN, FLIP) ( IWidget_vptr(VTHIS)->draw(VTHIS, SCREEN, FLIP) )

#define IWidget_refresh(VTHIS) ( IWidget_vptr(VTHIS)->refresh(VTHIS) )

#define IWidget_drag(VTHIS, DX, DY) ( IWidget_vptr(VTHIS)->drag(VTHIS, DX, DY) )

#define IWidget_setVisible(VTHIS, VIS) ( IWidget_vptr(VTHIS)->setVisible(VTHIS, VIS) )

#endif
