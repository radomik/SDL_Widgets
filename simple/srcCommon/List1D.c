/*      Generic single linked list 
 * 
 *      List1D.c - this file is part of SDL_Widgets
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
#include "List1D.h"
#include "Object.h"
#include "Static.h"

/// static methods and private typedefs; private or virtual methods implementations
struct List1DItem {
	void 				*data;
	struct List1DItem	*next;
};
static void List1D_vdestroy(void *vthis) { List1D_destroy(LIST1D(vthis)); }
static void List1D_vclone(void *vthis, void *vsrc) { List1D_clone2(LIST1D(vthis), LIST1D(vsrc)); }

/// Object type info
static Type type = {
	.size      = sizeof(List1D),
	.name      = "List1D",
	.super_get = Object_gt,
	.vclone	   = List1D_vclone,
	.vprint    = List1D_vprint,
	.vdestroy  = List1D_vdestroy
};

/// Object type info getters
const Type *List1D_t = &type;
const Type *List1D_gt() { return List1D_t; }

/// print only this class fields
void List1D_print(List1D *this) {
	fprintf(stderr, "List1D[this=%p]:\n\
\t.current:                %p\n\
\t.first:                  %p\n\
\t.last:                   %p\n\
\t.count:                  %lu\n\
\t.free_data_on_destroy    %s\n", 
this, this->current, this->first, this->last, this->count, Bool_toString(this->free_data_on_destroy));
}
inline void List1D_vprint(void *vthis) { List1D_print(LIST1D(vthis)); Object_vprint(vthis); }

/// deinitializer
void List1D_destroy(List1D *this) {
	if (! List1D_isEmpty(this)) {
		List1DItem *temp;
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
inline List1D* List1D_new() {
	List1D *this = new(&type); if (this) List1D_new2(this); return this; 
}

/// initializers
/** Do common initialization of direct super class and of current class object **/
/** Constructor can be used by classes inheriting from current class           **/
/** or by self class constructor after create this pointer                     **/
inline void List1D_new2(List1D *this) {
	/** Initialize super class with choosen super constructor **/
	Object_new2(OBJECT(this));
	
	/** Do common initialization of current class **/
	// nothing
}


void List1D_clone2(List1D *this, List1D *src) {
	Object_clone2(OBJECT(this), OBJECT(src));
	this->free_data_on_destroy = src->free_data_on_destroy;
	if (src->count) {
		List1DItem *temp = src->first;
		while (temp) {
			List1D_addLast(this, temp->data, ((src->current) && (src->current->data == temp->data)));
			temp = temp->next;
		}
	}
}

/// public objective and static methods

void* List1D_addLast(List1D *this, void *data, bool change_current) {
	//fprintf(stderr, "List1D_addLast[this=%p]: data=%p\n", this, data);
	List1DItem *new_item = malloc(sizeof(List1DItem));
	if (! new_item) return NULL;
	new_item->data = data;
	new_item->next = NULL;
	if (this->last) {
		this->last->next = new_item;
		this->last = new_item;
	}
	else {
		this->last = this->first = new_item;
	}
	this->count++;
	if (change_current) this->current = new_item;
	return data;
}

void* List1D_addFirst(List1D *this, void *data, bool change_current) {
	List1DItem *new_item = malloc(sizeof(List1DItem));
	if (! new_item) return NULL;
	new_item->data = data;
	if (this->first) {
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

inline static void List1D_removeByItem(List1D *this, List1DItem *prev, List1DItem *actual) {
	if (this->current == actual) this->current = actual->next;
	if (prev) {
		prev->next = actual->next;
	}
	else {
		this->first = actual->next;
	}
	if (! actual->next) this->last = prev;
	
	this->count--;
	free(actual);
}

void* List1D_removeByData(List1D *this, void *data) {
	//fprintf(stderr, "List1D_removeByData[this=%p]: data=%p\n", this, data);
	if (List1D_isEmpty(this)) return NULL;
	List1DItem *actual = this->first;
	List1DItem *prev   = NULL;
	while (actual != NULL) {
		if (actual->data == data) {
			List1D_removeByItem(this, prev, actual);
			return data;
		}
		prev   = actual;
		actual = actual->next;
	}
	return NULL;
}


void* List1D_removeByIndex(List1D *this, size_t index) {
	if (index >= this->count) return NULL;
	List1DItem 	*prev = NULL;
	List1DItem 	*actual = this->first;
	void 		*data;
	size_t i = 0; for (; i < index; i++) { prev = actual; actual = actual->next; }
	data = actual->data;
	List1D_removeByItem(this, prev, actual);
	return data;
}

void* List1D_removeByCurrent(List1D *this) {
	if ((! this->current) || (List1D_isEmpty(this))) return NULL;
	List1DItem 	*prev = this->first;
	void *data = this->current->data;
	while ((prev) && (prev->next) && (prev->next != this->current)) { prev = prev->next; }
	if ((! prev) || (! prev->next)) return NULL;
	List1D_removeByItem(this, prev, this->current);
	return data;
}

void* List1D_seekCurrentToData(List1D *this, void *data) {
	if (List1D_isEmpty(this)) return NULL;
	List1DItem *temp = this->first;
	while (temp != NULL) {
		if (temp->data == data) { 
			this->current = temp; 
			return data; 
		}
	}
	return NULL;
}

void* List1D_seekCurrentToIndex(List1D *this, size_t index) {
	if (index >= this->count) return NULL;
	List1DItem *temp = this->first;
	size_t i = 0; for (; i < index; i++) temp = temp->next;
	this->current = temp;
	return temp->data;
}

inline void* List1D_seekCurrentToFirst(List1D *this) { 
	if (this->current == this->first) return NULL;
	this->current = this->first; return (this->first) ? this->first->data : NULL; 
}

inline void* List1D_seekCurrentToLast(List1D *this) {
	if (this->current == this->last) return NULL; 
	this->current = this->last; return (this->last) ? this->last->data : NULL; 
}

void* List1D_seekCurrentToPrevious(List1D *this) {
	if ((List1D_isEmpty(this)) || (this->current == this->first)) return NULL;
	List1DItem 	*prev = this->first;
	while ((prev) && (prev->next) && (prev->next != this->current)) { prev = prev->next; }
	if ((! prev) || (! prev->next)) {
		this->current = NULL;
		return NULL;
	}
	this->current = prev;
	return this->current->data;
}

void* List1D_seekCurrentToNext(List1D *this) {
	if ((List1D_isEmpty(this)) || (this->current == this->last)) return NULL;
	this->current = this->current->next;
	return this->current->data;
}

inline void* List1D_replaceCurrent(List1D *this, void *data) {
	if ((! this->current) || (List1D_isEmpty(this))) return NULL;
	
	this->current->data = data;
	return data;
}

inline size_t List1D_getCount(List1D *this) { return this->count; }
inline bool List1D_isEmpty(List1D *this) { return (this->count) ? false : true; }

inline void	List1D_enumerate(List1D *this) {
	this->enumer = this->first;
}

inline bool	List1D_hasNext(List1D *this) {
	return (this->enumer) ? true : false;
}

inline void* List1D_next(List1D *this) {
	//_error("List1D_next", this, "enumer=%p, enumer->data=%p\n", this->enumer, (this->enumer)?this->enumer->data:NULL);
	void *data = this->enumer->data;
	this->enumer = this->enumer->next;
	return data;
}

