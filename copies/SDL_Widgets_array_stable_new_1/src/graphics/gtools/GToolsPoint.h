/*      Graphics point operations (static class):
 * 				brightness and contrast
 * 				desaturize, 
 * 				binary thresholding (Otsu method and tom3k.info modified version)
 * 				negative
 * 				create histograms
 * 				histograms equalization
 * 		All of them works for 24 bit and 32 bit images represented by one-dimensional array of bytes
 *
 *      GToolsPoint.h - this file is part of SDL_Widgets
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

#ifndef _GToolsPoint_h_
	#define _GToolsPoint_h_
	/* Point operations, static methods */
	#include "StdDefinitions.h"
	
	uchar GToolsPoint_apply_brightness_contrast(SDL_Surface *imgsrc, SDL_Surface *imgdst, 
												float img_mul, short img_off, bool allow_overflow);
												
	uchar GToolsPoint_desaturize_std(SDL_Surface *imgsrc, SDL_Surface *imgdst);
	
	uchar GToolsPoint_create_histograms(SDL_Surface *image, uint **colors);
	
	uchar GToolsPoint_calculate_binary_threshold(uint *histogram, ullong *threshold, bool t_algo);
	
	uchar GToolsPoint_apply_bin_threshold(SDL_Surface *imgsrc, SDL_Surface *imgdst, ullong threshold);
	
	uchar GToolsPoint_negative(SDL_Surface *imgdst);
	
	uchar GToolsPoint_histEqualize(SDL_Surface *imgdst, uint **colors);
	
	
	/* Function replacing pixels in image in the following way:
	 * PSEUDO CODE input: imgsrc, imgdst, condition, threshold, new_color[3]
	 * pixel_dst = imgdst;
	 * foreach (pixel in imgsrc) {
	 * 		r = pixel.getRed();
	 * 		g = pixel.getGreen();
	 * 		b = pixel.getBlue();
	 * 		min = MIN(r,g,b);
	 * 		max = MAX(r,g,b);
	 * 		det = max-min;
	 * 		if (det <condition> <threshold>) {
	 * 			pixel_dst.red   = new_color[0]; // red
	 * 			pixel_dst.green = new_color[1]; // green
	 * 			pixel_dst.blue  = new_color[2]; // blue
	 * 			
	 * 		}
	 * 		else 
	 * 			pixel_dst = pixel;
	 * 		pixel_dst.Next();
	 * }
	 */
	typedef enum {
		LOWER		=0,
		GREATER		=1,
		LOWER_EQUAL	=2,
		GREATER_EQUAL	=3,
		EQUAL	=4,
		NOT_EQUAL	=5
	} condition;
	#define CONDITION_MAXIND	5
	uchar GToolsPoint_replace_pixels(SDL_Surface *imgsrc, SDL_Surface *imgdst, 
			condition cond, uchar threshold, uchar *new_color);
	
	#define	LOWER_SYM			"<"
	#define GREATER_SYM 		">"
	#define LOWER_EQUAL_SYM		"≤"
	#define GREATER_EQUAL_SYM	"≥"
	#define EQUAL_SYM			"="
	#define NOT_EQUAL_SYM		"≠"
	
	/* Histogram stretching 
	 * in x and y array there are points from graph
	 * both array are of size - size */
	uchar GToolsPoint_histogram_stretching(SDL_Surface *imgsrc, SDL_Surface *imgdst,
											usint *x, usint *y, usint size);
#endif
