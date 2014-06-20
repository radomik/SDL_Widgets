/*      [ Memory management. Memory leaks detection overlay. ]
 *      Memory.h - this file is part of SDL_Widgets
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

#include "StdDefinitions.h"

typedef int merr;

#ifdef CHECK_MEMORY_LEAKS
typedef struct MM_Info MM_Info;
struct MM_Info {
	void			*ptr;
	const char		*call_file;
	const char  	*create_function_name;
	size_t			full_size;
	int				call_file_line;
	MM_Info 		*next;
};

static MM_Info 			*first_mm;
static MM_Info 			*last_mm;
static SDL_mutex		*mutex;
static size_t			size_alloc;
static size_t			cnt_alloc;

#define MUTEX_FAILED			1
#define MEMORY_LEAKS_DETECTED 	2

static void MM_Info_print(MM_Info *info, size_t ind) {
	if (! info) fprintf(stderr, "MM_Info: NULL info.\n");
	fprintf(stderr, "MM_Info[%3lu]: ptr[%p], call[%20s@%5d], create[%25s], size[%8lu], next[%p]\n", 
		ind, info->ptr, info->call_file, info->call_file_line, info->create_function_name, 
		info->full_size, info->next);
}
#endif

#ifndef CHECK_MEMORY_LEAKS
static const char *undefstr = "%24s: CHECK_MEMORY_LEAKS preprocessing directive undefinied.\n";
#endif

const char *Memory_getError(merr err) {
	#ifdef CHECK_MEMORY_LEAKS
	switch (err) {
		case 0: return "no error";
		case MUTEX_FAILED: return "failed to create mutex";
		case MEMORY_LEAKS_DETECTED: return "detected memory leaks";
		default: return "unknown";
	}
	#else
	return undefstr+6; // "CHECK_MEMORY_LEAKS preprocessing directive undefinied.";
	#endif
}

// by main thread at the program beginning before Object_init();
merr Memory_init() {
	#ifdef CHECK_MEMORY_LEAKS
	mutex = SDL_CreateMutex();
	if (! mutex) return MUTEX_FAILED;
	else return 0;
	#else
	fprintf(stderr, undefstr, "Memory_init()");
	return 0;
	#endif
}

// print memory usage summary
void Memory_printUsage() {
	#ifdef CHECK_MEMORY_LEAKS
	SDL_LockMutex(mutex);
	fprintf(stderr, "@@@ Allocated %lu bytes ", size_alloc);
	if (size_alloc >= 1024) {
		if (size_alloc < 1048576) {
			fprintf(stderr, "(%3.2f KB) ", (float)size_alloc / 1024.0f);
		}
		else {
			fprintf(stderr, "(%3.2f MB) ", (float)size_alloc / 1048576.0f);
		}
	}
	fprintf(stderr, "in %lu memory areas.\n", cnt_alloc);
	SDL_UnlockMutex(mutex);
	#else
	fprintf(stderr, undefstr, "Memory_printUsage()");
	#endif
}

void Memory_printAll() {
	#ifdef CHECK_MEMORY_LEAKS
	fprintf(stderr, "Memory_printAll: Memory content:\n");
	SDL_LockMutex(mutex);
	MM_Info *info = first_mm;
	size_t  i = 0;
	while (info) {
		MM_Info_print(info, i++);
		info = info->next;
	}
	SDL_UnlockMutex(mutex);
	#else
	fprintf(stderr, undefstr, "Memory_printAll()");
	#endif
}

// by main thread (after all other threads finished) at program end after Object_end()
merr Memory_end() {
	#ifdef CHECK_MEMORY_LEAKS
	if (first_mm) {
		MM_Info *info = first_mm, *t;
		size_t  i = 0;
		fprintf(stderr, "\n##########\nMemory_end: Memory leaks detected, still have %lu allocated memory areas of total size %lu bytes ::\n",
			cnt_alloc, size_alloc);
		while (info) {
			t = info->next;
			MM_Info_print(info, i++);
			free(info);
			info = t;
		}
		fprintf(stderr, "\nMemory_end: Memory leaks detected, still have %lu allocated memory areas of total size %lu bytes\n##########\n\n",
			cnt_alloc, size_alloc);
		SDL_DestroyMutex(mutex);
		return MEMORY_LEAKS_DETECTED;
	}
	else {
		fprintf(stderr, "Memory_end: Memory is clean :)\n");
		SDL_DestroyMutex(mutex);
		return 0;
	}
	#else
	fprintf(stderr, undefstr, "Memory_end()");
	return 0;
	#endif
}

// All of other functions:
#ifdef CHECK_MEMORY_LEAKS

// info cannot be NULL, mutex have to be initialized
static inline void mm_add_info(MM_Info *info) {
	///fprintf(stderr, "mm_add_info: "); MM_Info_print(info, cnt_alloc);
	info->next = NULL;
	SDL_LockMutex(mutex);
	cnt_alloc++;
	size_alloc += info->full_size;
	if (! first_mm) { // first added item
		first_mm = last_mm = info;
	}
	else {
		last_mm->next = info;
		last_mm = info;
	}
	SDL_UnlockMutex(mutex);
}

// ptr != NULL
static const char *del_unallocated = "mm_del_info: Attempt to delete unallocated pointer %p from function %s, [%s@%d]\n";
static int mm_del_info(void *ptr, const char *fname, const char *_file, int _line) {
	///fprintf(stderr, "mm_del_info: ptr=%p, fname=%s\n", ptr, fname);
	MM_Info *actual = first_mm, *prev = NULL;
	SDL_LockMutex(mutex);
	while ((actual) && (actual->ptr != ptr)) { prev = actual; actual = actual->next; }
	
	if (! actual) {
		SDL_UnlockMutex(mutex);
		fprintf(stderr, del_unallocated, ptr, fname, _file, _line);
		return 0;
	}
	else {
		///fprintf(stderr, "mm_del_info: Found info for ptr=%p :\n", ptr); MM_Info_print(actual, cnt_alloc);
		if (prev) {
			prev->next = actual->next;
		}
		else {
			first_mm = actual->next;
		}
		if (! actual->next) last_mm = prev;
		cnt_alloc--;
		size_alloc -= actual->full_size;
		
		free(actual);
		///fprintf(stderr, "mm_del_info: ptr=%p, fname=%s, first_mm=%p END\n", ptr, fname, first_mm);
		SDL_UnlockMutex(mutex);
		return 1;
	}
}

static const char *malloc_info_failed_str = "%s: Failed to allocate MM_Info struct (malloc failed)\n";

#define MM_fill_info(MM_FNAME, ALLOC_FNAME, PTR, _FILE, LINE, __SIZE)	\
{																		\
	MM_Info *info = malloc(sizeof(MM_Info));							\
	if (! info) {/* cannot allocate info */								\
		fprintf(stderr, malloc_info_failed_str, (MM_FNAME));			\
	}																	\
	else {																\
		info->ptr = (PTR);												\
		info->call_file = (_FILE);										\
		info->create_function_name = (ALLOC_FNAME);						\
		info->full_size = (__SIZE);										\
		info->call_file_line = (LINE);									\
		mm_add_info(info);												\
	}																	\
}

inline MM_Info *MM_seek_ptr(void *ptr) {
	if (ptr) {
		SDL_LockMutex(mutex);
		MM_Info *temp = first_mm;
		while (temp) {
			if (temp->ptr == ptr) break;
			temp = temp->next;
		}
		SDL_UnlockMutex(mutex);
		return temp;
	}
	return NULL;
}

void *wmalloc(size_t __size, const char *_file_, int _line_) {
	void *ptr = malloc(__size);
	//fprintf(stderr, "wmalloc: From %s @ %d Allocating %lu bytes [ptr = %p]\n", _file_, _line_, __size, ptr);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "wmalloc: Failed to allocate memory of size %lu (malloc returned NULL), file: %s, line: %d\n", 
			__size, _file_, _line_);
		return ptr;
	}

	MM_fill_info("wmalloc", "malloc", ptr, _file_, _line_, __size);
	
	return ptr;
}

void *wcalloc(size_t __nmemb, size_t __size, const char *_file_, int _line_) {
	void *ptr = calloc(__nmemb, __size);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "wcalloc: Failed to allocate memory __nmemb=%lu, __size=%lu (calloc returned NULL), file: %s, line: %d\n", 
			__nmemb, __size, _file_, _line_);
		return ptr;
	}
	MM_fill_info("wcalloc", "calloc", ptr, _file_, _line_, __nmemb * __size);
	return ptr;
}

void *wrealloc(void *__ptr, size_t __size, const char *_file_, int _line_) {
	void *ptr = realloc(__ptr, __size);
	if (! ptr) {
		fprintf(stderr, "wrealloc: Failed to reallocate memory __ptr=%p, __size=%lu (realloc returned NULL), file: %s, line: %d\n", 
			__ptr, __size, _file_, _line_);
		return ptr;
	}
	if ((__ptr == NULL) && (__size > 0)) { // same as malloc
		MM_fill_info("wrealloc", "realloc", ptr, _file_, _line_, __size); // add new pointer to list
	}
	else { // __ptr != NULL || __size == 0
		if (__ptr) {
			if (__size > 0) { // reallocate existing pointer (created with malloc, realloc or calloc)
				MM_Info *info = MM_seek_ptr(__ptr); // seek for old __ptr in list
				if (info) {
					SDL_LockMutex(mutex);
					size_alloc -= info->full_size;
					info->ptr = ptr; // change pointer
					info->call_file = _file_;
					info->create_function_name = "realloc";
					info->full_size = __size;
					info->call_file_line = _line_;
					size_alloc += __size;
					SDL_UnlockMutex(mutex);
				}
				else 
					fprintf(stderr, "wrealloc: Failed to find old info for __ptr=%p of NEW size %lu, file: %s, line: %d\n", 
						__ptr, __size, _file_, _line_);
			}
			else { // __size == 0, free existing pointer __ptr
				mm_del_info(__ptr, "wrealloc", _file_, _line_);
				if (ptr) free(ptr); // if realloc doesn't call free() itself
				return NULL;
			}
		}
	}
	return ptr;
}

char *wstrdup(const char *__s, const char *_file_, int _line_) {
	char *s = strdup(__s);
	if (! s) { // cannot allocate desired memory
		fprintf(stderr, "wstrdup: Failed to allocate memory __s=%p (strdup returned NULL), file: %s, line: %d\n", 
			__s, _file_, _line_);
		return s;
	}
	MM_fill_info("wstrdup", "strdup", s, _file_, _line_, strlen(s)+1);
	return s;
}

void wfree(void *__ptr, const char *_file_, int _line_) {
	///fprintf(stderr, "wfree: ptr=%p\n", __ptr);
	if (! __ptr) return;
	if (mm_del_info(__ptr, "wfree", _file_, _line_)) free(__ptr); 
}

inline size_t SDL_SURFACE_APPROX_SIZE(SDL_Surface *ptr) {
	size_t size = 0;
	if (ptr) {
		SDL_PixelFormat *fmt = ptr->format;
		size += sizeof(SDL_Surface);
		size += (ptr->pitch * ptr->h);
		if (fmt) {
			SDL_Palette *pal = fmt->palette;
			size += sizeof(SDL_PixelFormat);
			if (pal) {
				size += sizeof(SDL_Palette);
				if (pal->colors) {
					size += pal->ncolors * sizeof(SDL_Color);
				}
			}
		}
	}
	return size;
}

SDL_Surface* wSDL_ConvertSurface
			(SDL_Surface *src, SDL_PixelFormat *fmt, Uint32 flags, const char *_file_, int _line_) {
	SDL_Surface *ptr = SDL_ConvertSurface(src, fmt, flags);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "wSDL_ConvertSurface: Failed to allocate memory src=%p, fmt=%p, flags=0x%08X \
(SDL_ConvertSurface failed with error %s), file: %s, line: %d\n", 
			src, fmt, flags, SDL_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wSDL_ConvertSurface", "SDL_ConvertSurface", ptr, _file_, _line_, SDL_SURFACE_APPROX_SIZE(ptr));
	return ptr;
}

SDL_Surface* wSDL_CreateRGBSurface
		(Uint32 flags, int width, int height, int depth, 
		Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask, const char *_file_, int _line_) {
	SDL_Surface *ptr = SDL_CreateRGBSurface(flags, width, height, depth, Rmask, Gmask, Bmask, Amask);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "wSDL_CreateRGBSurface: Failed to allocate memory flags=0x%08X, \
width=%d, height=%d, depth=%d, Rmask=0x%08X, Gmask=0x%08X, Bmask=0x%08X, Amask=0x%08X \
(SDL_CreateRGBSurface failed with error %s), file: %s, line: %d\n", 
			flags, width, height, depth, Rmask, Gmask, Bmask, Amask, SDL_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wSDL_CreateRGBSurface", "SDL_CreateRGBSurface", ptr, _file_, _line_, SDL_SURFACE_APPROX_SIZE(ptr));
	return ptr;		
}			
SDL_Surface* wSDL_CreateRGBSurfaceFrom(void *pixels,
		int width, int height, int depth, int pitch,
		Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask, const char *_file_, int _line_) {
	SDL_Surface *ptr = SDL_CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "wSDL_CreateRGBSurfaceFrom: Failed to allocate memory pixels=%p, \
width=%d, height=%d, depth=%d, pitch=%d, Rmask=0x%08X, Gmask=0x%08X, Bmask=0x%08X, Amask=0x%08X \
(SDL_CreateRGBSurfaceFrom failed with error %s), file: %s, line: %d\n", 
			pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask, SDL_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wSDL_CreateRGBSurfaceFrom", "SDL_CreateRGBSurfaceFrom", ptr, _file_, _line_, SDL_SURFACE_APPROX_SIZE(ptr));
	return ptr;				
}

SDL_Surface* wSDL_SetVideoMode
		(int width, int height, int bpp, Uint32 flags, const char *_file_, int _line_) {
	SDL_Surface *ptr = SDL_SetVideoMode(width, height, bpp, flags);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "wSDL_SetVideoMode: Failed to allocate memory \
width=%d, height=%d, bpp=%d, flags=0x%08X \
(SDL_SetVideoMode failed with error %s), file: %s, line: %d\n", 
			width, height, bpp, flags, SDL_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wSDL_SetVideoMode", "SDL_SetVideoMode", ptr, _file_, _line_, SDL_SURFACE_APPROX_SIZE(ptr));
	return ptr;
}

void wSDL_FreeSurface(SDL_Surface *surface, const char *_file_, int _line_) {
	if (! surface) return;
	if (mm_del_info(surface, "wSDL_FreeSurface", _file_, _line_)) SDL_FreeSurface(surface);
}

SDL_Surface* wTTF_RenderUTF8_Solid(TTF_Font *font, const char *text, SDL_Color fg, const char *_file_, int _line_) {
	SDL_Surface *ptr = TTF_RenderUTF8_Solid(font, text, fg);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "wTTF_RenderUTF8_Solid: Failed to allocate memory \
font=%p, text=%p, fg.r=0x%02X, fg.g=0x%02X, fg.b=0x%02X  \
(TTF_RenderUTF8_Solid failed with error %s), file: %s, line: %d\n", 
			font, text, fg.r, fg.g, fg.b, TTF_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wTTF_RenderUTF8_Solid", "TTF_RenderUTF8_Solid", ptr, _file_, _line_, SDL_SURFACE_APPROX_SIZE(ptr));
	return ptr;	
}

SDL_Surface *wzoomSurface(SDL_Surface * src, double zoomx, double zoomy, int smooth, const char *_file_, int _line_) {
	SDL_Surface *ptr = zoomSurface(src, zoomx, zoomy, smooth);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "wzoomSurface: Failed to allocate memory \
src=%p, zoomx=%f, zoomy=%f, smooth=%d \
(zoomSurface failed with error %s), file: %s, line: %d\n", 
			src, zoomx, zoomy, smooth, IMG_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wzoomSurface", "zoomSurface", ptr, _file_, _line_, SDL_SURFACE_APPROX_SIZE(ptr));
	return ptr;	
}

SDL_Surface* wIMG_Load(const char *file, const char *_file_, int _line_) {
	SDL_Surface *ptr = IMG_Load(file);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "wIMG_Load: Failed to allocate memory \
file=%s \
(IMG_Load failed with error %s), file: %s, line: %d\n", 
			file, IMG_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wIMG_Load", "IMG_Load", ptr, _file_, _line_, SDL_SURFACE_APPROX_SIZE(ptr));
	return ptr;	
}

TTF_Font* wTTF_OpenFont(const char *file, int ptsize, const char *_file_, int _line_) {
	TTF_Font *ptr = TTF_OpenFont(file, ptsize);
	if (! ptr) {
		fprintf(stderr, "wTTF_OpenFont: Failed to allocate memory \
file=%s, ptsize=%d \
(TTF_OpenFont failed with error %s), file: %s, line: %d\n", 
			file, ptsize, TTF_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wTTF_OpenFont", "TTF_OpenFont", ptr, _file_, _line_, 0);
	return ptr;
}
TTF_Font* wTTF_OpenFontIndex(const char *file, int ptsize, long index, const char *_file_, int _line_) {
	TTF_Font *ptr = TTF_OpenFontIndex(file, ptsize, index);
	if (! ptr) {
		fprintf(stderr, "wTTF_OpenFontIndex: Failed to allocate memory \
file=%s, ptsize=%d, index=%ld \
(TTF_OpenFontIndex failed with error %s), file: %s, line: %d\n", 
			file, ptsize, index, TTF_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wTTF_OpenFontIndex", "TTF_OpenFontIndex", ptr, _file_, _line_, 0);
	return ptr;
}
TTF_Font* wTTF_OpenFontRW(SDL_RWops *src, int freesrc, int ptsize, const char *_file_, int _line_) {
	TTF_Font *ptr = TTF_OpenFontRW(src, freesrc, ptsize);
	if (! ptr) {
		fprintf(stderr, "wTTF_OpenFontRW: Failed to allocate memory \
src=%p, freesrc=%d, ptsize=%d \
(TTF_OpenFontRW failed with error %s), file: %s, line: %d\n", 
			src, freesrc, ptsize, TTF_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wTTF_OpenFontRW", "TTF_OpenFontRW", ptr, _file_, _line_, 0);
	return ptr;
}
TTF_Font* wTTF_OpenFontIndexRW(SDL_RWops *src, int freesrc, int ptsize, long index, const char *_file_, int _line_) {
	TTF_Font *ptr = TTF_OpenFontIndexRW(src, freesrc, ptsize, index);
	if (! ptr) {
		fprintf(stderr, "wTTF_OpenFontIndexRW: Failed to allocate memory \
src=%p, freesrc=%d, ptsize=%d, index=%ld \
(TTF_OpenFontIndexRW failed with error %s), file: %s, line: %d\n", 
			src, freesrc, ptsize, index, TTF_GetError(), _file_, _line_);
		return ptr;
	}
	MM_fill_info("wTTF_OpenFontIndexRW", "TTF_OpenFontIndexRW", ptr, _file_, _line_, 0);
	return ptr;
}
void wTTF_CloseFont(TTF_Font *font, const char *_file_, int _line_) {
	if (! font) return;
	if (mm_del_info(font, "wTTF_CloseFont", _file_, _line_)) TTF_CloseFont(font);
}

#endif
