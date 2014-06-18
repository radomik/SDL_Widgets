/*      Graphics Morphology Functions (static class)
 *      (with help) http://peterclassprojects.googlecode.com/svn/trunk/CS650/Assignments/A1/src/morph.c
 *
 *      GToolsMorph.c - this file is part of SDL_Widgets
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
#include "Screen.h"
#include "Static.h"
#include "Memory.h"
#include "GToolsMorph.h"
#include "PixelDrawBox.h"
#include "Rectangle.h"

#define DEBUG			false		// set to true to print debugging informations (very verbose)
#define DEBUG_FROM_MAIN	false		// set to true when debugging with abstract surfaces created in Morph_main

#ifdef GTOOLS_MORPH_USE_OLD_CODE
#define GToolsMorph_fillSurf(IMGDST_SURF, OFF_DST, END_SRCX_OFF, WB, VALUE)											\
{																												\
	(OFF_DST)  	 	= (IMGDST_SURF)->pixels;									/*start of destination image*/	\
	(END_SRCX_OFF) 	= (OFF_DST) + (IMGDST_SURF)->h * (IMGDST_SURF)->pitch;		/*end of destination image*/	\
	(WB) 			= (IMGDST_SURF)->w * (IMGDST_SURF)->format->BytesPerPixel;									\
	while ((OFF_DST) < (END_SRCX_OFF)) {		/*Fill each channel of destination image with VALUE*/			\
		memset((OFF_DST), (VALUE), (WB));																		\
		(OFF_DST) += (IMGDST_SURF)->pitch;																		\
	}																											\
}


u8 GToolsMorph_dilate3(SDL_Surface *imgsrc, SDL_Surface *imgdst, const PixelDrawBox *str_elem) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsMorph_dilate3() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	u8 Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsMorph_dilate3() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	if (str_elem) { // if passed structuring element (else: use geodhetic structuring element)
		if ((str_elem->actX >= imgsrc->w) || (str_elem->actY >= imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_dilate3() > Structuring element size should be smaller than image size.\n");
			return 1;
		}
		
		if ((str_elem->spec_pix_x >= imgsrc->w) || (str_elem->spec_pix_y >= imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_dilate3() > Structuring element origin not exists or is outside of image.\n");
			return 2;
		}
	}
	uint 	pitch 		= imgsrc->pitch;
	u8	*off_src;		// source offset (most top-left point from src image used as releative point)
	u8	*end_srcy_off, *p_src_off, *d_src_off;
	u8	*end_srcx_off, *off_dst;
	u16 	y, x;
	uint	dx = Bpp   * ( ((str_elem)?str_elem->actX:3) - 1);
	uint	dy = pitch * ( ((str_elem)?str_elem->actY:3) - 1);
	uint	wb, col, alpha = 0, str_color;
	u8	max[3], color[3];
	uint	sp = (pitch/Bpp > (imgsrc->w)) ? (pitch/Bpp-(imgsrc->w)) : 0; sp *= Bpp;
	if (DEBUG) fprintf(stderr, "dx=%u, dy=%u, sp = %u\n", dx, dy, sp);
	
	if (! DEBUG_FROM_MAIN) {if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);}	/*lock destination surface*/
	
	/* Clear destination image with background color */
	GToolsMorph_fillSurf(imgdst, off_dst, end_srcx_off, wb, 0xFF);
	
	
	off_dst  	 = imgdst->pixels;							// start of destination image
	end_srcx_off = off_dst + imgdst->h * imgdst->pitch;		// end of destination image
	wb 			 = imgdst->w * imgdst->format->BytesPerPixel;
	if (! DEBUG_FROM_MAIN) {if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);}	// lock destination surface
	
	while (off_dst < end_srcx_off) {		// Fill destination image with 0xFF (white)
		memset(off_dst, 0xFF, wb);		// no transparency
		off_dst += pitch;
	}
	/**/
	
	wb 			 = imgsrc->w * Bpp - dx;
	off_dst 	 = (u8*)imgdst->pixels + Bpp * ((str_elem)?str_elem->spec_pix_x:1) + pitch * ((str_elem)?str_elem->spec_pix_y:1);
	off_src 	 = (u8*)imgsrc->pixels;
	end_srcy_off = off_src+(imgsrc->h - ((str_elem)?str_elem->actY:3) )*pitch; 
	sp += dx;
	if (DEBUG) fprintf(stderr, "wb=%u, sp=%u\n", wb, sp);
	
	while (off_src <= end_srcy_off) {
		end_srcx_off = off_src + wb;
		
		while (off_src < end_srcx_off) {
			
			memset(max, 0x00, 3);
			/* Now off_src and off_dst are fixed
			 * starting from most top-left corner of viewport made by structuring rectangle
			 * find max value point (per each channel) and set it to off_dst */
			for (y = 0, p_src_off = off_src; p_src_off <= off_src + dy; p_src_off += pitch, y++) {
				for (x = 0, d_src_off = p_src_off; d_src_off <= p_src_off + dx; d_src_off += Bpp, x++) {
					if ((! str_elem) || ((str_color=PixelDrawBox_getPixel(str_elem, y, x)) != PDB_BGCOLOR)) {
						if (! str_elem) { str_color = ((x==1)&&(y==1))?PDB_SELCOLOR:PDB_FGCOLOR; }
						if (Bpp == 3) {
							memcpy(color, d_src_off, Bpp);
							if (color[0] > max[0]) max[0] = color[0];
							if (color[1] > max[1]) max[1] = color[1];
							if (color[2] > max[2]) max[2] = color[2];
						}
						else {	// Bpp == 4 -- copy alpha 
							if (Bpp == 4) {
								col = *((uint*)d_src_off);		// get pixel (4-byte) from source
								if (str_color == PDB_SELCOLOR)
									alpha = col & imgsrc->format->Amask;
								
								color[0] = ((col & imgsrc->format->Rmask) >> (imgsrc->format->Rshift));
								color[1] = ((col & imgsrc->format->Gmask) >> (imgsrc->format->Gshift));
								color[2] = ((col & imgsrc->format->Bmask) >> (imgsrc->format->Bshift));
								if (color[0] > max[0]) max[0] = color[0];
								if (color[1] > max[1]) max[1] = color[1];
								if (color[2] > max[2]) max[2] = color[2];
								
							}	
						}
					}
				}
			}
			
			/* Set pixel in destination */
			
			if (Bpp == 3) {
				memcpy(off_dst, max, Bpp);
			}
			else {
				if (Bpp == 4) {
					col = alpha | ((uint)max[0]<<imgsrc->format->Rshift) | ((uint)max[1]<<imgsrc->format->Gshift) | ((uint)max[2]<<imgsrc->format->Bshift);
					*((uint*)off_dst) = col;
				}
			}
			
			if (DEBUG) fprintf(stderr, "In src %lu, In dst %lu\n", (u64)(off_src - (u8*)imgsrc->pixels), (u64)(off_dst - (u8*)imgdst->pixels));
			off_src += Bpp;
			off_dst += Bpp;
		}
		off_src += sp;	
		off_dst += sp;
	}
	
	if (! DEBUG_FROM_MAIN) {if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);}
	
	return NO_ERROR;
}

u8 GToolsMorph_dilate2() {
	/* constants */
	u8 Bpp = 3;
	u16 h = 6, w=8, pitch = 30;
	u16 specX = 1, specY = 1;
	u16 actX = 3, actY = 4;
	
	u8 sp = 2*Bpp;							// /*standard calculate*/ u8 sp = (pitch/Bpp > (imgsrc->w)) ? (pitch/Bpp-(imgsrc->w)) : 0; sp *= Bpp;
	u16 dx = Bpp*(actX - 1);					// u16 dx = Bpp * (str_elem->actX - 1);
	u16 dy = pitch*(actY - 1);				// u16 dy = pitch * (str_elem->actY - 1);
	u16 x, y;
	u16 wBpp = w * Bpp;
	u16 specXBpp = specX * Bpp;
	
	short off_src_start = 0;					// u8 *off_src_start = imgsrc->pixels;
	short off_src_end = 0 + pitch * h;			// u8 *off_src_end = imgsrc->pixels + pitch * imgsrc->h;
	short off_src_pom = 0 - specY * pitch;		// u8 *off_src_pom = imgsrc->pixels - str_elem->spec_pix_y * pitch;
	short off_src = off_src_pom - Bpp * specX; 	// u8 *off_src = off_src_pom - Bpp * str_elem->spec_pix_x;
	short off_dst = 0;							// u8 *off_dst = imgdst->pixels;
	short off_dst_end = off_dst + pitch * h;	// u8 *off_dst_end = off_dst + pitch * imgdst->h
	
	short off_dst_xend;							// u8 *off_dst_xend;
	short first_xsrc, last_xsrc;				// u8 *first_xsrc, *last_xsrc;
	short first_xsrc_pom, last_xsrc_pom;		// u8 *first_xsrc_pom, *last_xsrc_pom;
	short p_src_off, d_src_off;					// u8 *p_src_off, *d_src_off;
	
	if (DEBUG) {
		fprintf(stderr, "actX=%hu, actY=%hu, specX=%hu, specY=%hu\n", actX, actY, specX, specY);
		fprintf(stderr, "w=%hu, h=%hu, pitch=%hu, wBpp=%hu, specXBpp=%hu\n", w, h, pitch, wBpp, specXBpp);
		fprintf(stderr, "Bpp=%d, sp=%d, dx=%hu, dy=%hu\n", Bpp, sp, dx, dy);
		fprintf(stderr, "off_src=%hd, off_src_pom=%hd, off_src_end=%hd\n", off_src, off_src_pom, off_src_end);
		fprintf(stderr, "off_dst=%hd, off_dst_end=%hd\n", off_dst, off_dst_end);
	}
	
	/*DEBUG*/u16 step = 0, step2 = 0;
	
	/*A*/while (off_dst < off_dst_end) {
		if (DEBUG) fprintf(stderr, "Krok A [%hu] off_src=%hd, off_dst=%hd, off_dst_end=%hd\n", ++step, off_src, off_dst, off_dst_end);
		off_dst_xend = off_dst + w * Bpp;
		last_xsrc = off_src_pom + w * Bpp;
		first_xsrc = off_src_pom;
		if (DEBUG) fprintf(stderr, "  off_dst_xend=%hd, first_xsrc=%hd, last_xsrc=%hd\n", off_dst_xend, first_xsrc, last_xsrc);
		
		/*B*/while (off_dst < off_dst_xend) {
			/*RELEASE memset(max, 0x00, 3);*/
			if (DEBUG) fprintf(stderr, "\tKrok B [%hu] off_src=%hd, off_dst=%hd, off_dst_xend=%hd\n", ++step2, off_src, off_dst, off_dst_xend);
			
			for (p_src_off = off_src, first_xsrc_pom = first_xsrc, last_xsrc_pom = last_xsrc, y = 0;
					p_src_off <= off_src + dy;
					p_src_off += pitch, last_xsrc_pom += pitch, first_xsrc_pom += pitch, y++) {
				for (d_src_off = p_src_off, x = 0;
						((d_src_off <= p_src_off+dx) && (d_src_off < last_xsrc_pom));
						d_src_off += Bpp, x++) {
						
						if (DEBUG) fprintf(stderr, "\t\t(y,x)=[%hu][%hu], p_src_off=%hd, d_src_off=%hd !! off_src_start=%hd, first_xsrc_pom=%hd, off_src_end=%hd\n", y, x, p_src_off, d_src_off, off_src_start, first_xsrc_pom, off_src_end);
						if ((d_src_off >= first_xsrc_pom) && (d_src_off >= off_src_start) && (d_src_off < off_src_end)) {
							if (DEBUG) fprintf(stderr, "\t\t\t Process pixel %hd from source\n", d_src_off);
						}
					}
				
			}
			
			if (DEBUG) fprintf(stderr, "Set pixel %hd in destination.\n", off_dst);
			
			off_src += Bpp;
			off_dst += Bpp;
		}
		/*DEBUG*/step2 = 0;
		
		off_src_pom += pitch;
		off_dst += sp;
		//off_src += specXBpp;
		off_src += sp;
	}
	return NO_ERROR;
}

/* Creates new surface SURFDST copying attributes from SURFSRC 
 * copies only atrributes needed for methods from this file
 * array of pixels is filled with zeros 
 * NOTE: This surface is used only as temporary pixels container
 * it probably cannot be properly displayed and removed by SDL_FreeSurface
 * To remove such surface use GToolsMorph_freeSurface(SDL_Surface*) instead   */
#define GToolsMorph_createSurface(SURFDST, SURFSRC)										\
{																					\
	(SURFDST) = malloc(sizeof(SDL_Surface));										\
	(SURFDST)->format = malloc(sizeof(SDL_PixelFormat));							\
	(SURFDST)->format->BytesPerPixel = (SURFSRC)->format->BytesPerPixel;			\
	(SURFDST)->format->Amask = (SURFSRC)->format->Amask;							\
	(SURFDST)->format->Rmask = (SURFSRC)->format->Rmask;							\
	(SURFDST)->format->Gmask = (SURFSRC)->format->Gmask;							\
	(SURFDST)->format->Bmask = (SURFSRC)->format->Bmask;							\
	(SURFDST)->format->Ashift = (SURFSRC)->format->Ashift;							\
	(SURFDST)->format->Rshift = (SURFSRC)->format->Rshift;							\
	(SURFDST)->format->Gshift = (SURFSRC)->format->Gshift;							\
	(SURFDST)->format->Bshift = (SURFSRC)->format->Bshift;							\
	(SURFDST)->w = (SURFSRC)->w;													\
	(SURFDST)->h = (SURFSRC)->h;													\
	(SURFDST)->pitch = (SURFSRC)->pitch;											\
	(SURFDST)->pixels = calloc(((SURFSRC)->h)*((SURFSRC)->pitch), 1);				\
}

/* Remove temporary surface created by GToolsMorph_createSurface
 * DO NOT use SDL_FreeSurface to remove such surface */
#define GToolsMorph_freeSurface(SURFACE)														\
{																						\
	if ((SURFACE)) {																	\
		if ((SURFACE)->pixels) { free((SURFACE)->pixels); (SURFACE)->pixels = NULL; }	\
		if ((SURFACE)->format) { free((SURFACE)->format); (SURFACE)->format = NULL; }	\
		free(SURFACE);																	\
	}																					\
}

/* Remove temporary surface created by GToolsMorph_createSurface
 * DO NOT use SDL_FreeSurface to remove such surface */
#define GToolsMorph_freeSurface2(SURFACE)														\
{																						\
	free((SURFACE)->pixels);															\
	free((SURFACE)->format);															\
	free(SURFACE);																		\
}

void GToolsMorph_printSurf(SDL_Surface *surf) {
	u8 	Bpp = surf->format->BytesPerPixel;
	u8 	*off_src = surf->pixels;
	u8 	*off_src_end = off_src + surf->h*surf->pitch;
	uint	sp = ((surf->pitch)/Bpp > (surf->w)) ? ((surf->pitch)/Bpp-(surf->w)) : 0; sp *= Bpp;
	u8 	*off_line_end;
	uint	wb = surf->w * Bpp;
	u8	col[4];
	
	while (off_src < off_src_end) {
		off_line_end = off_src + wb;
		
		while (off_src < off_line_end) {
			if (Bpp == 1)
				fprintf(stderr, "%2X  ", *off_src);
			else {
				memcpy(col, off_src, Bpp);
				if (Bpp == 3)
					fprintf(stderr, "%2X.%2X.%2X  ", col[0], col[1], col[2]);
				else {
					if (Bpp == 4)
						fprintf(stderr, "%2X.%2X.%2X.%2X  ", col[0], col[1], col[2], col[3]);
				}
			}
			off_src += Bpp;
		}
		fprintf(stderr, "\n");
		off_src += sp;
	}
}

void GToolsMorph_fillSurf2(SDL_Surface *surf) {
	u8 	Bpp = surf->format->BytesPerPixel;
	u8 	*off_src = surf->pixels;
	u8 	*off_src_end = off_src + surf->h*surf->pitch;
	uint	sp = ((surf->pitch)/Bpp > (surf->w)) ? ((surf->pitch)/Bpp-(surf->w)) : 0; sp *= Bpp;
	u8 	*off_line_end;
	uint	wb = surf->w * Bpp;
	u8 	s;
	u8	col[4];
	
	while (off_src < off_src_end) {
		off_line_end = off_src + wb;
		while (off_src < off_line_end) {
			for (s = 0; s < Bpp; s++) col[s] = rand() % 0xFF;//k++;
			memcpy(off_src, col, Bpp);
			off_src += Bpp;
		}
		off_src += sp;
	}
}

#define W		8
#define H		6
#define Bpp		4
#define PITCH	((W+0)*Bpp)


// testing function
void GToolsMorph_main(SDL_Surface *src_surf, SDL_Surface *dst_surf, const PixelDrawBox *str_elem) {
	if (! DEBUG_FROM_MAIN) {
		fprintf(stderr, "Morph::Morph_main() Please set DEBUG_FROM_MAIN to true to debug morphologic methods from this method.\n");
		return;
	}
	GToolsMorph_dilate2();
	return;
	
	
	u16 x, y;
	fprintf(stderr, "Structuring element:\n");
	for (y = 0; y < str_elem->actY; y++) {
		for (x = 0; x < str_elem->actX; x++) {
			fprintf(stderr, "%X\t", PixelDrawBox_getPixel(str_elem, y, x));
		}
		fprintf(stderr, "\n");
	}
	
	/*u8 imgs[PITCH * H] = {
		0,	8,	7,	4,		0, 	0,
		0,	3,	1,	5,		0, 	0,
		0,	2,	8,	2,		0, 	0,
		0,	0,	0,	1,		0, 	0
	};*/
	
	SDL_Surface *imgsrc = malloc(sizeof(SDL_Surface));
	SDL_Surface *imgdst = malloc(sizeof(SDL_Surface));
	imgsrc->format = malloc(sizeof(SDL_PixelFormat));
	imgdst->format = malloc(sizeof(SDL_PixelFormat));
	imgsrc->format->BytesPerPixel = imgdst->format->BytesPerPixel = Bpp;
	imgsrc->format->Amask = 0xFF000000;
	imgsrc->format->Rmask = 0x00FF0000;
	imgsrc->format->Gmask = 0x0000FF00;
	imgsrc->format->Bmask = 0x000000FF;
	imgsrc->format->Ashift = 24;
	imgsrc->format->Rshift = 16;
	imgsrc->format->Gshift = 8;
	imgsrc->format->Bshift = 0;
	imgdst->w = imgsrc->w = W;
	imgdst->h = imgsrc->h = H;
	imgdst->pitch = imgsrc->pitch = PITCH;
	imgsrc->pixels = calloc(H*PITCH, 1);
	imgdst->pixels = calloc(H*PITCH, 1);
	
	
	//memcpy(imgsrc->pixels, imgs, PITCH*H);
	GToolsMorph_fillSurf2(imgsrc);
	fprintf(stderr, "\nimgsrc:\n");
	GToolsMorph_printSurf(imgsrc);
	
	GToolsMorph_dilate(imgsrc, imgdst, str_elem);
	
	fprintf(stderr, "\nimgdst:\n");
	GToolsMorph_printSurf(imgdst);
	
	free(imgsrc->pixels);
	free(imgdst->pixels);
	free(imgsrc->format);
	free(imgdst->format);
	free(imgsrc);
	free(imgdst);
	return;
}

#endif

u8 GToolsMorph_dilate(SDL_Surface *imgsrc, SDL_Surface *imgdst, const PixelDrawBox *str_elem) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsMorph_dilate() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	u8 Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsMorph_dilate() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	if (str_elem) {
		if ((str_elem->actX > imgsrc->w) || (str_elem->actY > imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_dilate() > Structuring element size should be smaller than image size.\n");
			return 1;
		}
		
		if ((str_elem->spec_pix_x >= imgsrc->w) || (str_elem->spec_pix_y >= imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_dilate() > Structuring element origin not exists or is outside of image.\n");
			return 2;
		}
	}

	u16 h = imgsrc->h, w=imgsrc->w;
	uint  pitch = imgsrc->pitch;
	u16 specX = ((str_elem)?str_elem->spec_pix_x:1), specY = ((str_elem)?str_elem->spec_pix_y:1);
	u16 actX  = ((str_elem)?str_elem->actX:3), actY = ((str_elem)?str_elem->actY:3);
	
	u8 sp = (pitch/Bpp > (imgsrc->w)) ? (pitch/Bpp-(imgsrc->w)) : 0; sp *= Bpp;
	u16 dx = Bpp*(actX - 1);					// u16 dx = Bpp * (str_elem->actX - 1);
	u16 dy = pitch*(actY - 1);				// u16 dy = pitch * (str_elem->actY - 1);
	u16 x, y;
	uint wBpp = w * Bpp;
	u8 max[3], color[3];
	uint col, alpha = 0, str_color;
	
	u8 *off_src_start = imgsrc->pixels;
	u8 *off_src_end = (u8*)imgsrc->pixels + pitch * imgsrc->h;
	u8 *off_src_pom = (u8*)imgsrc->pixels - specY * pitch;
	u8 *off_src = off_src_pom - Bpp * specX;
	u8 *off_dst = imgdst->pixels;
	u8 *off_dst_end = (u8*)imgdst->pixels + pitch * imgdst->h;
	
	u8 *off_dst_xend;
	u8 *first_xsrc, *last_xsrc;
	u8 *first_xsrc_pom, *last_xsrc_pom;
	u8 *p_src_off, *d_src_off;
	
	if (DEBUG) {
		fprintf(stderr, "actX=%hu, actY=%hu, specX=%hu, specY=%hu\n", actX, actY, specX, specY);
		fprintf(stderr, "w=%hu, h=%hu, pitch=%u, wBpp=%u\n", w, h, pitch, wBpp);
		fprintf(stderr, "Bpp=%d, sp=%d, dx=%hu, dy=%hu\n", Bpp, sp, dx, dy);
		fprintf(stderr, "off_src=%lu, off_src_pom=%lu, off_src_end=%lu\n", (u64)off_src, (u64)off_src_pom, (u64)off_src_end);
		fprintf(stderr, "off_dst=%lu, off_dst_end=%lu\n", (u64)off_dst, (u64)off_dst_end);
	}
	
	/*DEBUG*/u16 step = 0, step2 = 0;
	
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	/*A*/while (off_dst < off_dst_end) {
		if (DEBUG) fprintf(stderr, "Krok A [%hu] off_src=%lu, off_dst=%lu, off_dst_end=%lu\n", ++step, (u64)off_src, (u64)off_dst, (u64)off_dst_end);
		off_dst_xend = off_dst + wBpp;
		last_xsrc = off_src_pom + wBpp;
		first_xsrc = off_src_pom;
		if (DEBUG) fprintf(stderr, "  off_dst_xend=%lu, first_xsrc=%lu, last_xsrc=%lu\n", (u64)off_dst_xend, (u64)first_xsrc, (u64)last_xsrc);
		
		/*B*/while (off_dst < off_dst_xend) {
			/* Reset max[3] array */
			memset(max, 0x00, 3);
			
			if (DEBUG) fprintf(stderr, "\tKrok B [%hu] off_src=%lu, off_dst=%lu, off_dst_xend=%lu\n", ++step2, (u64)off_src, (u64)off_dst, (u64)off_dst_xend);
			
			for (p_src_off = off_src, first_xsrc_pom = first_xsrc, last_xsrc_pom = last_xsrc, y = 0;
					p_src_off <= off_src + dy;
					p_src_off += pitch, last_xsrc_pom += pitch, first_xsrc_pom += pitch, y++) {
				for (d_src_off = p_src_off, x = 0;
						((d_src_off <= p_src_off+dx) && (d_src_off < last_xsrc_pom));
						d_src_off += Bpp, x++) {
						
						if (DEBUG) fprintf(stderr, "\t\t(y,x)=[%hu][%hu], p_src_off=%lu, d_src_off=%lu !! off_src_start=%lu, first_xsrc_pom=%lu, off_src_end=%lu\n", y, x, (u64)p_src_off, (u64)d_src_off, (u64)off_src_start, (u64)first_xsrc_pom, (u64)off_src_end);
						if ((d_src_off >= first_xsrc_pom) && (d_src_off >= off_src_start) && (d_src_off < off_src_end)) {
							if (DEBUG) fprintf(stderr, "\t\t\t Process pixel %lu from source\n", (u64)(d_src_off-off_src_start));
							/* Process pixel from d_src_off offset */
							if ((!str_elem)||((str_color=PixelDrawBox_getPixel(str_elem, y, x)) != PDB_BGCOLOR)) {
								if (!str_elem) { str_color = ((y==1)&&(x==1))?PDB_SELCOLOR:PDB_FGCOLOR; }
								if (str_color == PDB_SELCOLOR_NOINCL) {
									if (Bpp == 4) alpha = (*((uint*)d_src_off)) & imgsrc->format->Amask;
								}
								else {
									if (Bpp == 3) {
										memcpy(color, d_src_off, Bpp);
										if (color[0] > max[0]) max[0] = color[0];
										if (color[1] > max[1]) max[1] = color[1];
										if (color[2] > max[2]) max[2] = color[2];
									}
									else {	// Bpp == 4 -- copy alpha 
										if (Bpp == 4) {
											col = *((uint*)d_src_off);		// get pixel (4-byte) from source
											if (str_color == PDB_SELCOLOR)
												alpha = col & imgsrc->format->Amask;
											
											color[0] = ((col & imgsrc->format->Rmask) >> (imgsrc->format->Rshift));
											color[1] = ((col & imgsrc->format->Gmask) >> (imgsrc->format->Gshift));
											color[2] = ((col & imgsrc->format->Bmask) >> (imgsrc->format->Bshift));
											if (color[0] > max[0]) max[0] = color[0];
											if (color[1] > max[1]) max[1] = color[1];
											if (color[2] > max[2]) max[2] = color[2];
										}	
									}
								}
							}
						}
					}
			}
			
			if (DEBUG) fprintf(stderr, "Set pixel %lu in destination.\n", (u64)(off_dst-(u8*)imgdst->pixels));
			/* Set pixel in destination at off_dst offset to obtained max[3] value */
			if (Bpp == 3) {
				memcpy(off_dst, max, Bpp);
			}
			else {
				if (Bpp == 4) {
					col = alpha | ((uint)max[0]<<imgsrc->format->Rshift) | ((uint)max[1]<<imgsrc->format->Gshift) | ((uint)max[2]<<imgsrc->format->Bshift);
					*((uint*)off_dst) = col;
				}
			}
			
			off_src += Bpp;
			off_dst += Bpp;
		}
		/*DEBUG*/step2 = 0;
		
		off_src_pom += pitch;
		off_dst += sp;
		off_src += sp;
	}
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	return NO_ERROR;
}

u8 GToolsMorph_erode(SDL_Surface *imgsrc, SDL_Surface *imgdst, const PixelDrawBox *str_elem) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsMorph_erode() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	u8 Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsMorph_erode() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	if (str_elem) {
		if ((str_elem->actX > imgsrc->w) || (str_elem->actY > imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_erode() > Structuring element size should be smaller than image size.\n");
			return 1;
		}
		
		if ((str_elem->spec_pix_x >= imgsrc->w) || (str_elem->spec_pix_y >= imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_erode() > Structuring element origin not exists or is outside of image.\n");
			return 2;
		}
	}

	u16 h = imgsrc->h, w=imgsrc->w;
	uint  pitch = imgsrc->pitch;
	u16 specX = ((str_elem)?str_elem->spec_pix_x:1), specY = ((str_elem)?str_elem->spec_pix_y:1);
	u16 actX  = ((str_elem)?str_elem->actX:3), actY = ((str_elem)?str_elem->actY:3);
	
	u8 sp = (pitch/Bpp > (imgsrc->w)) ? (pitch/Bpp-(imgsrc->w)) : 0; sp *= Bpp;
	u16 dx = Bpp*(actX - 1);					// u16 dx = Bpp * (str_elem->actX - 1);
	u16 dy = pitch*(actY - 1);				// u16 dy = pitch * (str_elem->actY - 1);
	u16 x, y;
	uint wBpp = w * Bpp;
	u8 min[3], color[3];
	uint col, alpha = 0, str_color;
	
	u8 *off_src_start = imgsrc->pixels;
	u8 *off_src_end = (u8*)imgsrc->pixels + pitch * imgsrc->h;
	u8 *off_src_pom = (u8*)imgsrc->pixels - specY * pitch;
	u8 *off_src = off_src_pom - Bpp * specX;
	u8 *off_dst = imgdst->pixels;
	u8 *off_dst_end = (u8*)imgdst->pixels + pitch * imgdst->h;
	
	u8 *off_dst_xend;
	u8 *first_xsrc, *last_xsrc;
	u8 *first_xsrc_pom, *last_xsrc_pom;
	u8 *p_src_off, *d_src_off;
	
	if (DEBUG) {
		fprintf(stderr, "actX=%hu, actY=%hu, specX=%hu, specY=%hu\n", actX, actY, specX, specY);
		fprintf(stderr, "w=%hu, h=%hu, pitch=%u, wBpp=%u\n", w, h, pitch, wBpp);
		fprintf(stderr, "Bpp=%d, sp=%d, dx=%hu, dy=%hu\n", Bpp, sp, dx, dy);
		fprintf(stderr, "off_src=%lu, off_src_pom=%lu, off_src_end=%lu\n", (u64)off_src, (u64)off_src_pom, (u64)off_src_end);
		fprintf(stderr, "off_dst=%lu, off_dst_end=%lu\n", (u64)off_dst, (u64)off_dst_end);
	}
	
	/*DEBUG*/u16 step = 0, step2 = 0;
	
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	/*A*/while (off_dst < off_dst_end) {
		if (DEBUG) fprintf(stderr, "Krok A [%hu] off_src=%lu, off_dst=%lu, off_dst_end=%lu\n", ++step, (u64)off_src, (u64)off_dst, (u64)off_dst_end);
		off_dst_xend = off_dst + wBpp;
		last_xsrc = off_src_pom + wBpp;
		first_xsrc = off_src_pom;
		if (DEBUG) fprintf(stderr, "  off_dst_xend=%lu, first_xsrc=%lu, last_xsrc=%lu\n", (u64)off_dst_xend, (u64)first_xsrc, (u64)last_xsrc);
		
		/*B*/while (off_dst < off_dst_xend) {
			/* Reset max[3] array */
			memset(min, 0xFF, 3);
			
			if (DEBUG) fprintf(stderr, "\tKrok B [%hu] off_src=%lu, off_dst=%lu, off_dst_xend=%lu\n", ++step2, (u64)off_src, (u64)off_dst, (u64)off_dst_xend);
			
			for (p_src_off = off_src, first_xsrc_pom = first_xsrc, last_xsrc_pom = last_xsrc, y = 0;
					p_src_off <= off_src + dy;
					p_src_off += pitch, last_xsrc_pom += pitch, first_xsrc_pom += pitch, y++) {
				for (d_src_off = p_src_off, x = 0;
						((d_src_off <= p_src_off+dx) && (d_src_off < last_xsrc_pom));
						d_src_off += Bpp, x++) {
						
						if (DEBUG) fprintf(stderr, "\t\t(y,x)=[%hu][%hu], p_src_off=%lu, d_src_off=%lu !! off_src_start=%lu, first_xsrc_pom=%lu, off_src_end=%lu\n", y, x, (u64)p_src_off, (u64)d_src_off, (u64)off_src_start, (u64)first_xsrc_pom, (u64)off_src_end);
						if ((d_src_off >= first_xsrc_pom) && (d_src_off >= off_src_start) && (d_src_off < off_src_end)) {
							if (DEBUG) fprintf(stderr, "\t\t\t Process pixel %lu from source\n", (u64)(d_src_off-off_src_start));
							/* Process pixel from d_src_off offset */
							if ((!str_elem)||((str_color=PixelDrawBox_getPixel(str_elem, y, x)) != PDB_BGCOLOR)) {
								if (!str_elem) { str_color = ((y==1)&&(x==1))?PDB_SELCOLOR:PDB_FGCOLOR; }
								if (str_color == PDB_SELCOLOR_NOINCL) {
									if (Bpp == 4) alpha = (*((uint*)d_src_off)) & imgsrc->format->Amask;
								}
								else {
									if (Bpp == 3) {
										memcpy(color, d_src_off, Bpp);
										if (color[0] < min[0]) min[0] = color[0];
										if (color[1] < min[1]) min[1] = color[1];
										if (color[2] < min[2]) min[2] = color[2];
									}
									else {	// Bpp == 4 -- copy alpha 
										if (Bpp == 4) {
											col = *((uint*)d_src_off);		// get pixel (4-byte) from source
											if (str_color == PDB_SELCOLOR)
												alpha = col & imgsrc->format->Amask;
											
											color[0] = ((col & imgsrc->format->Rmask) >> (imgsrc->format->Rshift));
											color[1] = ((col & imgsrc->format->Gmask) >> (imgsrc->format->Gshift));
											color[2] = ((col & imgsrc->format->Bmask) >> (imgsrc->format->Bshift));
											if (color[0] < min[0]) min[0] = color[0];
											if (color[1] < min[1]) min[1] = color[1];
											if (color[2] < min[2]) min[2] = color[2];
										}	
									}
								}
							}
						}
					}
			}
			
			if (DEBUG) fprintf(stderr, "Set pixel %lu in destination.\n", (u64)(off_dst-(u8*)imgdst->pixels));
			/* Set pixel in destination at off_dst offset to obtained min[3] value */
			if (Bpp == 3) {
				memcpy(off_dst, min, Bpp);
			}
			else {
				if (Bpp == 4) {
					col = alpha | ((uint)min[0]<<imgsrc->format->Rshift) | ((uint)min[1]<<imgsrc->format->Gshift) | ((uint)min[2]<<imgsrc->format->Bshift);
					*((uint*)off_dst) = col;
				}
			}
			
			off_src += Bpp;
			off_dst += Bpp;
		}
		/*DEBUG*/step2 = 0;
		
		off_src_pom += pitch;
		off_dst += sp;
		off_src += sp;
	}
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	return NO_ERROR;
}

u8 GToolsMorph_open(SDL_Surface *imgsrc, SDL_Surface *imgdst, const PixelDrawBox *str_elem) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsMorph_open() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	u8 Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsMorph_open() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	if (str_elem) {
		if ((str_elem->actX >= imgsrc->w) || (str_elem->actY >= imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_open() > Structuring element size should be smaller than image size.\n");
			return 1;
		}
		
		if ((str_elem->spec_pix_x >= imgsrc->w) || (str_elem->spec_pix_y >= imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_open() > Structuring element origin not exists or is outside of image.\n");
			return 2;
		}
	}
	
	SDL_Surface *temp_surface;
	if (! (temp_surface = Static_CopySurface(imgsrc))) {		// copy surface
		fprintf(stderr, "GToolsMorph_open> Failed to create temporary surface SDL_ConvertSurface: %s\n", SDL_GetError());
		return 3;
	}
	
	GToolsMorph_erode(imgsrc, temp_surface, str_elem);
	GToolsMorph_dilate(temp_surface, imgdst, str_elem);
	if (temp_surface)
		SDL_FreeSurface(temp_surface);
	return NO_ERROR;
}

u8 GToolsMorph_close(SDL_Surface *imgsrc, SDL_Surface *imgdst, const PixelDrawBox *str_elem) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsMorph_close() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	u8 Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsMorph_close() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	if (str_elem) {
		if ((str_elem->actX >= imgsrc->w) || (str_elem->actY >= imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_close() > Structuring element size should be smaller than image size.\n");
			return 1;
		}
		
		if ((str_elem->spec_pix_x >= imgsrc->w) || (str_elem->spec_pix_y >= imgsrc->h)) {
			fprintf(stderr, "GToolsMorph_close() > Structuring element origin not exists or is outside of image.\n");
			return 2;
		}
	}
	
	SDL_Surface *temp_surface;
	if (! (temp_surface = Static_CopySurface(imgsrc))) {		// copy surface
		fprintf(stderr, "GToolsMorph_close() Failed to create temporary surface SDL_ConvertSurface: %s\n", SDL_GetError());
		return 3;
	}
	
	GToolsMorph_dilate(imgsrc, temp_surface, str_elem);
	GToolsMorph_erode(temp_surface, imgdst, str_elem);
	
	if (temp_surface) SDL_FreeSurface(temp_surface);
	return NO_ERROR;
}

u8 GToolsMorph_reconstruction(SDL_Surface *imgmask, SDL_Surface *imgmarker, const u16 limit_iter) {
	if (Check_surfaces(imgmask, imgmarker)) { 
		fprintf(stderr, "GToolsMorph_reconstruction() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	
	u8 Bpp2 = imgmask->format->BytesPerPixel;
	
	
	if (Check_Bpp(Bpp2)) {
		fprintf(stderr, "GToolsMorph_reconstruction() > Unsupported BytesPerPixel format %d\n", Bpp2);
		return ERROR_UNSUPPORTED_BPP;
	}
	uint  pitches = 0, pitch = imgmask->pitch;
	uint  wb = imgmask->w * Bpp2; 				// count of bytes of image per line	
	uint  col[3], r[3], g[3], b[3], a;
	SDL_Surface *imgtmp = Static_CopySurface(imgmask);
	
	const u8 *pixels_mask     = imgmask->pixels;
	u8 		 *pixels_tmp      = imgtmp->pixels;
	u8 		 *pixels_marker   = imgmarker->pixels;
	const u8 *pixels_mask_end = (u8*)imgmask->pixels + pitch * imgmask->h;
	const u8 *px_mask;
	u8 		 *px_marker, *px_tmp;
	u16 	  iter = 0;
	u8 		  s;
	
	u8	col_src1[4], col_src2[4], col_dst[4];
	
	if (SDL_MUSTLOCK(imgmarker)) SDL_LockSurface(imgmarker);
	while (1) {
		if ( (s = GToolsMorph_dilate(imgmarker, imgtmp, NULL)) ) {
			fprintf(stderr, "GToolsMorph_reconstruction(): GToolsMorph_dilate() exited with code %d\n", s);
			break;
		}
		for (px_mask = pixels_mask, px_marker = pixels_marker, px_tmp = pixels_tmp;
				px_mask < pixels_mask_end;	) {
				if (pitches == wb) {	// end of image line
					while(pitches < pitch) { 
						pitches++; 
						px_mask++;
						px_marker++;
						px_tmp++;
					}	// skip line separating bytes
					pitches = 0;	// index of first byte in new line
				}
				/* Minimum from imgmask and imgtmp save to imgmarker */
				if (Bpp2 == 3) {
					memcpy(col_src1, px_mask, Bpp2);
					memcpy(col_src2, px_tmp , Bpp2);
					col_dst[0] = (col_src1[0] < col_src2[0]) ? col_src1[0] : col_src2[0];
					col_dst[1] = (col_src1[1] < col_src2[1]) ? col_src1[1] : col_src2[1];
					col_dst[2] = (col_src1[2] < col_src2[2]) ? col_src1[2] : col_src2[2];
					memcpy(px_marker, col_dst, Bpp2);
				}
				else {
					if (Bpp2 == 4) {
						col[0] = *((uint*)px_mask);
						r[0] = (col[0] & imgmask->format->Rmask)>>(imgmask->format->Rshift);
						g[0] = (col[0] & imgmask->format->Gmask)>>(imgmask->format->Gshift);
						b[0] = (col[0] & imgmask->format->Bmask)>>(imgmask->format->Bshift);
						a    = (col[0] & imgmask->format->Ashift);
						
						col[1] = *((uint*)px_tmp);
						r[1] = (col[1] & imgtmp->format->Rmask)>>(imgtmp->format->Rshift);
						g[1] = (col[1] & imgtmp->format->Gmask)>>(imgtmp->format->Gshift);
						b[1] = (col[1] & imgtmp->format->Bmask)>>(imgtmp->format->Bshift);
						
						r[2] = (r[0] < r[1])?r[0]:r[1];
						g[2] = (g[0] < g[1])?g[0]:g[1];
						b[2] = (b[0] < b[1])?b[0]:b[1];
						
						col[2] = (r[2] << imgmarker->format->Rshift)|(g[2] << imgmarker->format->Gshift)|(b[2] << imgmarker->format->Bshift)|a;
						
						*((uint*)px_marker) = col[2];
					}
				}
				
				px_mask += Bpp2;
				px_marker += Bpp2;
				px_tmp += Bpp2;
				pitches += Bpp2;
			}
		iter++;
		if ((limit_iter) && (iter == limit_iter)) break;
	}
	if (SDL_MUSTLOCK(imgmarker)) SDL_UnlockSurface(imgmarker);
	
	SDL_FreeSurface(imgtmp);
	return NO_ERROR;
}

