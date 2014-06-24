/*
 * File:   coObject.h
 * Author: darek
 *
 * Created on 29 październik 2013, 00:53
 */

#ifndef COOBJECT_H
#define	COOBJECT_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "coCommon.h"

#define CO_OBJECT(VTHIS) ((coObject*)VTHIS)

struct coObject {
	const 	coClass 	*class;
};

/** override void coIObject.destroy(void *vthis) */
void coObject_coIObject_vdestroy(void *vthis);

/** override const char* coIObject.toString(const void *vthis) 
 * @note to call toString use macro toString() from coObjectModel.h instead */
const char* coObject_coIObject_vtoString(const void *vthis);

coObject* coObject_new(coObject *this);
coObject* coObject_copy(coObject *this, const coObject *src);

/** Call this method from derived class destructors
 * 
 * @note it is safe as long as coObject_coIObject_vdestroy() is empty */
#define coObject_vdestroy(VTHIS) { }

#ifdef	__cplusplus
}
#endif

#endif	/* COOBJECT_H */
