/*
 * File:   coObjectModel.h
 * Author: darek
 *
 * Created on 15 czerwiec 2014, 01:37
 */

#ifndef COOBJECTMODEL_H
#define COOBJECTMODEL_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "coCommon.h"
#include "coObject.h"
#include "coClass.h"


/** Set current object class descriptor
 * @param	VTHIS 	(void*) any class directly or indirectly inheriting from coObject
 * @param	CLASS	(const coClass*) class descriptor 
 * @return none
 */
#define class_init(VTHIS, CLASS) 	CO_OBJECT(VTHIS)->class = CLASS

/** Call virtual destructor of current object
 * @param	VTHIS 	(void*) any class directly or indirectly inheriting from coObject
 * 
 * @return  VTHIS if VTHIS != NULL, otherwise NULL
 * @note 	method does not delete allocated space, for dynamic objects use: free(delete(obj));
 */
void* delete(void *vthis);

/** Allocate space for dynamic object
 * @param	CLASS	(const coClass*) class descriptor 
 * @return	pointer to allocated space of CLASS->size bytes
 * 			which should be deleted by caller
 */
#define new(CLASS) 				malloc(CLASS->size)

/** Get class descriptor of object
 * @param	vthis 	(void*) any class directly or indirectly inheriting from coObject
 * @return 	(const coClass*) class descriptor of vthis (NULL if vthis is NULL)
 */
const coClass* classof(const void *vthis);

#define classof_fast(VTHIS) (CO_OBJECT(VTHIS)->class)

/** Get vtable of object
 * @param	vthis 	(void*) any class directly or indirectly inheriting from coObject
 * @return 	(const void**) array of void* virtual function pointers
 */
const void **vtableof(const void *vthis);

/** Get given index of vptr or NULL if:
 * vthis = NULL, vtable == NULL, vtable[index] == NULL
 */
const void *vptrof(const void *vthis, u32 index);
#define vptrof_fast(VTHIS, INDEX) (CO_OBJECT(VTHIS)->class->vtable[INDEX])

const char *classname(const void *vthis);

#define classname_fast(VTHIS) (classof_fast(VTHIS)->name)

#ifdef	__cplusplus
}
#endif

#endif
