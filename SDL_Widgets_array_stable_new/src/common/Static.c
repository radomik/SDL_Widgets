/*
 *      Static.c - this file is part of SDL_Widgets
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

#include "ButtonImage.h"
#include "StdDefinitions.h"
#include "Screen.h"
#include "Memory.h"
#include "perr.h"

const char *__true_str = "true";
const char *__false_str = "false";


inline void Static_printObj2(const void *vthis, const char *fname) {
	const char *Static_printObj_fmt = "%20s: this=%p, this.class.name: %20s, this.class.size: %5lu, this.class.vtable = %p\n";
	fprintf(stderr, Static_printObj_fmt, fname, vthis, classof(vthis)->name, classof(vthis)->size, classof(vthis)->vtable);
}

inline void Static_nullThis2(const char *fname) {
	const char *Static_nullThis_fmt = "%20s: Passed NULL this pointer";
	fprintf(stderr, Static_nullThis_fmt, fname);
}

const char* Static_surfaceToString(const SDL_Surface *surf) {
	static char str_id[256];
	const SDL_PixelFormat *format = surf->format;
	snprintf(str_id, sizeof(str_id), "SDL_Surface: (w,h)=(%d,%d), pitch=%hu, format: Bpp=%d, (R,G,B,A)loss=[%d,%d,%d,%d], (R,G,B,A)shift=[%d,%d,%d,%d],  (R,G,B,A)mask=[0x%8X,0x%8X,0x%8x,0x%8X], colorkey=0x%8X, alpha=%d", 
	surf->w, surf->h, surf->pitch, format->BytesPerPixel, format->Rloss, format->Gloss, format->Bloss, format->Aloss, format->Rshift, format->Gshift, format->Bshift, format->Ashift, format->Rmask, format->Gmask, format->Bmask, format->Amask, format->colorkey, format->alpha);
	return str_id;
}


static TTF_Font *DEFAULT_FONT;
TTF_Font *Static_getDefaultFont() {
	if ((! DEFAULT_FONT) && (! (DEFAULT_FONT=TTF_OpenFont(W_DEFAULT_FONT, W_DEFAULT_FONTSIZE)))) {
		fprintf(stderr, "Static_getDefaultFont:Static> Unable to open default font TTF_OpenFont: %s %s\n", W_DEFAULT_FONT, TTF_GetError());
	}
	return DEFAULT_FONT;
}

TTF_Font *Static_getFont(const char *path, u8 size) {
	TTF_Font *font=TTF_OpenFont(path, size);
	if (! font) {
		fprintf(stderr, "Static_getDefaultFont:Static> Unable to open font TTF_OpenFont: %s %s\n", path, TTF_GetError());
		return Static_getDefaultFont();
	}
	return font;
}




// http://sdl.5483.n7.nabble.com/Copying-one-SDL-Surface-to-another-SDL-Surface-how-i-do-it-properly-td18814.html
// Jonathan Dearborn
inline SDL_Surface* Static_copySurface(SDL_Surface* src) { 
	return (src) ? SDL_ConvertSurface(src, src->format, W_SDL_FLAGS) : NULL;
}

Uint32 getpixel(const SDL_Surface *surface, int x, int y) {
    int bpp = surface->format->BytesPerPixel;
    /* Here p is the address to the pixel we want to retrieve */
    Uint8 *p = (Uint8 *)surface->pixels + y * surface->pitch + x * bpp;

    switch(bpp) {
    case 1:
        return *p;
        break;

    case 2:
        return *(Uint16 *)p;
        break;

    case 3:
        if(SDL_BYTEORDER == SDL_BIG_ENDIAN)
            return p[0] << 16 | p[1] << 8 | p[2];
        else
            return p[0] | p[1] << 8 | p[2] << 16;
        break;

    case 4:
        return *(Uint32 *)p;
        break;

    default:
        return 0;       /* shouldn't happen, but avoids warnings */
    }
}

const char *Static_u64toHexString(u64 value) {
	static char s[19];
	if (value > 0xFFFFFFFF) 
		sprintf(s, "0x%X%X", (u32)(value>>32), (u32)(value));
	else
		sprintf(s, "0x%X", (u32)(value));
	return s;
}



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
//	E_ARRAY_GROW_INTRO_FAILED        - NULL: ext_size; new_pos below *ext_size; Equal 0: def_size or item_size
//	E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX  - passed def_size > max_size while *ext_size == 0
//	E_ARRAY_GROW_EXCEED_MAX_SIZE     - exceed max_size or exceed size variable numeric range
//	E_ARRAY_GROW_BAD_ALLOC           - failed to allocate new array

void* Static_growArray(	perr *e, void *array, u32 *ext_size, 
						u32 new_pos, u32 curr_count,
						const u32 def_size, const u32 max_size,
						const size_t item_size) {
	/* Performs some sanity checks */
	if ((! ext_size) 			||			// passed NULL pointer to array size external variable
		(new_pos < *ext_size) 	||			// new position is already covered by current array size
		(! def_size) 			||			// default size of array cannot be 0
		(! item_size))						// single array item size cannot be 0
	{
		if (e) *e = E_ARRAY_GROW_INTRO_FAILED;
		return NULL;
	}
	u32 new_size  = *ext_size;				// local: new size of array = current size
	u32 prev_size = *ext_size;				// local: previous size of array = current size
	u32 i;
	
	/* Calculate new size of array */
	while (new_size <= new_pos)	{			// increase new_size until it covers new_pos
		if (new_size == 0) {				// new_size==0 (first grow) -->new_size = def_size
			if (def_size > max_size) 		// default size greater than maximum size
			{
				if (e) *e = E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX;
				return NULL;
			}
			new_size = def_size;			// new_size = def_size
		}
		else {								// new_size != 0
			i = new_size;					// store current new_size
			new_size <<= 1;					// multiply new_size by 2
			if ((i >= new_size) || 			// 1. overflow of new_size number variable type, or
				(new_size <= prev_size) ||	// 2. new_size IS NOT greater than previous size, or
					(new_size > max_size)) 	// 3. new_size exceeds maximium size, then
						{
							if (e) *e = E_ARRAY_GROW_EXCEED_MAX_SIZE;
							return NULL;
						}
		}
	}
	
	/* Allocate new array of new_size and item_size*/
	void *_array = calloc(new_size, item_size);
	if (! _array) 
	{
		if (e) *e = E_ARRAY_GROW_BAD_ALLOC;
		return NULL;
	}
	
	/* Copy previous items if such exists */
	if ((curr_count) && (array)) {							// if there are any items in old array, 
		memcpy(_array, array, (curr_count) * item_size);	// rewrite them to new array and 
		free(array);										// delete old array
	}
	
	/* Assign new array size and error info */
	*ext_size = new_size;
	if (e) *e = E_NO_ERROR;
	
	/* Return newly created array pointer */
	return _array;
}

SDL_Surface* Static_newSurface(u16 w, u16 h) {
	SDL_PixelFormat *spx = Screen_getBaseSurfaceFormat();
	if (! spx) return NULL;
	return SDL_CreateRGBSurface(W_SDL_FLAGS, w, h, spx->BitsPerPixel, spx->Rmask, spx->Gmask, spx->Bmask, spx->Amask);
}

static ButtonImage *bt_arrow_up, *bt_arrow_dn;
static const char *getArrowAllocError_fmt = "%s: ButtonImage_new() returned NULL pointer\n";
ButtonImage* Static_getArrowUpButton() {
	if (! bt_arrow_up) {
		// buttonimage arrow up [dynamic object]
		bt_arrow_up = ButtonImage_new(new(ButtonImage_class), "img/arrow-up.png");
		if (! bt_arrow_up) {
			fprintf(stderr, getArrowAllocError_fmt, __FUNCTION__);
			return NULL;
		}
		ButtonImage_applyDefaultStyle3(bt_arrow_up, 0, 0, 4, 2, false);
		ButtonImage_scale(bt_arrow_up, 1.0, 0.87, 1);
	}
	return bt_arrow_up;
}

ButtonImage* Static_getArrowDnButton() {
	if (! bt_arrow_dn) {
		// buttonimage arrow down [dynamic object]
		bt_arrow_dn = ButtonImage_new(new(ButtonImage_class), "img/arrow-down.png");
		if (! bt_arrow_dn) {
			fprintf(stderr, getArrowAllocError_fmt, __FUNCTION__);
			return NULL;
		}
		ButtonImage_applyDefaultStyle3(bt_arrow_dn, 0, 0, 4, 2, false);
		ButtonImage_scale(bt_arrow_dn, 1.0, 0.87, 1);
	}
	return bt_arrow_dn;
}

void Static_quit() {
	if (DEFAULT_FONT) { TTF_CloseFont(DEFAULT_FONT); DEFAULT_FONT = NULL; }
	if (bt_arrow_up)  { free(delete(bt_arrow_up)); bt_arrow_up = NULL; }
	if (bt_arrow_dn)  { free(delete(bt_arrow_dn)); bt_arrow_dn = NULL; }
}

