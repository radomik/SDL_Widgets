/*
 * File:   coIObject.h
 * Author: darek
 *
 * Created on 24 czerwiec 2014, 17:00
 */

#ifndef COIOBJECT_H
#define	COIOBJECT_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "coObjectModel.h"

/** This is the major problem of current implementation of interfaces
 *  index should be keeped by any class implementing interface */
#define CO_IOBJECT_VTABLE_INDEX	0

#define CO_IOBJECT(V) ((coIObject*)V)
struct coIObject {
	void 		(*destroy)(void *vthis);
	const char* (*toString)(const void *vthis);
};

/** extract const coIObject* entry from any const coObject* object pointer
 * @note no checks for NULL: VTHIS, VTHIS->class, VTHIS->class->vtable, 
 * VTHIS->class->vtable[CO_IOBJECT_VTABLE_INDEX]
 */
#define coIObject_vptr(VTHIS) ( CO_IOBJECT( vptrof(VTHIS, CO_IOBJECT_VTABLE_INDEX) ) )

/** Call coIObject.destroy method from any object implementing coIObject.
 * All objects in current coObjectModel should implement coIObject 
 * @note Macro does not perform any checks
 * @see struct coIObject, coIObject_vptr, coObjectModel.h */
#define coIObject_destroy(VTHIS) ( coIObject_vptr(VTHIS)->destroy(VTHIS) )

/** Call coIObject.toString method from any object implementing coIObject.
 * All objects in current coObjectModel should implement coIObject
 * @note Macro does not perform any checks
 * @see struct coIObject, coIObject_vptr, coObjectModel.h */
#define coIObject_toString(VTHIS) ( coIObject_vptr(VTHIS)->toString(VTHIS) )

#ifdef	__cplusplus
}
#endif

#endif	/* COOBJECT_H */
