/*
 *      Static.h - this file is part of SDL_Widgets
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

#ifndef _Static_h_
	#define _Static_h_
	#include "StdDefinitions.h"
	#include "Types.h"
	#include "perr.h"
	
	/** ####################################################### 					**/
	/**  					class Static											**/
	/** Attributes: static class, NOT thread safe (global variables with no mutex)	**/
	
	extern const char *true_str;
	extern const char *false_str;
	extern const char *null_str;
	extern const char *vertical_str;
	extern const char *horizontal_str;
	#define Bool_toString(VAL) ((VAL)?(true_str):(false_str))
	#define Static_PointInside(X, Y, XMIN, XMAX, YMIN, YMAX) (((X)>=(XMIN))&&((Y)>=(YMIN))&&((X)<=(XMAX))&&((Y)<=(YMAX)))
	#define CSTR(CONST_PCHAR) ((CONST_PCHAR)?(CONST_PCHAR):(null_str))
	#define Layout_toString(LAYOUT) (((LAYOUT)==VERTICAL)?(vertical_str):(horizontal_str))
	
	void _error(const char *fname, void *this, const char *format, ...);
	void _error2(const char *fname, const char *format, ...);
	
	inline bool Static_fileExist(char *path);
	
	/** SDL Pixels manipulation **/
	#define Static_get24bit_pixel(UCHAR_PTR)			((SDL_BYTEORDER==SDL_LIL_ENDIAN) ? (((UCHAR_PTR)[0])|(((UCHAR_PTR)[1])<<8)|(((UCHAR_PTR)[2])<<16)) : ((((UCHAR_PTR)[0])<<16)|(((UCHAR_PTR)[1])<<8)|((UCHAR_PTR)[2])))
	#define Static_set24bit_pixel(UCHAR_PTR, UINT_VAL)	((SDL_BYTEORDER==SDL_LIL_ENDIAN) ? (((UCHAR_PTR)[0])=(UINT_VAL)&0xFF, ((UCHAR_PTR)[1])=((UINT_VAL)>>8)&0xFF, ((UCHAR_PTR)[2])=((UINT_VAL)>>16)&0xFF) : (((UCHAR_PTR)[0])=((UINT_VAL)>>16)&0xFF, ((UCHAR_PTR)[1])=((UINT_VAL)>>8)&0xFF, ((UCHAR_PTR)[2])=(UINT_VAL)&0xFF) )
	
	#define Static_set24bit_pixelxy_lock(SURF_PTR, X, Y, UINT_VAL) 																			\
	{																																		\
		if (SDL_MUSTLOCK(SURF_PTR)) SDL_LockSurface(SURF_PTR);																				\
		Static_set24bit_pixel((((uchar*)(SURF_PTR)->pixels)+(Y)*(SURF_PTR)->pitch+(X)*(SURF_PTR)->format->BytesPerPixel), UINT_VAL);		\
		if (SDL_MUSTLOCK(SURF_PTR)) SDL_UnlockSurface(SURF_PTR);																			\
	}
	
	#define Static_set32bit_pixelxy_lock(SURF_PTR, X, Y, UINT_VAL) 																			\
	{																																		\
		if (SDL_MUSTLOCK(SURF_PTR)) SDL_LockSurface(SURF_PTR);																				\
		*((uint*)(((SURF_PTR)->pixels)+(Y)*(SURF_PTR)->pitch+(X)*(SURF_PTR)->format->BytesPerPixel)) = UINT_VAL;							\
		if (SDL_MUSTLOCK(SURF_PTR)) SDL_UnlockSurface(SURF_PTR);																			\
	}
	/**/
	
	/** uint RGB value <-> SDL_Color struct conversion **/
	/** Screen surface format is used as mask source **/
	inline uint 		Static_rgbFromColor(SDL_Color *color_struct);
	inline void 		Static_getColorFromRGB(SDL_Color *color_struct, uint rgb_value);
	/**/
	
	inline SDL_Surface*	Static_CopySurface(SDL_Surface* src);
	
	SDL_Surface* 		Static_NewSurface(usint w, usint h);
	SDL_Surface* 		Static_NewTransparentSurface(usint w, usint h);
	
	ButtonImage* 		Static_getArrowUpButton();
	ButtonImage* 		Static_getArrowDnButton();
	
	// function returns true if all of pointers to check are other than NULL
	// function returns false when first NULL pointer is found,
	// therefore it also prints 4 first this function parameters
	// and number (starting from 0) of found NULL pointer
	bool checkPointers(		const char *func_name, 		// function name
							const char *file_name, 		// file name
							int 		line, 			// file line
							uint 		ptr_count, 		// count of pointers
							...							// pointers
						);
							
	// called by Screen_MainDestroy() on program termination 
	inline void Static_quit();
	
	// Grow any dynamic 1D array
	// Parameters:
	// e              - optional pointer to perr type variable (for error information)
	// array          - dynamic array base pointer, when passed NULL pointer
	//                  new array of def_size (filled with zeros) is created
	// ext_size       - pointer to external variable with current array size
	// new_pos        - position wanted to be covered by array 
	//                  (new_pos ought to be not less than current size of array)
	// curr_count     - current count of valid items in array to be copied on reallocation
	// def_size       - default size of array (allocated first time)
	// max_size       - maximal size of array
	// item_size      - sizeof single item of array
	// flag			  - bitwise alternative of following:
	//					GROW_NOFLAG == 0 -- use realloc to grow array, do not 
	//										fill with zeros newly created space
	//					GROW_REALLOC     -- same as GROW_NOFLAG
	//					GROW_MEMSET_ZERO -- fill with zeros newly created space
	//										only useful as GROW_REALLOC|GROW_MEMSET_ZERO
	//										or GROW_MEMSET_ZERO
	//					GROW_CALLOC		 -- create new array with calloc, then copy 
	//										existing items and free old array
	//
	// On success:
	// Function returns pointer to newly created/reallocated array
	// 1st parameter (if not NULL) is set to E_NO_ERROR
	// 3rd parameter is changed to new size of array
	// All of items up to curr_count-1 index are copied, new space is filled with zeros.
	// 
	// 
	// On error:
	// Third parameter (ext_size) is unchanged.
	// Function returns NULL pointer and appropiate error is stored in first parameter (e) if it isn't NULL.
	// Returned errors:
	//	E_ARRAY_GROW_INTRO_FAILED        - NULL: ext_size; new_pos below *ext_size; Equal 0: def_size or item_size
	//	E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX  - passed def_size > max_size when *ext_size == 0
	//	E_ARRAY_GROW_EXCEED_MAX_SIZE     - exceed max_size or exceed size variable numeric range
	//	E_ARRAY_GROW_BAD_REALLOC or E_ARRAY_GROW_BAD_CALLOC - failed to allocate new array
	//  E_ARRAY_GROW_BAD_FLAG            - flag is not valid
	#define GROW_NOFLAG 		0x00
	#define GROW_REALLOC		0x01
	#define GROW_CALLOC			0x02
	#define GROW_MEMSET_ZERO	0x04
	void* Static_growArray(	perr *e, void *array, uint *ext_size, 
							uint new_pos, uint curr_count,
							const uint def_size, const uint max_size,
							const size_t item_size, uchar flag);
	/** ####################################################### 					**/
#endif
