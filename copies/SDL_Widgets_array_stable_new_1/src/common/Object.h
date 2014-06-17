/*      [ Object is a root class for any other classes. ]
 *      Object.h - this file is part of SDL_Widgets
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
#ifndef _Object_h_
	#define _Object_h_
	#include "StdDefinitions.h"
	
	struct Object {
		void		(*vdestroy) (void* vthis);		// dynamically linked destructor
		//! String str_id;							// (future) used for toStrings methods
		const char	*type;							// pointer to existing const char* real type name
	};
	
	/** Initialization method called by classes directly inheriting from Object
	 * method name "init_type" is only convention 
	 * second parameter is function pointer of virtual destructor replacement */
	void Object_init_type(Object *this, void (*vdestroy) (void* vthis), const char *type);
	
	/** Copy constructor (called by classes directly inheriting from Object) */
	inline void Object_copy(Object *object_dst, Object *object_src);
	
	/** Destructor called by classes directly inheriting from Object */
	void Object_destroy(Object *this);
	
	/** Returns .type field with error checking */
	inline const char *Object_getType(Object *this);
	
	/** Handler of dynamically linked destructor,
	 * parameter is any kind of object pointer */
	void* delete(void *vthis);
	
#endif
