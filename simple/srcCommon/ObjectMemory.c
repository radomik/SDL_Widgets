/*      [ Object memory management used by Object and all of files importing Object. ]
 *      ObjectMemory.c - this file is part of SDL_Widgets
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
#include "perr.h"

#ifdef CHECK_OBJECT_LEAKS
#include "List1D.h"
static List1D 		*objlist;
static SDL_mutex 	*mutex;
static size_t 		objmem;
static size_t 		objcount;
static bool   		vbobj = false;
static bool   		objlist_initialized = false;
#endif

/// (public) Initialize Object memory mangement and memory leaks detection
// call by main thread at the program beginning after Memory_init();
// uses op->verbose_construct_destroy from options
perr ObjectMemory_init(options *op) {
	#ifdef CHECK_OBJECT_LEAKS
	if (op) vbobj = op->verbose_construct_destroy;
	mutex = SDL_CreateMutex();
	if (! mutex) return E_OBJECT_failed_to_create_mutex;
	
	objlist = List1D_new();
	if (! objlist) {
		SDL_DestroyMutex(mutex);
		return E_OBJECT_failed_to_alloc_objlist;
	}
	
	objlist_initialized = true;
	#endif
	return E_NO_ERROR;
}

/// (public) Deinitialize Object memory management and 
/// print all detected memory leaks caused by objects (also print fields of undeleted objects)
//  Call by main thread (after all other threads finishes) at program end before Memory_end()
void ObjectMemory_end() {
	#ifdef CHECK_OBJECT_LEAKS
	static const char *_Object_end = 
		"Object_end: WARNING! WARNING! There are some memory leaks.\n\tStill have allocated %lu bytes in %lu objects.\n\n";
	if (objmem) {
		void  	*obj;
		size_t 	ind = 1;
		fprintf(stderr, _Object_end, objmem, objcount);
		List1D_enumerate(objlist);
		while (List1D_hasNext(objlist)) {
			if (obj = List1D_next(objlist)) {
				fprintf(stderr, "\n/*** START Information of %lu of %lu undeleted object ***/\n", ind, objcount);
				structof(obj);
				fprintf(stderr, "/*** END   Information of %lu of %lu undeleted object ***/\n", ind, objcount);
			}
			ind++;
		}
		fprintf(stderr, _Object_end, objmem, objcount);
	}
	else
		fprintf(stderr, "Object_end: Deleted all objects.\n");
	objlist_initialized = false;
	delete(objlist);
	SDL_DestroyMutex(mutex);
	objlist = NULL;
	#endif
}

/// (public) Print current object count and memory allocated by their structs
inline void ObjectMemory_printUsage() {
	#ifdef CHECK_OBJECT_LEAKS
	static const char *vbInfo  = "@@@ Allocated %lu bytes in %lu objects.\n";
	pthread_mutex_lock(&mutex);
	fprintf(stderr, vbInfo, objmem, objcount);
	pthread_mutex_unlock(&mutex);
	#endif
}

// (private) - used by new() @ Object.c
inline void ObjectMemory_addInfo(void *vthis) {
	#ifdef CHECK_OBJECT_LEAKS
	if ((objlist_initialized) && (vthis)) {
		pthread_mutex_lock(&mutex);
		objmem += typesize(vthis);
		objcount++;
		List1D_addLast(objlist, vthis, true);
		if (vbobj) 
			fprintf(stderr, "Creating:   %20s @ %p [size=%5lu, mem=%8lu, obj=%8lu]\n", typename(vthis), vthis, typesize(vthis), objmem, objcount);
		pthread_mutex_unlock(&mutex);
	}
	#endif
}

// (private) - used by delete() @ Object.c
void* ObjectMemory_delInfo(void *vthis) {
	//_error("object_memory_delInfo", vthis, "Deleting %s @ %p, inited=%d.\n", typename(vthis), vthis, objlist_initialized);
	#ifdef CHECK_OBJECT_LEAKS
	if (objlist_initialized) {
		void *obj;
		pthread_mutex_lock(&mutex);
		if (! (obj = List1D_removeByData(objlist, vthis))) {
			//_error("object_memory_delInfo", vthis, "Already removed.\n");
			// obiekt o podanym wskaźniku został już usunięty
			pthread_mutex_unlock(&mutex);
			return NULL;
		}
		objmem -= typesize(vthis);
		objcount--;
		if (vbobj)
			fprintf(stderr, "Destroying: %20s @ %p [size=%5lu, mem=%8lu, obj=%8lu]\n", 
				typename(vthis), vthis, typesize(vthis), objmem, objcount);
		pthread_mutex_unlock(&mutex);
		return obj;
	}
	else {
		if (vthis == objlist) return vthis;
		else {
			//_error("object_memory_delInfo", vthis, "not initialized.\n");
			return NULL;
		}
	}
	#endif
}

