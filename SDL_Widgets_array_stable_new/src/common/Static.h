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
	#include "perr.h"
	
	#define Static_get24bit_pixel(UCHAR_PTR)			((SDL_BYTEORDER==SDL_LIL_ENDIAN) ? (((UCHAR_PTR)[0])|(((UCHAR_PTR)[1])<<8)|(((UCHAR_PTR)[2])<<16)) : ((((UCHAR_PTR)[0])<<16)|(((UCHAR_PTR)[1])<<8)|((UCHAR_PTR)[2])))
	#define Static_set24bit_pixel(UCHAR_PTR, UINT_VAL)	((void)((SDL_BYTEORDER==SDL_LIL_ENDIAN) ? (((UCHAR_PTR)[0])=(UINT_VAL)&0xFF, ((UCHAR_PTR)[1])=((UINT_VAL)>>8)&0xFF, ((UCHAR_PTR)[2])=((UINT_VAL)>>16)&0xFF) : (((UCHAR_PTR)[0])=((UINT_VAL)>>16)&0xFF, ((UCHAR_PTR)[1])=((UINT_VAL)>>8)&0xFF, ((UCHAR_PTR)[2])=(UINT_VAL)&0xFF) ))
	
	#define Static_set24bit_pixelxy_lock(SURF_PTR, X, Y, UINT_VAL) 																			\
	{																																		\
		if (SDL_MUSTLOCK(SURF_PTR)) SDL_LockSurface(SURF_PTR);																				\
		Static_set24bit_pixel((((u8*)(SURF_PTR)->pixels)+(Y)*(SURF_PTR)->pitch+(X)*(SURF_PTR)->format->BytesPerPixel), UINT_VAL);		\
		if (SDL_MUSTLOCK(SURF_PTR)) SDL_UnlockSurface(SURF_PTR);																			\
	}
	
	#define Static_set32bit_pixelxy_lock(SURF_PTR, X, Y, UINT_VAL) 																			\
	{																																		\
		if (SDL_MUSTLOCK(SURF_PTR)) SDL_LockSurface(SURF_PTR);																				\
		*((u32*)(((SURF_PTR)->pixels)+(Y)*(SURF_PTR)->pitch+(X)*(SURF_PTR)->format->BytesPerPixel)) = UINT_VAL;							\
		if (SDL_MUSTLOCK(SURF_PTR)) SDL_UnlockSurface(SURF_PTR);																			\
	}
	
	#define Static_pointInside(X, Y, XMIN, XMAX, YMIN, YMAX) (((X)>=(XMIN))&&((Y)>=(YMIN))&&((X)<=(XMAX))&&((Y)<=(YMAX)))
	#define Bool_toString(VAL) ((VAL)?"true":"false") 
	
	extern const char *__true_str;
	extern const char *__false_str;
	#define sbool(VAL) ((VAL)?__true_str:__false_str) 
	
	inline void Static_printObj2(const void *vthis, const char *fname);
	inline void Static_nullThis2(const char *fname);
	
	#define Static_printObj(VTHIS)	(Static_printObj2(VTHIS, __FUNCTION__))
	#define Static_nullThis() (Static_nullThis2(__FUNCTION__))
		
	
	/*
	u32 Static_rgbFromColor(SDL_Color color) {
		u32 r = (color.r << 16);
		u32 g = (color.g << 8);
		u32 b = (color.b);
		return r|g|b;
	}

	void Static_getColorFromRGB(SDL_Color *dest, int rgb) {
		dest->r = (Uint8)((rgb & 0x00FF0000) >> 16);
		dest->g = (Uint8)((rgb & 0x0000FF00) >> 8);
		dest->b = (Uint8)(rgb & 0x000000FF);
	}
	*/
	#define Static_rgbFromColor(_STRUCT_SDL_COLOR, _PTR_STRUCT_SDL_PIXELFORMAT) ( ( ((u32)(_STRUCT_SDL_COLOR).r) << (_PTR_STRUCT_SDL_PIXELFORMAT)->Rshift )|( ((u32)(_STRUCT_SDL_COLOR).g) << (_PTR_STRUCT_SDL_PIXELFORMAT)->Gshift )|( ((u32)(_STRUCT_SDL_COLOR).b) << (_PTR_STRUCT_SDL_PIXELFORMAT)->Bshift ) )
	#define Static_getColorFromRGB(_STRUCT_SDL_COLOR, RGB, _PTR_STRUCT_SDL_PIXELFORMAT)													\
	{																																	\
		(_STRUCT_SDL_COLOR).r = (Uint8)(((RGB) & (_PTR_STRUCT_SDL_PIXELFORMAT)->Rmask) >> (_PTR_STRUCT_SDL_PIXELFORMAT)->Rshift);		\
		(_STRUCT_SDL_COLOR).g = (Uint8)(((RGB) & (_PTR_STRUCT_SDL_PIXELFORMAT)->Gmask) >> (_PTR_STRUCT_SDL_PIXELFORMAT)->Gshift);		\
		(_STRUCT_SDL_COLOR).b = (Uint8)(((RGB) & (_PTR_STRUCT_SDL_PIXELFORMAT)->Bmask) >> (_PTR_STRUCT_SDL_PIXELFORMAT)->Bshift);		\
	}
	
	TTF_Font *Static_getDefaultFont();
	TTF_Font *Static_getFont(const char *path, u8 size);
	inline SDL_Surface* Static_copySurface(SDL_Surface* src);
	const char *Static_u64toHexString(u64 value);
	const char* Static_surfaceToString(SDL_Surface *surf);
	
	
	
	
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
	//	E_ARRAY_GROW_INTRO_FAILED        - NULL: array or ext_size; new_pos below *ext_size; Equal 0: def_size or item_size
	//	E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX  - passed def_size > max_size while *ext_size == 0
	//	E_ARRAY_GROW_EXCEED_MAX_SIZE     - exceed max_size or exceed size variable numeric range
	//	E_ARRAY_GROW_BAD_ALLOC           - failed to allocate new array

	void* Static_growArray(	perr *e, void *array, u32 *ext_size, 
							u32 new_pos, u32 curr_count,
							const u32 def_size, const u32 max_size,
							const size_t item_size);
	
	SDL_Surface* Static_newSurface(u16 w, u16 h);
	
	ButtonImage* Static_getArrowUpButton();
	ButtonImage* Static_getArrowDnButton();
	
	// called by Screen_MainDestroy()
	void Static_quit();
#endif
