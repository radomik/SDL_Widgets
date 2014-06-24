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
#include "coIObject.h"
#include "coClass.h"

/** definied in coObjectModel.c */
extern const char *TO_STRING_NULL_THIS_STR;

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
 * 
 * @note	Method does not perform any checks for NULL:
 * 		 VTHIS, VTHIS->class, VTHIS->class->vtable, VTHIS->class->vtable[CO_IOBJECT_VTABLE_INDEX]
 * @see coIObject.h
 */
void* delete(void *vthis);

/** Allocate space for dynamic object
 * @param	CLASS	(const coClass*) class descriptor 
 * @return	pointer to allocated space of CLASS->size bytes
 * 			which should be deleted by caller
 */
#define new(CLASS) 				malloc(CLASS->size)

#define classof(VTHIS) 			(CO_OBJECT(VTHIS)->class)

#define vptrof(VTHIS, INDEX) 	(CO_OBJECT(VTHIS)->class->vtable[INDEX])

#define classname(VTHIS) 		(classof(VTHIS)->name)

#define toString(VTHIS) 		((VTHIS) ? (coIObject_toString(VTHIS)) : (TO_STRING_NULL_THIS_STR))


#ifdef	__cplusplus
}
#endif

#endif
