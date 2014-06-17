/*
 * File:   coClass.h
 * Author: darek
 *
 * Created on 15 czerwiec 2014, 00:10
 */

#ifndef COCLASS_H
#define	COCLASS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "coTypes.h"

struct coClass {
	const void			**vtable;
	const size_t		size;
	const char 			*name;
};

#ifdef	__cplusplus
}
#endif

#endif	/* COCLASS_H */
