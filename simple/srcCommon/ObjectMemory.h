/*      [ Object memory management used by Object and all of files importing Object. ]
 *      ObjectMemory.h - this file is part of SDL_Widgets
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
#ifndef _ObjectMemory_h_
	#define _ObjectMemory_h_
	#include "Types.h"
	#include "StdDefinitions.h"
	
	/** ####################################################### **/
	/**  					class ObjectMemory					**/
	/** Attributes: static class, thread safe					**/
	
	/// All of these methods require CHECK_OBJECT_LEAKS to be definied
	/// if it's not definied methods does nothing 
	/// and returns 0 if have return value
	
	/// (public) Initialize Object memory mangement and memory leaks detection
	// call by main thread at the program beginning after Memory_init();
	// uses op->verbose_construct_destroy from options
	perr 		ObjectMemory_init(options *op);
	
	/// (public) Deinitialize Object memory management and 
	/// print all detected memory leaks caused by objects (also print fields of undeleted objects)
	//  Call by main thread (after all other threads finishes) at program end before Memory_end()
	void 		ObjectMemory_end();
	
	/// (public) Print current object count and memory allocated by their structs
	inline void ObjectMemory_printUsage();
	
	// (private) - used by new() @ Object.c
	inline void ObjectMemory_addInfo(void *vthis);
	
	// (private) - used by delete() @ Object.c
	void* ObjectMemory_delInfo(void *vthis);
	
	/** ####################################################### **/
#endif
