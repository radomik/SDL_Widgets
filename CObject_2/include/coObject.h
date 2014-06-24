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

#define coObject_new(VTHIS) { }
#define coObject_vdestroy(VTHIS) { }
#define coObject_copy(VTHIS, VSRC) { }

#ifdef	__cplusplus
}
#endif

#endif	/* COOBJECT_H */
