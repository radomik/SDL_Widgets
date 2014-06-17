/*
 * File:   coCommon.h
 * Author: darek
 *
 * Created on 28 październik 2013, 22:27
 */

#ifndef COCOMMON_H
#define	COCOMMON_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <limits.h>
#include "coTypes.h"

#define U32_INF			UINT_MAX
#define U16_INF			USHRT_MAX
#define U64_INF			ULONG_LONG_MAX

/* Set/Get value of bit in number */
#define		coSetFlag(PTR, SEL, MASK) ((void)((PTR)?((SEL)?((PTR)->flags |= (MASK)):((PTR)->flags &= ~(MASK))):(0)))
#define		coGetFlag(PTR, MASK)	  ((PTR)?(((PTR)->flags & (MASK))?(1):(0)):(0))

#ifdef	__cplusplus
}
#endif

#endif	/* COCOMMON_H */
