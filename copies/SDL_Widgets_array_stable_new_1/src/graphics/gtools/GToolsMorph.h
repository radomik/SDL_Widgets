/*      Graphics Morphology Functions (static class)
 *      (with help) http://peterclassprojects.googlecode.com/svn/trunk/CS650/Assignments/A1/src/morph.c
 *
 *      GToolsMorph.h - this file is part of SDL_Widgets
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

#ifndef _GToolsMorph_h_
	#define _GToolsMorph_h_
	#include "StdDefinitions.h"
	
	//! Static morphologic methods
	//! NOTE: Passing NULL as PixelDrawBox *str_elem forces these methods tu 
	//! use following structuring element:
	//! 1  1  1 	-- with origin in center of square (geodhetic type)
	//! 1 [1] 1
	//! 1  1  1
	
	uchar GToolsMorph_dilate(SDL_Surface *imgsrc, SDL_Surface *imgdst, PixelDrawBox *str_elem);
	uchar GToolsMorph_erode(SDL_Surface *imgsrc, SDL_Surface *imgdst, PixelDrawBox *str_elem);
	uchar GToolsMorph_open(SDL_Surface *imgsrc, SDL_Surface *imgdst, PixelDrawBox *str_elem);
	uchar GToolsMorph_close(SDL_Surface *imgsrc, SDL_Surface *imgdst, PixelDrawBox *str_elem);
	
	uchar GToolsMorph_reconstruction(SDL_Surface *imgmask, SDL_Surface *imgmarker, usint limit_iter);
	
	void  GToolsMorph_main(SDL_Surface *src_surf, SDL_Surface *dst_surf, PixelDrawBox *str_elem);
#endif
