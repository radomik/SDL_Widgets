/*
 *      StdDefinitions.h - this file is part of SDL_Widgets
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

#ifndef _StdDefinitions_h_
	#define	_StdDefinitions_h_
	#include <SDL/SDL.h>
	#include <SDL/SDL_image.h>
	#include <SDL/SDL_rotozoom.h>
	#include <SDL/SDL_ttf.h>
	#include <SDL/SDL_gfxPrimitives.h>
	#include <SDL/SDL_audio.h>
	#include <portaudio.h>
	#include <stdlib.h>
	#include <stdio.h>
	#include <string.h>
	#include <assert.h>
	#include <time.h>
	#include <math.h>
	#include "coObjectModel.h"
	#include "coUtils.h"
	#include "Types.h"
	
	#ifdef unix
		#include <errno.h>
		#include <unistd.h>
		#define sys_getError() (strerror(errno))
	#else
		#error "Operating system not supported yet"
	#endif
	
	#define	UINF				((u32)0xFFFFFFFF)
	#define	USINF				((u16)0xFFFF)
	
	/** Enable memory leaks detection for known allocation/deallocation
	 * functions
	 * @see common/Memory.h
	 */
	#define CHECK_MEMORY_LEAKS	1
	
	/** Use macros instead of proxy methods to virtuals
	 * @note Macros does not offer any checks
	 * for NULL: this, class, vtable, vptr but are faster
	 */
	#define USE_MACRO_VIRTUAL_METHOD_CALL	1
	
	struct options {
		const char  *base_dir;
		u16			screen_width;
		u16			screen_height;
		u16			screen_maxwidth;
		u16			screen_maxheight;
		b8			fullscreen;
		char 		align[3];
	};
	
	/** DEBUG FLAGS **/
	
	/** Uncomment this to enable logging in constructors and destructors
	 * at any level of inheritance
	 */
	//#define VERBOSE_CREATE		1
	
	
	#define PRINT_MOUSE_ENTERS	0
	
	#define CSTR(CONST_PCHAR) ((CONST_PCHAR)?(CONST_PCHAR):"(null)")
	
	// Checks if two surfaces are valid and in the same format
	//
	// Returns 1 if one of the following conditions are met:
	//	a) IMGSRC or IMGDST is NULL
	//	b) IMGSRC->pixels or IMGDST->pixels is NULL
	//	c) IMGSRC->format or IMGDST->format is NULL
	//	d) Surfaces IMGSRC and IMGDST have different format, mismatch in:
	//		width, height, pitch, BytesPerPixel, (A|R|G|B)Shift, (A|R|G|B)mask
	//	Otherwise, returns 0
	#define Check_surfaces(IMGSRC, IMGDST)	(((!((IMGSRC)))||(!((IMGDST))))?1:(((!((IMGSRC)->format))||(!((IMGDST)->format)))?(1):(((IMGSRC)->pitch != (IMGDST)->pitch) || ((IMGSRC)->w != (IMGDST)->w) || ((IMGSRC)->h != (IMGDST)->h) || ((IMGSRC)->format->BytesPerPixel != (IMGDST)->format->BytesPerPixel) || ((IMGSRC)->format->Amask != (IMGDST)->format->Amask) || ((IMGSRC)->format->Rmask != (IMGDST)->format->Rmask) || ((IMGSRC)->format->Gmask != (IMGDST)->format->Gmask) || ((IMGSRC)->format->Bmask != (IMGDST)->format->Bmask) || ((IMGSRC)->format->Ashift != (IMGDST)->format->Ashift) || ((IMGSRC)->format->Rshift != (IMGDST)->format->Rshift) || ((IMGSRC)->format->Gshift != (IMGDST)->format->Gshift) || ((IMGSRC)->format->Bshift != (IMGDST)->format->Bshift) || (!(IMGSRC)->pixels) || (!(IMGDST)->pixels))) )

	// Check single surface
	// Returns 1 if 
	//	a) SURF is NULL
	//	b) SURF->pixels is NULL
	//	c) SURF->format is NULL
	// Otherwise, returns 0
	#define Check_surface(SURF) ((!(SURF))?1:((!((SURF)->pixels))?1:((!((SURF)->format))?1:0)))
	
	// Check BytesPerPixel
	// Returns 1 if Bpp is other than 3 or 4
	// Otherwise, returns 0
	#define Check_Bpp(BPP) (((BPP) != 3) && ((BPP) != 4))
	
	// Types of function error codes (exit code is of type unsigned char (u8) 
	#define ERROR_CHECK_SURF		200
	#define ERROR_UNSUPPORTED_BPP	100
	#define	NO_ERROR				0
	
    /* SDL interprets each pixel as a 32-bit number, so our masks must depend
       on the endianness (byte order) of the machine 
       * http://www.libsdl.org/docs/html/sdlcreatergbsurface.html */
	#if SDL_BYTEORDER == SDL_BIG_ENDIAN
		#define W_RMASK ((Uint32)0xff000000)
		#define W_GMASK ((Uint32)0x00ff0000)
		#define W_BMASK ((Uint32)0x0000ff00)
		#define W_AMASK ((Uint32)0x000000ff)
	#else
		#define W_RMASK ((Uint32)0x000000ff)
		#define W_GMASK ((Uint32)0x0000ff00)
		#define W_BMASK ((Uint32)0x00ff0000)
		#define W_AMASK ((Uint32)0xff000000)
	#endif
	
	#define W_SDL_FLAGS				(SDL_HWSURFACE|SDL_DOUBLEBUF)
	#define W_BPP 					(32)
	#define W_SCREEN_WIDTH 			(1920)
	#define W_SCREEN_HEIGHT 		(600)
	#define W_SCREEN_MAX_WIDTH		(1920)
	#define W_SCREEN_MAX_HEIGHT		(1200)
	#define W_BGCOLOR 				0x00FFFF
	#define	W_DEFAULT_FONTSIZE		(30)
	#define W_DEFAULT_FONT			("fonts/impact.ttf")
	#define W_DEFAULT_BGCOLOR		(0x00EDECEB)
	#define W_DEFAULT_FGCOLOR		(0x00000000)
	#define W_DEFAULT_BORDER_COLOR	(0x000000BB)
	#define	W_WINDOW_TITLE			("SDL Widgets")
	#define W_SDL_DIR ("/home/darek/1_SDL_Widgets")
#endif
