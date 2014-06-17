/*      [ Object is a root class for any other classes. ]
 *      Object.c - this file is part of SDL_Widgets
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
#include "Object.h"
#include "Memory.h"

/** Returns .type field with error checking */
inline const char *Object_getType(Object *this) {
	return (this)?CSTR(this->type):"(null)";
}

static void Object_vdestroy(void *vthis) {
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "Object_vdestroy", Object_getType(vthis), vthis);
/*
	fprintf(stderr, 
"Object_vdestroy[vthis=%p, type=%s]: WARNING. Called pure virtual destructor. \
This shouldn't happen. Any class inheriting from Object should overwrite virtual method object.vdestroy\n", vthis, Object_getType((Object*)vthis)); 
*/
}

/** Initialization method called by classes directly inheriting from Object
 * method name "init_type" is only convention 
 * second parameter is function pointer of virtual destructor replacement */
void Object_init_type(Object *this, void (*vdestroy) (void* vthis), const char *type) {
	if (this) {
		this->vdestroy = (vdestroy)?(vdestroy):Object_vdestroy;
		this->type = type;
		if (VERBOSE_CREATE)
			fprintf(stderr, "%30s: Creating %s@%p\n", "Object_init_type", Object_getType(this), this);
	}
	else
		fprintf(stderr, "Object_init_type: Passed NULL this pointer\n");
}

/** Copy constructor (called by classes directly inheriting from Object) */
inline void Object_copy(Object *object_dst, Object *object_src) {
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Object_copy", Object_getType(object_src), object_dst);
	object_dst->vdestroy = object_src->vdestroy;
	object_dst->type	 = object_src->type;
}

/** Destructor called by classes directly inheriting from Object */
void Object_destroy(Object *this) {
	/* so far does nothing */
	
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "Object_destroy", Object_getType(this), this);
}

/** Handler of dynamically linked destructor,
 * parameter is any kind of object pointer */
void* delete(void *vthis) {
	if ((vthis) && (((Object*)vthis)->vdestroy))
		((Object*)vthis)->vdestroy(vthis);
	else
		fprintf(stderr, "delete: vthis(%p) or vthis->vdestroy(%p) is NULL\n", vthis, (vthis)?((Object*)vthis)->vdestroy:NULL);
	return vthis;
}
