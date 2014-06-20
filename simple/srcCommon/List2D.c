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
#include "Types.h"
#include "Memory.h"
#include "List2D.h"
#include "Object.h"
#include "Static.h"

/// static methods and private typedefs; private or virtual methods implementations
struct List2DItem {
	void 				*data;
	struct List2DItem	*prev;
	struct List2DItem	*next;
};
static void List2D_vdestroy(void *vthis) { List2D_destroy(LIST2D(vthis)); }
static void List2D_vclone(void *vthis, void *vsrc) { List2D_clone2(LIST2D(vthis), LIST2D(vsrc)); }

/// Object type info
static Type type = {
	.size      = sizeof(List2D),
	.name      = "List2D",
	.super_get = Object_gt,
	.vclone	   = List2D_vclone,
	.vprint    = List2D_vprint,
	.vdestroy  = List2D_vdestroy
};

/// Object type info getters
const Type *List2D_t = &type;
const Type *List2D_gt() { return List2D_t; }

void List2D_print(List2D *this) {
	fprintf(stderr, "List2D[this=%p]:\n\
\t.current:                %p\n\
\t.first:                  %p\n\
\t.last:                   %p\n\
\t.count:                  %lu\n\
\t.free_data_on_destroy    %s\n", 
this, this->current, this->first, this->last, this->count, Bool_toString(this->free_data_on_destroy));
}
inline void List2D_vprint(void *vthis) { List2D_print(LIST2D(vthis)); Object_vprint(vthis); }

/// deinitializer
void List2D_destroy(List2D *this) {
	if (! List2D_isEmpty(this)) {
		List2DItem *temp;
		while (this->first != NULL) {
			temp = this->first->next;
			if (this->free_data_on_destroy) free(this->first->data);
			free(this->first);
			this->first = temp;
		}
		this->current = this->last = NULL;
		this->count = 0;
	}
	
	Object_destroy(OBJECT(this));
}

/// constructors
inline List2D* List2D_new() {
	List2D *this = new(&type); if (this) List2D_new2(this); return this; 
}

/// initializers
/** Do common initialization of direct super class and of current class object **/
/** Constructor can be used by classes inheriting from current class           **/
/** or by self class constructor after create this pointer                     **/
inline void List2D_new2(List2D *this) {
	/** Initialize super class with choosen super constructor **/
	Object_new2(OBJECT(this));
	
	/** Do common initialization of current class **/
	// nothing
}


void List2D_clone2(List2D *this, List2D *src) {
	Object_clone2(OBJECT(this), OBJECT(src));
	this->free_data_on_destroy = src->free_data_on_destroy;
	if (src->count) {
		List2DItem *temp = src->first;
		while (temp) {
			List2D_addLast(this, temp->data, ((src->current) && (src->current->data == temp->data)));
			temp = temp->next;
		}
	}
}

/// public objective and static methods

void* List2D_addLast(List2D *this, void *data, bool change_current) {
	//fprintf(stderr, "List2D_addLast[this=%p]: data=%p\n", this, data);
	List2DItem *new_item = malloc(sizeof(List2DItem));
	if (! new_item) return NULL;
	new_item->data = data;
	new_item->next = NULL;
	if (this->last) {
		this->last->next = new_item;
		new_item->prev = this->last;
		this->last = new_item;
	}
	else {
		new_item->prev = NULL;
		this->last = this->first = new_item;
	}
	this->count++;
	if (change_current) this->current = new_item;
	return data;
}

void* List2D_addFirst(List2D *this, void *data, bool change_current) {
	List2DItem *new_item = malloc(sizeof(List2DItem));
	if (! new_item) return NULL;
	new_item->data = data;
	new_item->prev = NULL;
	if (this->first) {
		this->first->prev = new_item;
		new_item->next = this->first;
		this->first = new_item;
	}
	else {
		new_item->next = NULL;
		this->last = this->first = new_item;
	}
	if (change_current) this->current = new_item;
	this->count++;
	return data;
}

// remove by List2DItem pointer, method doesn't check if item exist in list
// doesn't check for empty list or for @param item==NULL
static void* List2D_removeByItem(List2D *this, List2DItem *item) {
	List2DItem *prev = item->prev;
	List2DItem *next = item->next;
	void 	   *data = item->data;
	if (this->current == item) { this->current = (next) ? next : prev; }
	if (this->first   == item) { this->first   = next; }
	if (this->last    == item) { this->last    = prev; }
	
	free(item);
	if (prev) prev->next = next;
	if (next) next->prev = prev; 
	return data;
}


void* List2D_removeByData(List2D *this, void *data) {
	//fprintf(stderr, "List2D_removeByData[this=%p]: data=%p\n", this, data);
	if (List2D_isEmpty(this)) return NULL;
	List2DItem *temp = this->first;
	while (temp != NULL) {
		if (temp->data == data)
			return List2D_removeByItem(this, temp);
		temp = temp->next;
	}
	return NULL;
}


void* List2D_removeByIndex(List2D *this, size_t index) {
	if (index >= this->count) return NULL;
	List2DItem *temp = this->first;
	size_t i = 0; for (; i < index; i++) temp = temp->next;
	return List2D_removeByItem(this, temp);
}

void* List2D_removeByCurrent(List2D *this) {
	if ((! this->current) || (List2D_isEmpty(this))) return NULL;
	return List2D_removeByItem(this, this->current);
}

void* List2D_seekCurrentToData(List2D *this, void *data) {
	if (List2D_isEmpty(this)) return NULL;
	List2DItem *temp = this->first;
	while (temp != NULL) {
		if (temp->data == data) { 
			this->current = temp; 
			return data; 
		}
	}
	return NULL;
}

void* List2D_seekCurrentToIndex(List2D *this, size_t index) {
	if (index >= this->count) return NULL;
	List2DItem *temp = this->first;
	size_t i = 0; for (; i < index; i++) temp = temp->next;
	this->current = temp;
	return temp->data;
}

inline void* List2D_seekCurrentToFirst(List2D *this) { 
	if (this->current == this->first) return NULL;
	this->current = this->first; return (this->first) ? this->first->data : NULL; 
}

inline void* List2D_seekCurrentToLast(List2D *this) {
	if (this->current == this->last) return NULL; 
	this->current = this->last; return (this->last) ? this->last->data : NULL; 
}

void* List2D_seekCurrentToPrevious(List2D *this) {
	if ((List2D_isEmpty(this)) || (this->current == this->first)) return NULL;
	this->current = this->current->prev;
	return this->current->data;
}

void* List2D_seekCurrentToNext(List2D *this) {
	if ((List2D_isEmpty(this)) || (this->current == this->last)) return NULL;
	this->current = this->current->next;
	return this->current->data;
}

inline void* List2D_replaceCurrent(List2D *this, void *data) {
	if ((! this->current) || (List2D_isEmpty(this))) return NULL;
	
	this->current->data = data;
	return data;
}

inline size_t List2D_getCount(List2D *this) { return this->count; }
inline bool List2D_isEmpty(List2D *this) { return (this->count) ? false : true; }

inline void	List2D_enumerate(List2D *this) {
	this->enumer = this->first;
}

inline bool	List2D_hasNext(List2D *this) {
	return (this->enumer) ? true : false;
}

inline void* List2D_next(List2D *this) {
	void *data = this->enumer->data;
	this->enumer = this->enumer->next;
	return data;
}
