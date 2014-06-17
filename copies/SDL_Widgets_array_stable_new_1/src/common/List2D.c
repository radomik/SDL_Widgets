/*      Generic double linked list 
 * 
 *      List2D.c - this file is part of SDL_Widgets
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
#include "List2D.h"
#include "Object.h"
#include "Memory.h"
static const char *type = "List2D";

static void List2D_vdestroy(void *vthis) {
	List2D *list2d = (List2D*)vthis;
	
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "List2D_vdestroy", Object_getType((Object*)vthis), vthis);
	
	if (! List2D_isEmpty(list2d)) {
		List2DItem *temp;
		while (list2d->first != NULL) {
			temp = list2d->first->next;
			if (list2d->free_data_on_destroy) free(list2d->first->data);
			free(list2d->first);
			list2d->first = temp;
		}
		list2d->current = list2d->last = NULL;
		list2d->count = 0;
	}
	
	Object_destroy((Object*)list2d);
}

List2D* List2D_new(List2D *list2d) {
	if (! list2d) {
		fprintf(stderr, "List2D_new: Passed NULL this pointer.\n");
		return NULL;
	}
	Object_init_type((Object*)list2d, List2D_vdestroy, type);
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "List2D_new", Object_getType((Object*)list2d), list2d);
	list2d->count = 0; 
	list2d->first = list2d->current = list2d->last = NULL; 
	list2d->free_data_on_destroy = false;
	return list2d;
}

bool List2D_addLast(List2D *list2d, void *data, uint code, bool change_current) {
	List2DItem *new_item = malloc(sizeof(List2DItem));
	new_item->data = data;
	new_item->code = code;
	new_item->next = NULL;
	if (list2d->last) {
		list2d->last->next = new_item;
		new_item->prev = list2d->last;
		list2d->last = new_item;
	}
	else {
		new_item->prev = NULL;
		list2d->last = list2d->first = new_item;
	}
	list2d->count++;
	if (change_current) list2d->current = new_item;
	return true;
}

bool List2D_addFirst(List2D *list2d, void *data, uint code, bool change_current) {
	List2DItem *new_item = malloc(sizeof(List2DItem));
	new_item->data = data;
	new_item->code = code;
	new_item->prev = NULL;
	if (list2d->first) {
		list2d->first->prev = new_item;
		new_item->next = list2d->first;
		list2d->first = new_item;
	}
	else {
		new_item->next = NULL;
		list2d->last = list2d->first = new_item;
	}
	list2d->count++;
	if (change_current) list2d->current = new_item;
	return true;
}

bool List2D_removeByItem(List2D *list2d, List2DItem *item, bool free_data) {
	if ((List2D_isEmpty(list2d)) || (! item)) return false;
	List2DItem *prev = item->prev;
	List2DItem *next = item->next;
	if (list2d->current == item) { list2d->current = (prev) ? prev : next; }
	if (list2d->first   == item) { list2d->first   = next; }
	if (list2d->last    == item) { list2d->last    = prev; }
	
	if ((free_data) && (item->data)) free(item->data);
	free(item);
	if (prev) prev->next = next;
	if (next) next->prev = prev; 
	return true;
}

bool List2D_removeByData(List2D *list2d, void *data, bool free_data) {
	if ((List2D_isEmpty(list2d)) || (! data)) return false;
	List2DItem *temp = list2d->first;
	while (temp != NULL) {
		if (temp->data == data) {
			List2D_removeByItem(list2d, temp, free_data);
			return true;
		}
	}
	return false;
}

bool List2D_removeByIndex(List2D *list2d, ullong index, bool free_data) {
	if (List2D_isEmpty(list2d) || (index > list2d->count)) return false;
	List2DItem *temp = list2d->first;
	ullong i = 0; for (; i < index; i++) temp = temp->next;
	List2D_removeByItem(list2d, temp, free_data);
	return true;
}

bool List2D_removeByCurrent(List2D *list2d, bool free_data) {
	return List2D_removeByItem(list2d, list2d->current, free_data);
}

bool List2D_seekCurrentToData(List2D *list2d, void *data) {
	if ((List2D_isEmpty(list2d)) || (! data)) return false;
	List2DItem *temp = list2d->first;
	while (temp != NULL) {
		if (temp->data == data) { 
			list2d->current = temp; 
			return true; 
		}
	}
	return false;
}

bool List2D_seekCurrentToIndex(List2D *list2d, ullong index) {
	if (List2D_isEmpty(list2d) || (index > list2d->count)) return false;
	List2DItem *temp = list2d->first;
	ullong i = 0; for (; i < index; i++) temp = temp->next;
	list2d->current = temp;
	return true;
}

inline void List2D_seekCurrentToFirst(List2D *list2d) { list2d->current = list2d->first; }

inline void List2D_seekCurrentToLast(List2D *list2d) { list2d->current = list2d->last; }

bool List2D_seekCurrentToPrevious(List2D *list2d) {
	if ((List2D_isEmpty(list2d)) || (list2d->current == list2d->first)) return false;
	list2d->current = list2d->current->prev;
	return true;
}
bool List2D_seekCurrentToNext(List2D *list2d) {
	if ((List2D_isEmpty(list2d)) || (list2d->current == list2d->last)) return false;
	list2d->current = list2d->current->next;
	return true;
}
bool List2D_replaceCurrent(List2D *list2d, void *data, uint code, bool free_data) {
	if ((List2D_isEmpty(list2d)) || (! list2d->current)) return List2D_addLast(list2d, data, code, true);
	
	if (free_data) free(list2d->current->data);
	list2d->current->data = data;
	list2d->current->code = code;
	return true;
}
inline ullong List2D_getCount(List2D *list2d) { return list2d->count; }
inline bool List2D_isEmpty(List2D *list2d) { return ! list2d->first; }
