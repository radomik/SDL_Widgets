/*      [ Object is a root abstract class for any other classes. ]
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
	#include "Types.h"
	
	
	/** ####################################################################### **/
	/**  					class Object 										**/
	/** Attributes: abstract, cloneable  										**/
	#define 			OBJECT(VTHIS) ((Object*)VTHIS)
	extern const Type  *Object_t;
	inline const Type  *Object_gt(); 	/** getter of Object_t 	**/
	struct Object {
		const Type	*type;
	};
	/** ####################################################################### **/
	
	
	/** Every class should have it own struct Type as static variable
	 * filled with class info:
	 * 		vprint - virtual method impl. printing all of fields 
	 * 				 of class struct then call SuperClassName_print((SuperClassName*)this);
	 * 				 .vprint can be NULL if class have no fields to print
	 * 		vdestroy -  virtual method impl. destructing object
	 * 					it can be NULL if nothing to destroy and class
	 * 					uses parent class destructor
	 * 		name	 - name of class normally is c-string containing class name
	 * 		size     - sizeof(ClassStruct);
	 */
	struct Type {
		// full size of struct of object
		// read-only, initialize on compile time [not important for abstract classes]
		const size_t		size;		
		
		// super class Type info pointer (for Object is NULL)
		// read-only, initialize on first call to new() using super_get() below			
		const struct Type	*super;
		
		// class name
		// read-only, initialize on compile time [not important for abstract classes]
		const char 			*name;
		
		// Method used to retrieve super class pointer (not available on compile time via e.g. Object_t)
		// otherwise fill this method with e.g. Object_gt
		// cannot be NULL
		const struct Type*	(*super_get)(void);
		
		// cloning function (if NULL then clone() does only shallow copy of object)
		// it can be inherited
		void				(*vclone)(void *vthis, void* vsrc);
		
		// vprint implementation 
		// if equal NULL can be updated on first call to new(String_t) [can be NULL or custom vprint impl. ]
		// it can be inherited
		void				(*vprint)(void *vthis);	
		
		// vdestroy (destructor) implementation
		// if equal NULL can be updated on first call to new(String_t) [can be NULL or custom vdestroy impl. ]	
		// it can be inherited
		void				(*vdestroy)(void *vthis);
		
		// changed to true by first call to new(String_t)  [not important for abstract classes]
		// works as boolean, set to NULL in code
		// shouldn't be set by hand in any class type descriptor
		void				*inited; 
	};
	
	/// initialize Object fields other than .type 
	/// [this method should be called from classes directly inheriting from 
	/// Object in their constructors]
	/// [this method is empty now, however it should be called to provide 
	/// compatibility with current objective style]
	inline void Object_new2(Object *this);

	/// initialize Object fields other than .type 
	/// [this method should be called from classes directly inheriting from 
	/// Object in their copy constructors]
	/// [this method is empty now, however it should be called to provide 
	/// compatibility with current objective style]
	inline void Object_clone2(Object *this, Object *src);

	/// destroy Object fields other than .type
	/// [this method should be called from classes directly inheriting from 
	/// Object in their destructors]
	/// [this method is empty now, however it should be called to provide 
	/// compatibility with current objective style]
	inline void Object_destroy(Object *this);
	
	/// Print all of fields of given object (including all subclasses)
	/// This is handler to dynamically linked method this->type->vprint
	inline void structof(void *vthis);

	/// Print only fields of Object class object 
	/// (called by vprint implementations in classes directly inheriting from Object)
	void Object_print(Object *this);
	inline void Object_vprint(void *vthis);

	/// Returns .type field of any object pointer, return value can be compared
	/// to real type of object
	/// use e.g.: (typeo(object_ptr) == Rectangle_t)
	/// returns true if pointer was initialized in Rectangle_new()
	inline const Type *typeo(void *vthis);

	/// Returns .type.name which is real type name of object from pointer vthis
	inline const char *typename(void *vthis);

	/// Returns .type.size which is full size of struct of object from pointer vthis
	inline const size_t typesize(void *vthis);
	
	/// Cloning functions
	
		/// returns true if object has custom cloning constructor
		/// false if clone() does only shallow copy
		inline bool has_clone(void *vthis);
		
		/// perform cloning 
		/// if vsrc is not NULL new object is returned,
		/// otherwise NULL is returned
		void*	clone(void *vsrc); 
	
	/// Create new this pointer for any object
	/// New this is filled with zeros 
	/// Additionally method fills virtual methods from Type pointer
	/// when first object of given class is created
	/// !!!!!!!!!! IMPORTANT !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	/// !!! This method can be called only from within  !!!
	/// !!! non-abstract classes constructors           !!!
	/// !!! cannot be called from outside code          !!!
	/// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	void *new(Type *type);
	
	/// Handler of dynamically linked destructor,
	/// parameter is any kind of dynamic object pointer
	void delete(void *vthis);
	
#endif
