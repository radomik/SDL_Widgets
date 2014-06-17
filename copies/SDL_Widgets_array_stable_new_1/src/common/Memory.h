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
#ifndef _Memory_h_
	#define _Memory_h_
	
	#include "StdDefinitions.h"
	
	/** Comment CHECK_MEMORY_LEAKS in StdDefinitions.h to disable management **/
	
	typedef int merr;
	
	// by main thread at the program beginning before Object_init();
	merr Memory_init();

	// by main thread (after all other threads finished) at program end after Object_end()
	merr Memory_end();
	
	// Read error from 
	const char *Memory_getError(merr err);
	
	// print memory usage summary
	void Memory_printUsage();
	
	// print all of memory areas (huge)
	void Memory_printAll();
	
	#ifdef CHECK_MEMORY_LEAKS
	
	// From stdlib.h
	void *wmalloc(size_t __size, const char *_file_, int _line_);
	void *wcalloc(size_t __nmemb, size_t __size, const char *_file_, int _line_);
	void *wrealloc(void *__ptr, size_t __size, const char *_file_, int _line_);
	void  wfree(void *__ptr, const char *_file_, int _line_);
	
	#define malloc(__size) wmalloc(__size, __FILE__, __LINE__)
	#define calloc(__nmemb, __size) wcalloc(__nmemb, __size, __FILE__, __LINE__)
	#define realloc(__ptr, __size) wrealloc(__ptr, __size, __FILE__, __LINE__)
	#define free(__ptr) wfree(__ptr, __FILE__, __LINE__)
	
	
	// From SDL/SDL_video.h
	SDL_Surface* wSDL_ConvertSurface
			(SDL_Surface *src, SDL_PixelFormat *fmt, Uint32 flags, const char *_file_, int _line_);
	SDL_Surface* wSDL_CreateRGBSurface
			(Uint32 flags, int width, int height, int depth, 
			Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask, const char *_file_, int _line_);
	SDL_Surface* wSDL_CreateRGBSurfaceFrom(void *pixels,
			int width, int height, int depth, int pitch,
			Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask, const char *_file_, int _line_);
	SDL_Surface* wSDL_SetVideoMode
			(int width, int height, int bpp, Uint32 flags, const char *_file_, int _line_);
	void wSDL_FreeSurface(SDL_Surface *surface, const char *_file_, int _line_);
	
	#define SDL_ConvertSurface(src, fmt, flags) wSDL_ConvertSurface(src, fmt, flags, __FILE__, __LINE__)
	#define SDL_CreateRGBSurface(flags, width, height, depth, Rmask, Gmask, Bmask, Amask) wSDL_CreateRGBSurface(flags, width, height, depth, Rmask, Gmask, Bmask, Amask, __FILE__, __LINE__)
	#define SDL_CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask) wSDL_CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask, __FILE__, __LINE__)
	#define SDL_SetVideoMode(width, height, bpp, flags) wSDL_SetVideoMode(width, height, bpp, flags, __FILE__, __LINE__)
	#define SDL_FreeSurface(surface) wSDL_FreeSurface(surface, __FILE__, __LINE__)
	
	// From SDL/SDL_ttf.h
	SDL_Surface* wTTF_RenderUTF8_Solid(TTF_Font *font, const char *text, SDL_Color fg, const char *_file_, int _line_);
	
	#define TTF_RenderUTF8_Solid(font, text, fg) wTTF_RenderUTF8_Solid(font, text, fg, __FILE__, __LINE__)
	
	// From SDL/SDL_rotozoom.h
	SDL_Surface *wzoomSurface(SDL_Surface * src, double zoomx, double zoomy, int smooth, const char *_file_, int _line_);
	
	#define zoomSurface(src, zoomx, zoomy, smooth) wzoomSurface(src, zoomx, zoomy, smooth, __FILE__, __LINE__)

	// From SDL/SDL_image.h
	SDL_Surface* wIMG_Load(const char *file, const char *_file_, int _line_);
	#define IMG_Load(file) wIMG_Load(file, __FILE__, __LINE__)
	
	// From SDL/SDL_ttf.h
	TTF_Font* wTTF_OpenFont(const char *file, int ptsize, const char *_file_, int _line_);
	TTF_Font* wTTF_OpenFontIndex(const char *file, int ptsize, long index, const char *_file_, int _line_);
	TTF_Font* wTTF_OpenFontRW(SDL_RWops *src, int freesrc, int ptsize, const char *_file_, int _line_);
	TTF_Font* wTTF_OpenFontIndexRW(SDL_RWops *src, int freesrc, int ptsize, long index, const char *_file_, int _line_);
	void wTTF_CloseFont(TTF_Font *font, const char *_file_, int _line_);
	
	#define TTF_OpenFont(file, ptsize) wTTF_OpenFont(file, ptsize, __FILE__, __LINE__)
	#define TTF_OpenFontIndex(file, ptsize, index) wTTF_OpenFontIndex(file, ptsize, index, __FILE__, __LINE__)
	#define TTF_OpenFontRW(src, freesrc, ptsize) wTTF_OpenFontRW(src, freesrc, ptsize, __FILE__, __LINE__)
	#define TTF_OpenFontIndexRW(src, freesrc, ptsize, index) wTTF_OpenFontIndexRW(src, freesrc, ptsize, index, __FILE__, __LINE__)
	#define TTF_CloseFont(font) wTTF_CloseFont(font, __FILE__, __LINE__)
	
	#endif
#endif

