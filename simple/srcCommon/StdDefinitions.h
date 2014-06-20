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
	#include <stdlib.h>
	#include <stdio.h>
	#include <string.h>
	#include <stdarg.h>
	
	typedef unsigned char 		uchar;
	typedef unsigned char 		bool;
	typedef unsigned int 		uint;
	typedef unsigned short 		usint;
	typedef signed short 		sint;
	typedef unsigned long 		ulong;
	typedef unsigned long long 	ullong;
	
	#define true	((uchar)1)
	#define	false	((uchar)0)
	#define TRUE	((void*)1)
	#define FALSE	((void*)0)
	#define	UINF	((uint)0xFFFFFFFF)
	#define	USINF	((usint)0xFFFF)
	
	#define CHECK_OBJECT_LEAKS
	#define CHECK_MEMORY_LEAKS
	
	#define W_BPP 					(32)
	#define W_SCREEN_WIDTH 			(1920)
	#define W_SCREEN_HEIGHT 		(600)
	#define W_SCREEN_MAX_WIDTH		(1920)
	#define W_SCREEN_MAX_HEIGHT		(1200)
	#define W_DEFAULT_BGCOLOR		(0x00EDECEB)
	#define W_DEFAULT_FGCOLOR		(0x00000000)
	#define W_DEFAULT_BORDER_COLOR	(0x000000BB)
	#define	W_DEFAULT_FONTSIZE		(30)
	#define W_DEFAULT_FONTSTYLE		(FONT_NORMAL)
	#define W_DEFAULT_FONT			("fonts/impact.ttf")
	#define W_FONT_DIR				("/usr/share/fonts")
	#define W_FONT_CACHE			("/home/darek/Dropbox/e/KCK/SDL_Widgets/font.cache")
	#define W_SDL_FLAGS				(SDL_HWSURFACE|SDL_DOUBLEBUF)
	#define W_WINDOW_TITLE			("Simple SDL example")
	#define W_SDL_DIR "/home/darek/Dropbox/e/KCK/SDL_Widgets"
	
	#define		setFlag(PTR, SEL, MASK) ((PTR)?((SEL)?((PTR)->flags |= (MASK)):((PTR)->flags &= ~(MASK))):(0))
	#define		getFlag(PTR, MASK)		((PTR)?(((PTR)->flags & (MASK))?(1):(0)):(0))
	
	struct Point {
		usint 	x, y;
	};
	
	enum direction {
		UP, LEFT, DOWN, RIGHT
	};
	
	enum layouttype {
		HORIZONTAL = 0,
		VERTICAL = 1
	};
	
	enum alignment {
		ALIGN_TOP = 1,
		ALIGN_BOTTOM,
		ALIGN_CENTER,
		ALIGN_LEFT,
		ALIGN_RIGHT
	};
	
	struct Spacing {
		usint 	top, left, bottom, right;
	};
	
	struct options {
		const char  *base_dir;
		usint		screen_width;
		usint		screen_height;
		usint		screen_maxwidth;
		usint		screen_maxheight;
		bool		fullscreen;
		bool 		verbose_construct_destroy;
	};
	
	#define MOUSE_LMASK				SDL_BUTTON(SDL_BUTTON_LEFT)
	#define MOUSE_MMASK				SDL_BUTTON(SDL_BUTTON_MIDDLE)
	#define MOUSE_RMASK				SDL_BUTTON(SDL_BUTTON_RIGHT)
	#define MOUSE_WHELLUPMASK		SDL_BUTTON(SDL_BUTTON_WHEELUP)
	#define MOUSE_WHELLDOWNMASK		SDL_BUTTON(SDL_BUTTON_WHEELDOWN)
	#define MOUSE_X1MASK			SDL_BUTTON(SDL_BUTTON_X1)
	#define MOUSE_X2MASK			SDL_BUTTON(SDL_BUTTON_X2)
	
	
	/** Masks and shifts for 0xAARRGGBB **/
	#define A_MASK	((Uint32)0xFF000000)
	#define R_MASK	((Uint32)0x00FF0000)
	#define G_MASK	((Uint32)0x0000FF00)
	#define B_MASK	((Uint32)0x000000FF)
	#define A_SHIFT	24
	#define R_SHIFT 16
	#define G_SHIFT 8
	#define B_SHIFT 0
	/// void argb_conv(uint argb, uchar a, uchar b, uchar c) 
	#define ARGB_CONV(ARGB, A, R, G, B)						\
	{														\
		A = ((ARGB) & A_MASK) >> A_SHIFT;					\
		R = ((ARGB) & R_MASK) >> R_SHIFT;					\
		G = ((ARGB) & G_MASK) >> G_SHIFT;					\
		B = ((ARGB) & B_MASK) >> B_SHIFT;					\
	} 
#endif
