/*      Object containing and managing mevent callbacks.
 * 
 *      MeventCallback.c - this file is part of SDL_Widgets
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
#include "MeventCallback.h"
#include "Object.h"
#include "Static.h"
#include "perr.h"

/// static methods and private typedefs; private or virtual methods implementations
struct MeventCallbackItem {
	void (**handle)(Widget*, Screen*);
	uint count;
	uint size;
};
static void MeventCallback_vprint(void *vthis) { MeventCallback_print(MEVENT_CALLBACK(vthis)); Object_vprint(vthis); }
static void MeventCallback_vdestroy(void *vthis) { MeventCallback_destroy(MEVENT_CALLBACK(vthis)); }
static void MeventCallback_vclone(void *vthis, void *vsrc) { MeventCallback_clone2(MEVENT_CALLBACK(vthis), MEVENT_CALLBACK(vsrc)); }

/// Object type info
static Type type = {
	.size      = sizeof(MeventCallback),
	.name      = "MeventCallback",
	.super_get = Object_gt,
	.vclone	   = MeventCallback_vclone,
	.vprint    = MeventCallback_vprint,
	.vdestroy  = MeventCallback_vdestroy
};

/// Object type info getters
const Type *MeventCallback_t = &type;
const Type *MeventCallback_gt() { return MeventCallback_t; }

/// print only this class fields
void MeventCallback_print(MeventCallback *this) {
	fprintf(stderr, "MeventCallback[this=%p]:\n\
\t.cb:                     %p\n", 
this, this->cb);
}

/// deinitializer
void MeventCallback_destroy(MeventCallback *this) {
	if (this->cb) {
		uchar i = 0;
		for(; i < MOUSE_COUNT; i++) {
			if (this->cb[i].handle) free(this->cb[i].handle);
		}
		free(this->cb);
		this->cb = NULL;
	}
	
	Object_destroy(OBJECT(this));
}

/// constructors
inline MeventCallback* MeventCallback_new() {
	MeventCallback *this = new(&type); if (this) MeventCallback_new2(this); return this;
}

inline MeventCallback* MeventCallback_clone(MeventCallback *src) {
	MeventCallback *this = new(&type); if (this) MeventCallback_clone2(this, src); return this;
}

/// initializers
void MeventCallback_new2(MeventCallback *this) {
	/** Initialize super class with choosen super constructor **/
	Object_new2(OBJECT(this));
	
	/** Do common initialization of current class **/
	this->cb = calloc(MOUSE_COUNT, sizeof(MeventCallbackItem));
	if (! this->cb) {
		_error("MeventCallback_new2", this, "Failed to create this->cb array (calloc failed)\n");
	}
}
void MeventCallback_clone2(MeventCallback *this, MeventCallback *src) {
	/** Initialize super class with choosen super constructor **/
	Object_clone2(OBJECT(this), OBJECT(src));
	
	if (src->cb) {
		if (this->cb = calloc(MOUSE_COUNT, sizeof(MeventCallbackItem))) {
			MeventCallbackItem *item, *src_item;
			uchar i = 0, j;
			for (; i < MOUSE_COUNT; i++) {
				src_item = &(src->cb[i]);
				if (src->cb->handle) {
					item = &(this->cb[i]);
					if (item->handle = calloc(src_item->count, sizeof(void (*)(Widget*, Screen*)))) {
						item->count = item->size = src_item->count;
						for (j = 0; j < src_item->count; j++) 
							item->handle[j] = src_item->handle[j];
					}
					else
						_error("MeventCallback_clone2", this, "Failed to create this->cb[%d]->handle array (calloc failed)\n", i);
				}
			}
		}
		else
			_error("MeventCallback_clone2", this, "Failed to create this->cb array (calloc failed)\n");
	}
}


/// public objective and static methods
perr MeventCallback_addHandler(MeventCallback *this, mevent_type type, void (*cb)(Widget*, Screen*), uint def_size) {
	if ((! cb) || (type >= MOUSE_COUNT) ) return E_INTRO_FAILED;
	MeventCallbackItem *item = &(this->cb[type]);
	if (item->count == item->size) {
		perr e;
		void (**new_array)(Widget*, Screen*) = 
							Static_growArray(	&e,							// error management
												item->handle, 				// array to grow
												&(item->size),				// current size
												item->count,				// position of adding
												item->count,				// count to restore
												(def_size > item->count) ? def_size : 2, // default size
												(uint)0xFFFFFFFF,			// maximum size
												sizeof(void (*)(Widget*, Screen*)),	// sizeof item
												GROW_MEMSET_ZERO);
		if (! new_array) {
			_error("MeventCallback_addHandler", this, "Fatal error occured while creating/growing callback array. Method Static_growArray exited with error %s\n", perr_getName(e));
			return e;
		}
		else 
			item->handle = new_array;
	}
	item->handle[item->count++] = cb;
	return E_NO_ERROR;
}

inline void MeventCallback_callAll(MeventCallback *this, mevent_type type, Widget *sender, Screen *screen) {
	if ((this) && (this->cb) && (this->cb[type].count)) {
		uint i = 0; for(; i < this->cb[type].count; i++) this->cb[type].handle[i](sender, screen);
	}
}

inline bool MeventCallback_hasType(MeventCallback *this, mevent_type type) {
	return ((this) && (this->cb) && (this->cb[type].count));
}

const char *MeventCallback_getMeventName(mevent_type type) {
	switch (type) {
		case MOUSE_CLICK: return "MOUSE_CLICK";
		case MOUSE_PRESS: return "MOUSE_PRESS";
		case MOUSE_RELEASE: return "MOUSE_RELEASE";
		case MOUSE_ENTER: return "MOUSE_ENTER";
		case MOUSE_EXIT: return "MOUSE_EXIT";
		case MOUSE_DRAG: return "MOUSE_DRAG";
		case MOUSE_COUNT: return "MOUSE_COUNT";
		case MOUSE_NONE: return "MOUSE_NONE";
		default : return "UNKNOWN";
	}
}

