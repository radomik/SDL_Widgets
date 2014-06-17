/*      Base class for undo management 
 *
 *      Undo.h - this file is part of SDL_Widgets
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
 
#ifndef _Undo_h_
	#define	_Undo_h_
	#include "StdDefinitions.h"
	
	struct Undo {
		Widget			*widget_undo;	// e.g Button, ButtonImage
		Widget			*widget_redo;	// --//--
		
		coList2D		*list;
		b8			active_link;
	};
	
	void Undo_init(Undo *undo);
	
	void Undo_doUndo(Undo *undo, Widget *widget);
	
	void Undo_doRedo(Undo *undo ......
	

#endif
