/*
 * File:   coTypes.h
 * Author: darek
 *
 * Created on 28 październik 2013, 22:28
 */

#ifndef COTYPES_H
#define	COTYPES_H

#ifdef	__cplusplus
extern "C" {
#endif
	
	#include <sys/types.h>

	typedef u_int8_t u8;
	typedef u_int8_t b8;	// boolean type
	#define true	1
	#define false	0

	typedef u_int16_t u16;
	typedef u_int32_t u32;
	typedef u_int64_t u64;

	typedef int8_t s8;
	typedef int16_t s16;
	typedef int32_t s32;
	typedef int64_t s64;
	
	typedef enum co_error co_error;
	typedef struct coClass				coClass;
	typedef struct coObject				coObject;
	typedef struct coString				coString;
	typedef struct coList1D				coList1D;
	typedef struct coList1DItem			coList1DItem;
	typedef struct coList2D				coList2D;
	typedef struct coList2DItem			coList2DItem;
	typedef struct coMemoryInfo			coMemoryInfo;



#ifdef	__cplusplus
}
#endif

#endif	/* COTYPES_H */
