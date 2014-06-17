/*      Generic double linked list 
 * 
 *      List2D.h - this file is part of SDL_Widgets
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
#ifndef _List2D_h_
	#define _List2D_h_
	#include "StdDefinitions.h"
	#include "Object.h"
	
	struct List2DItem {
		void 				*data;
		struct List2DItem	*prev;
		struct List2DItem	*next;
		uint				code;
	};
	
	struct List2D {
		Object				object;	// extends from Object
		struct List2DItem	*first;
		struct List2DItem	*current;
		struct List2DItem	*last;
		ullong				count;
		bool				free_data_on_destroy; //default false
	};
	
	// constructor, destructor: delete()
	List2D* List2D_new(List2D *list2d);
	
	bool List2D_addLast(List2D *list2d, void *data, uint code, bool change_current);
	bool List2D_addFirst(List2D *list2d, void *data, uint code, bool change_current);
	bool List2D_removeByData(List2D *list2d, void *data, bool free_data);
	bool List2D_removeByIndex(List2D *list2d, ullong index, bool free_data);
	bool List2D_removeByItem(List2D *list2d, List2DItem *item, bool free_data);
	bool List2D_removeByCurrent(List2D *list2d, bool free_data);
	void List2D_destroy(List2D *list2d, bool free_data);
	bool List2D_seekCurrentToData(List2D *list2d, void *data);
	bool List2D_seekCurrentToIndex(List2D *list2d, ullong index);
	inline void List2D_seekCurrentToFirst(List2D *list2d);
	inline void List2D_seekCurrentToLast(List2D *list2d);
	bool List2D_seekCurrentToPrevious(List2D *list2d);
	bool List2D_seekCurrentToNext(List2D *list2d);
	bool List2D_replaceCurrent(List2D *list2d, void *data, uint code, bool free_data);
	ullong List2D_getCount(List2D *list2d);
	bool List2D_isEmpty(List2D *list2d);
	
#endif
