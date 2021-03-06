/*		[private methods specific for vertical StackList used by StackList.c]
 *      StackListY.h - this file is part of SDL_Widgets
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

#ifndef _StackListY_h_
	#define _StackListY_h_
	#include "StdDefinitions.h"
	
	/* These methods are all PRIVATE use methods from StackList class instead */
	void StackListY_refresh(StackList *this);
	
	/// Validates only element at given index on Y axis
	/// index ought to be valid index of items array (no check)
	/// better to use as private method
	///
	/// @returns Final item->cell_rect.w
	///
	u16 StackListY_validateItemOnBaseAxis(const StackList *this, ContainerItem *item, u32 index);
	
#endif
