/*      [ Object is a root abstract class for any other classes. ]
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
#include "Types.h"
#include "StdDefinitions.h"
#include "Memory.h"
#include "Object.h"
#include "ObjectMemory.h"
#include "Static.h"
#include "perr.h"

/// static methods and private typedefs; private or virtual methods implementations

/// Object type info
static Type type = {
	.size 		= 0,		// class Object is abstract
	.super 		= NULL,		// Object have no super class
	.name		= "Object",
	.vclone		= NULL,		// shallow copy will be used if inheriting class does not speccify self
	.vprint		= Object_vprint,
	.vdestroy	= NULL, 	// Object have nothing to destroy
	.inited		= FALSE,
};

/// Object type info getters
const Type *Object_t = &type;
const Type *Object_gt() { return Object_t; }

/// Handler of dynamically linked method Object.type.vprint or Type.vprint
/// call structof() to print all of fields of object (from all classes tree)
inline void structof(void *vthis) {
	(OBJECT(vthis))->type->vprint(vthis);
}

/// Print all of Object fields from given pointer
void Object_print(Object *this) {
	const Type *type = this->type;
	fprintf(stderr, "Object[this=%p]:\n\
\t.type                    %p\n\
\t.type.size               %lu\n\
\t.type.super              %p\n\
\t.type.name               %s\n\
\t.type.vprint             %p\n\
\t.type.vdestroy           %p\n\
\t.type.vclone             %p\n\
\t.type.inited             %s\n", 
	this, type, type->size, type->super, CSTR(type->name), type->vprint, 
	type->vdestroy, type->vclone, Bool_toString(type->inited));
}
inline void Object_vprint(void *vthis) { Object_print(OBJECT(vthis)); }

/// Returns .type field of any object pointer, return value can be compared
/// to real type of object
/// use e.g.: (typeo(object_ptr) == Rectangle_t)
/// returns true if pointer was initialized in Rectangle_new()
inline const Type *typeo(void *vthis) { return (vthis) ? (OBJECT(vthis))->type : NULL; }

/// Returns .type.name which is real type name of object from pointer vthis
inline const char *typename(void *vthis) { return (vthis) ? (((OBJECT(vthis))->type)?(CSTR((OBJECT(vthis))->type->name)):(null_str)) : null_str; }

/// Returns .type.size which is full size of struct of object from pointer vthis
inline const size_t typesize(void *vthis) { return (vthis) ? (((OBJECT(vthis))->type)?((OBJECT(vthis))->type->size):(0)) : 0; }

inline bool has_clone(void *vthis) {
	return (vthis) ? (((OBJECT(vthis))->type)?(((OBJECT(vthis))->type->vclone)?(true):(false)):(false)) : false;
}
		
/// perform cloning 
/// if vsrc is not NULL new object is returned,
/// otherwise NULL is returned
void* clone(void *vsrc) {
	if (! vsrc) {
		_error2("clone", "Passed NULL vsrc object pointer\n");
		return vsrc;
	}
	/** Initialize new object 
	 ** it is safe to omit const modifier here
	 ** because type is already filled **/
	Object *src  = vsrc;
	Object *this = new((Type*)src->type);
	if (! this) {
		_error2("clone", "Failed to create new object from %s @ %p, new() failed\n",
			typename(src), src);
		return this;
	}
	if (src->type->vclone) { // call custom clone method
		src->type->vclone(this, src);
	}
	else { // make a shallow copy of object
		memcpy(this, src, src->type->size);
	}
	
	return this;
	
}

/// initialize Object fields other than .type 
/// [this method should be called from classes directly inheriting from 
/// Object in their constructors]
/// [this method is empty now, however it should be called to provide 
/// compatibility with current objective style]
inline void Object_new2(Object *this) { }

/// initialize Object fields other than .type 
/// [this method should be called from classes directly inheriting from 
/// Object in their copy constructors]
/// [this method is empty now, however it should be called to provide 
/// compatibility with current objective style]
inline void Object_clone2(Object *this, Object *src) { }

/// destroy Object fields other than .type
/// [this method should be called from classes directly inheriting from 
/// Object in their destructors]
/// [this method is empty now, however it should be called to provide 
/// compatibility with current objective style]
inline void Object_destroy(Object *this) { }

// equal 1 if all virtual methods are filled in Type* pointer
#define FILLED_VM(PTYPE) (((PTYPE)->vdestroy) && ((PTYPE)->vprint) && ((PTYPE)->vclone))

// fill Type* pointer virtual methods using any super class Type* pointer
#define FILL_VM(PTYPE, PSUPER)																		\
{																									\
	if ((! (PTYPE)->vdestroy) && ((PSUPER)->vdestroy)) (PTYPE)->vdestroy = (PSUPER)->vdestroy;		\
	if ((! (PTYPE)->vprint) && ((PSUPER)->vprint)) (PTYPE)->vprint = (PSUPER)->vprint;				\
	if ((! (PTYPE)->vclone) && ((PSUPER)->vclone)) (PTYPE)->vclone = (PSUPER)->vclone;				\
}

/// Create new this pointer for any object
/// New this is filled with zeros 
/// Additionally method fills virtual methods from Type pointer
/// when first object of given class is created
void *new(Type *type) {
	if ((! type) || (! type->size)) 
	{	/** Check parameter **/
		_error2("new", "Passed NULL type[%p] parameter or type->size[%lu] == 0  [type->name=%s].\n", 
			type, (type)?(type->size):(0), (type)?(CSTR(type->name)):(null_str));
		return NULL;
	}
	
	/** Allocate new this pointer filled with zeros **/
	Object *this = calloc(1, type->size);
	if (! this) {
		_error2("new", "Failed to allocate object of type[%p](.name=%s, .size=%lu) [calloc failed]\n", 
			type, CSTR(type->name), type->size);
		return this;
	}
	
	/** Fill self type pointer **/
	this->type = type;
	
	/** Add info of new object to list of objects **/
	#ifdef CHECK_OBJECT_LEAKS
	ObjectMemory_addInfo(this);
	#endif
	
	/** If object of this type is first time created fill in virtual methods
	 * in struct Type using @param type and structs Type from superclasses **/
	if (! type->inited) {
		const Type *super = type->super_get();	// get first super class type pointer (const)
		type->super = super;
		while ((super) && (! FILLED_VM(type))) {
			FILL_VM(type, super);
			super = super->super;
		}
		type->inited = TRUE;
	}
	
	/** Return ready to use this pointer as void* **/
	return this;
}

/// Handler of dynamically linked destructor,
/// parameter is any kind of dynamic object pointer
void delete(void *vthis) {
	//_error("delete", vthis, "Deleting %s @ %p\n", typename(vthis), vthis);
	if (! vthis) return;
	#ifdef CHECK_OBJECT_LEAKS
	void *obj = ObjectMemory_delInfo(vthis);
	//_error("delete", vthis, "found obj=%p, vthis=%p\n", obj, vthis);
	if (obj == vthis) {
		if ((OBJECT(vthis))->type->vdestroy) (OBJECT(vthis))->type->vdestroy(vthis);
		free(vthis);
	}
	#endif
}
