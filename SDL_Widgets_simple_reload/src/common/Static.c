#include "ButtonImage.h"
#include "StdDefinitions.h"
#include "Screen.h"
#include "Memory.h"
#include "perr.h"

inline void Static_printObj2(const void *vthis, const char *fname) {
	const char *Static_printObj_fmt = "%20s: this=%p, this.class.name: %20s, this.class.size: %5lu, this.class.vtable = %p\n";
	fprintf(stderr, Static_printObj_fmt, fname, vthis, classof_fast(vthis)->name, classof_fast(vthis)->size, classof_fast(vthis)->vtable);
}

inline void Static_nullThis2(const char *fname) {
	const char *Static_nullThis_fmt = "%20s: Passed NULL this pointer";
	fprintf(stderr, Static_nullThis_fmt, fname);
}

#include <sys/stat.h>
b8 Static_fileExist(const char *path) { 
	if (! path) return false; struct stat st; 
	return (stat(path, &st) == 0);
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

inline uint Static_rgbFromColor(SDL_Color *color_struct) {
	SDL_PixelFormat *spx = Screen_getBaseSurfaceFormat();
	return ((spx)&&(color_struct)) 
				? ( ( ((uint)color_struct->r) << spx->Rshift ) |
					( ((uint)color_struct->g) << spx->Gshift ) |
					( ((uint)color_struct->b) << spx->Bshift ) 
				  )
				: 0;
}

inline void Static_getColorFromRGB(SDL_Color *color_struct, uint rgb_value) {
	SDL_PixelFormat *spx = Screen_getBaseSurfaceFormat();																			\
	if ((spx) && (color_struct)) {
		color_struct->r = (Uint8)((rgb_value & spx->Rmask) >> spx->Rshift);
		color_struct->g = (Uint8)((rgb_value & spx->Gmask) >> spx->Gshift);
		color_struct->b = (Uint8)((rgb_value & spx->Bmask) >> spx->Bshift);
	}
}

// http://sdl.5483.n7.nabble.com/Copying-one-SDL-Surface-to-another-SDL-Surface-how-i-do-it-properly-td18814.html
// Jonathan Dearborn
inline SDL_Surface* Static_copySurface(SDL_Surface* src) { 
	if (! src) return NULL;
	else
		return SDL_ConvertSurface(src, src->format, W_SDL_FLAGS); 
}

static const char *_Static_NewSurface = 
	"%s:(w=%hu, h=%hu): Screen_getBaseSurfaceFormat() returned NULL. Whether SDL initialized ?\n";
SDL_Surface* Static_newSurface(usint w, usint h) {
	SDL_PixelFormat *spx = Screen_getBaseSurfaceFormat();
	if (! spx) {
		fprintf(stderr, _Static_NewSurface, "Static_newSurface", w, h);
		return NULL;
	}
	return SDL_CreateRGBSurface(W_SDL_FLAGS, w, h, spx->BitsPerPixel, spx->Rmask, spx->Gmask, spx->Bmask, spx->Amask);
}
SDL_Surface* Static_newTransparentSurface(usint w, usint h) {
	SDL_PixelFormat *spx = Screen_getBaseSurfaceFormat();
	if (! spx) {
		fprintf(stderr, _Static_NewSurface, "Static_newTransparentSurface", w, h);
		return NULL;
	}
	uint Amask = 0xFFFFFFFF ^ (spx->Rmask|spx->Gmask|spx->Bmask);
	return SDL_CreateRGBSurface(W_SDL_FLAGS, w, h, spx->BitsPerPixel, spx->Rmask, spx->Gmask, spx->Bmask, Amask);
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

// function returns true if all of pointers to check are other than NULL
// function returns false when first NULL pointer is found,
// therefore it also prints 4 first this function parameters
// and number (starting from 0) of found NULL pointer
b8 checkPointers(		const char *func_name, 		// function name
						const char *file_name, 		// file name
						int 		line, 			// file line
						uint 		ptr_count, 		// count of pointers
						...							// pointers
					) 
{
	va_list	va;
	uint 	i = 0;
	va_start(va, ptr_count);
	for (; i < ptr_count; i++) {
		if (! va_arg(va, void*)) {
			fprintf(stderr, "checkPointers: Found NULL pointer at index %u. Source: %s @ %s() line: %d\n",
				i, file_name?file_name:"unknown_file.c", func_name?func_name:"unknown_function", line);
			va_end(va);
			return false;
		}
	}
	va_end(va);
	return true;
}

void Static_quit() {
	if (DEFAULT_FONT) { TTF_CloseFont(DEFAULT_FONT); DEFAULT_FONT = NULL; }
	if (bt_arrow_up)  { free(delete(bt_arrow_up)); bt_arrow_up = NULL; }
	if (bt_arrow_dn)  { free(delete(bt_arrow_dn)); bt_arrow_dn = NULL; }
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

void* Static_growArray(	perr *e, void *array, uint *ext_size, 
						uint new_pos, uint curr_count,
						const uint def_size, const uint max_size,
						const size_t item_size,
						uchar flag) {
	/* Performs some sanity checks */
	if ((! ext_size) 			||			// passed NULL pointer to array size external variable
		(new_pos < *ext_size) 	||			// new position is already covered by current array size
		(! def_size) 			||			// default size of array cannot be 0
		(! item_size))						// single array item size cannot be 0
	{
		if (e) *e = E_ARRAY_GROW_INTRO_FAILED;
		return NULL;
	}
	uint new_size  = *ext_size;				// local: new size of array = current size
	uint prev_size = *ext_size;				// local: previous size of array = current size
	uint i;
	
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
	void *_array;
	if ((! flag) || (flag == GROW_MEMSET_ZERO) || (flag & GROW_REALLOC)) {
		//_error2("Static_growArray", "array=%p, _array=%p, new_size=%u, prev_size=%u\n", array, _array, new_size, prev_size);
		_array = realloc(array, new_size*item_size);
		//_error2("Static_growArray", "array=%p, _array=%p, new_size=%u, prev_size=%u\n", array, _array, new_size, prev_size);
		if (! _array) {
			if (e) *e = E_ARRAY_GROW_BAD_REALLOC;
			return NULL;
		}
		if (flag & GROW_MEMSET_ZERO) {
			memset(_array + curr_count*item_size, 0, (new_size-curr_count)*item_size); 
		}
	}
	else { // flag != 0 && (! flag & GROW_REALLOC)
		if (flag & GROW_CALLOC) {
			_array = calloc(new_size, item_size);
			if (! _array) {
				if (e) *e = E_ARRAY_GROW_BAD_CALLOC;
				return NULL;
			}
			
			/* Copy previous items if such exists */
			if ((curr_count) && (array)) {							// if there are any items in old array, 
				memcpy(_array, array, (curr_count) * item_size);	// rewrite them to new array and 
				free(array);										// delete old array
			}
		}
		else
			if (e) *e = E_ARRAY_GROW_BAD_FLAG;
			return NULL;
	}
	
	
	
	/* Assign new array size and error info */
	*ext_size = new_size;
	if (e) *e = E_NO_ERROR;
	
	/* Return newly created array pointer */
	return _array;
}

void _error(const char 	*fname,
			void		*this,
			const char 	*format,
			...) {
	va_list va;
	fprintf(stderr, "%s[this=%p]: ", fname, this);
	va_start(va, format);
	vprintf(format, va);
	va_end(va);
}

void _error2(	const char 	*fname,
				const char 	*format,
			...) {
	va_list va;
	fprintf(stderr, "%s: ", fname);
	va_start(va, format);
	vprintf(format, va);
	va_end(va);
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
