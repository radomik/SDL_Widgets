/*      Generic filters (static class)
 *
 *      GToolsFilters.c - this file is part of SDL_Widgets
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
#include "Static.h"
#include "Memory.h"
#include "GToolsFilters.h"

#define GToolsFilter_median( ) 																															\
{	w = 0;																																				\
	for (p_src_off = off_src; p_src_off <= off_src + pitch2; p_src_off += pitch) {		/* foreach row in array 3x3 [start from left-upper corner]*/	\
		for (d_src_off = p_src_off; d_src_off <= p_src_off + Bpp2; d_src_off += Bpp) {																	\
			if (Bpp == 3) {																																\
				memcpy(color, d_src_off, Bpp);																											\
				w_col[0][w] = color[0];																													\
				w_col[1][w] = color[1];																													\
				w_col[2][w] = color[2];																													\
			}																																			\
			else {																																		\
				if (Bpp == 4) {																															\
					col = *((u32*)d_src_off);		/*get pixel (4-byte) from source*/																	\
					if (w == 4) 					/*get alpha from central point of 3x3 array*/														\
						a = col & imgsrc->format->Amask;	/*get R, G, B channels [0-255]*/															\
					w_col[0][w] = (u8)((col & imgsrc->format->Rmask) >> (imgsrc->format->Rshift)); 	/*get red   channel*/							\
					w_col[1][w] = (u8)((col & imgsrc->format->Gmask) >> (imgsrc->format->Gshift)); 	/*get green channel*/							\
					w_col[2][w] = (u8)((col & imgsrc->format->Bmask) >> (imgsrc->format->Bshift)); 	/*get blue  channel*/							\
				}																																		\
			}																																			\
			w++;																																		\
		}																																				\
	}																																					\
	for (w = 0; w < 3; w++) { /*BubbleSort - only 3 arrays of 9 numbers each */																			\
		for (i = 0; i < 9; i++) {																														\
			for (j = 0; j < 8-i; j++) {																													\
				if (w_col[w][j] > w_col[w][j+1]) {																										\
					t = w_col[w][j+1];																													\
					w_col[w][j+1] = w_col[w][j];																										\
					w_col[w][j] = t;																													\
				}																																		\
			}																																			\
		}																																				\
	}																																					\
																																						\
	if (Bpp == 3) {		/*Write median pixel [4] to destination*/																						\
		if (first) {																																	\
			*((u8*)off_dst) = *((u8*)off_dst-3) = w_col[0][4]; off_dst++;																			\
			*((u8*)off_dst) = *((u8*)off_dst-3) = w_col[1][4]; off_dst++;																			\
			*((u8*)off_dst) = *((u8*)off_dst-3) = w_col[2][4]; off_dst++;																			\
			first = false;																																\
		}																																				\
		else {																																			\
			*((u8*)off_dst) = w_col[0][4]; off_dst++;																								\
			*((u8*)off_dst) = w_col[1][4]; off_dst++;																								\
			*((u8*)off_dst) = w_col[2][4]; off_dst++;																								\
			first = false;																																\
		}																																				\
	}																																					\
	else {																																				\
		if (Bpp == 4) {																																	\
			r = ((u32)w_col[0][4]) << imgsrc->format->Rshift;																							\
			g = ((u32)w_col[1][4]) << imgsrc->format->Gshift;																							\
			b = ((u32)w_col[2][4]) << imgsrc->format->Bshift;																							\
																																						\
			col = r|g|b|a; /*transformed pixel*/																										\
																																						\
			if (first) {	/*if first column write pixel to destination offset and */																	\
							/*to destination offset - 4 (minus Bpp)*/																					\
				*((u32*)off_dst) = *((u32*)off_dst-4) = col;																							\
				first = false;																															\
			}																																			\
			else {			/*otherwise write only to destination offset*/																				\
				*((u32*)off_dst) = col;																												\
			}																																			\
			off_dst += 4;	/*shift destination offset*/																								\
		}																																				\
	}																																					\
}

#define GToolsFilter_average( )																															\
{																																						\
	memset(wu_col, 0x00, 3*sizeof(u32));																												\
	for (p_src_off = off_src; p_src_off <= off_src + pitch2; p_src_off += pitch) {		/* foreach row in array 3x3 [start from left-upper corner]*/	\
		for (d_src_off = p_src_off; d_src_off <= p_src_off + Bpp2; d_src_off += Bpp) {																	\
			if (Bpp == 3) {																																\
				memcpy(color, d_src_off, Bpp);																											\
				wu_col[0] += color[0];																													\
				wu_col[1] += color[1];																													\
				wu_col[2] += color[2];																													\
			}																																			\
			else {																																		\
				if (Bpp == 4) {																															\
					col = *((u32*)d_src_off);		/*get pixel (4-byte) from source*/																	\
					if (w == 4) 					/*get alpha from central point of 3x3 array*/														\
						a = col & imgsrc->format->Amask;	/*get R, G, B channels [0-255]*/															\
					wu_col[0] += ((col & imgsrc->format->Rmask) >> (imgsrc->format->Rshift)); 	/*get red   channel*/									\
					wu_col[1] += ((col & imgsrc->format->Gmask) >> (imgsrc->format->Gshift)); 	/*get green channel*/									\
					wu_col[2] += ((col & imgsrc->format->Bmask) >> (imgsrc->format->Bshift)); 	/*get blue  channel*/									\
				}																																		\
			}																																			\
		}																																				\
	}																																					\
	wu_col[0] /= 9;																																		\
	wu_col[1] /= 9;																																		\
	wu_col[2] /= 9;																																		\
																																						\
	if (Bpp == 3) {		/*Write average pixel to destination*/																						\
		if (first) {																																	\
			*((u8*)off_dst) = *((u8*)off_dst-3) = (u8)wu_col[0]; off_dst++;																	\
			*((u8*)off_dst) = *((u8*)off_dst-3) = (u8)wu_col[1]; off_dst++;																	\
			*((u8*)off_dst) = *((u8*)off_dst-3) = (u8)wu_col[2]; off_dst++;																	\
			first = false;																																\
		}																																				\
		else {																																			\
			*((u8*)off_dst) = (u8)wu_col[0]; off_dst++;																							\
			*((u8*)off_dst) = (u8)wu_col[1]; off_dst++;																							\
			*((u8*)off_dst) = (u8)wu_col[2]; off_dst++;																							\
			first = false;																																\
		}																																				\
	}																																					\
	else {																																				\
		if (Bpp == 4) {																																	\
			wu_col[0] <<= imgsrc->format->Rshift;																										\
			wu_col[1] <<= imgsrc->format->Gshift;																										\
			wu_col[2] <<= imgsrc->format->Bshift;																										\
																																						\
			col = wu_col[0]|wu_col[1]|wu_col[2]|a; /*transformed pixel*/																				\
																																						\
			if (first) {	/*if first column write pixel to destination offset and */																	\
							/*to destination offset - 4 (minus Bpp)*/																					\
				*((u32*)off_dst) = *((u32*)off_dst-4) = col;																							\
				first = false;																															\
			}																																			\
			else {			/*otherwise write only to destination offset*/																				\
				*((u32*)off_dst) = col;																												\
			}																																			\
			off_dst += 4;	/*shift destination offset*/																								\
		}																																				\
	}																																					\
}

#define GToolsFilter_min( )																																\
{																																						\
	memset(min, 0xFF, 3);																																\
	for (p_src_off = off_src; p_src_off <= off_src + pitch2; p_src_off += pitch) {		/* foreach row in array 3x3 [start from left-upper corner]*/	\
		for (d_src_off = p_src_off; d_src_off <= p_src_off + Bpp2; d_src_off += Bpp) {																	\
			if (Bpp == 3) {																																\
				memcpy(color, d_src_off, Bpp);																											\
			}																																			\
			else {																																		\
				if (Bpp == 4) {																															\
					col = *((u32*)d_src_off);		/*get pixel (4-byte) from source*/																	\
					if (w == 4) 					/*get alpha from central point of 3x3 array*/														\
						a = col & imgsrc->format->Amask;	/*get R, G, B channels [0-255]*/															\
					color[0] = (u8)(((col & imgsrc->format->Rmask) >> (imgsrc->format->Rshift))); 	/*get red   channel*/							\
					color[1] = (u8)(((col & imgsrc->format->Gmask) >> (imgsrc->format->Gshift))); 	/*get green channel*/							\
					color[2] = (u8)(((col & imgsrc->format->Bmask) >> (imgsrc->format->Bshift))); 	/*get blue  channel*/							\
				}																																		\
			}																																			\
			if (color[0] < min[0]) min[0] = color[0];																									\
			if (color[1] < min[1]) min[1] = color[1];																									\
			if (color[2] < min[2]) min[2] = color[2];																									\
		}																																				\
	}																																					\
	if (Bpp == 3) {		/*Write minimum pixel to destination*/																							\
		if (first) {																																	\
			*((u8*)off_dst) = *((u8*)off_dst-3) = min[0]; off_dst++;																				\
			*((u8*)off_dst) = *((u8*)off_dst-3) = min[1]; off_dst++;																				\
			*((u8*)off_dst) = *((u8*)off_dst-3) = min[2]; off_dst++;																				\
			first = false;																																\
		}																																				\
		else {																																			\
			*((u8*)off_dst) = min[0]; off_dst++;																										\
			*((u8*)off_dst) = min[1]; off_dst++;																										\
			*((u8*)off_dst) = min[2]; off_dst++;																										\
			first = false;																																\
		}																																				\
	}																																					\
	else {																																				\
		if (Bpp == 4) {																																	\
			r = ((u32)min[0]) << imgsrc->format->Rshift;																								\
			g = ((u32)min[1]) << imgsrc->format->Gshift;																								\
			b = ((u32)min[2]) << imgsrc->format->Bshift;																								\
																																						\
			col = r|g|b|a; /*transformed pixel*/																										\
																																						\
			if (first) {	/*if first column write pixel to destination offset and */																	\
							/*to destination offset - 4 (minus Bpp)*/																					\
				*((u32*)off_dst) = *((u32*)off_dst-4) = col;																							\
				first = false;																															\
			}																																			\
			else {			/*otherwise write only to destination offset*/																				\
				*((u32*)off_dst) = col;																												\
			}																																			\
			off_dst += 4;	/*shift destination offset*/																								\
		}																																				\
	}																																					\
}

#define GToolsFilter_max_minus_min( )																													\
{																																						\
	memset(max, 0x00, 3);																																\
	memset(min, 0xFF, 3);																																\
	for (p_src_off = off_src; p_src_off <= off_src + pitch2; p_src_off += pitch) {		/* foreach row in array 3x3 [start from left-upper corner]*/	\
		for (d_src_off = p_src_off; d_src_off <= p_src_off + Bpp2; d_src_off += Bpp) {																	\
			if (Bpp == 3) {																																\
				memcpy(color, d_src_off, Bpp);																											\
			}																																			\
			else {																																		\
				if (Bpp == 4) {																															\
					col = *((u32*)d_src_off);		/*get pixel (4-byte) from source*/																	\
					if (w == 4) 					/*get alpha from central point of 3x3 array*/														\
						a = col & imgsrc->format->Amask;	/*get R, G, B channels [0-255]*/															\
					color[0] = (u8)(((col & imgsrc->format->Rmask) >> (imgsrc->format->Rshift))); 	/*get red   channel*/							\
					color[1] = (u8)(((col & imgsrc->format->Gmask) >> (imgsrc->format->Gshift))); 	/*get green channel*/							\
					color[2] = (u8)(((col & imgsrc->format->Bmask) >> (imgsrc->format->Bshift))); 	/*get blue  channel*/							\
				}																																		\
			}																																			\
			if (color[0] > max[0]) max[0] = color[0];																									\
			if (color[1] > max[1]) max[1] = color[1];																									\
			if (color[2] > max[2]) max[2] = color[2];																									\
			if (color[0] < min[0]) min[0] = color[0];																									\
			if (color[1] < min[1]) min[1] = color[1];																									\
			if (color[2] < min[2]) min[2] = color[2];																									\
		}																																				\
	}																																					\
	max[0] -= min[0];																																	\
	max[1] -= min[1];																																	\
	max[2] -= min[2];																																	\
	if (Bpp == 3) {		/*Write max-min pixel to destination*/																							\
		if (first) {																																	\
			*((u8*)off_dst) = *((u8*)off_dst-3) = max[0]; off_dst++;																				\
			*((u8*)off_dst) = *((u8*)off_dst-3) = max[1]; off_dst++;																				\
			*((u8*)off_dst) = *((u8*)off_dst-3) = max[2]; off_dst++;																				\
			first = false;																																\
		}																																				\
		else {																																			\
			*((u8*)off_dst) = max[0]; off_dst++;																										\
			*((u8*)off_dst) = max[1]; off_dst++;																										\
			*((u8*)off_dst) = max[2]; off_dst++;																										\
			first = false;																																\
		}																																				\
	}																																					\
	else {																																				\
		if (Bpp == 4) {																																	\
			r = ((u32)max[0]) << imgsrc->format->Rshift;																								\
			g = ((u32)max[1]) << imgsrc->format->Gshift;																								\
			b = ((u32)max[2]) << imgsrc->format->Bshift;																								\
																																						\
			col = r|g|b|a; /*transformed pixel*/																										\
																																						\
			if (first) {	/*if first column write pixel to destination offset and */																	\
							/*to destination offset - 4 (minus Bpp)*/																					\
				*((u32*)off_dst) = *((u32*)off_dst-4) = col;																							\
				first = false;																															\
			}																																			\
			else {			/*otherwise write only to destination offset*/																				\
				*((u32*)off_dst) = col;																												\
			}																																			\
			off_dst += 4;	/*shift destination offset*/																								\
		}																																				\
	}																																					\
}

#define GToolsFilter_max( )																																\
{																																						\
	memset(max, 0x00, 3);																																\
	for (p_src_off = off_src; p_src_off <= off_src + pitch2; p_src_off += pitch) {		/* foreach row in array 3x3 [start from left-upper corner]*/	\
		for (d_src_off = p_src_off; d_src_off <= p_src_off + Bpp2; d_src_off += Bpp) {																	\
			if (Bpp == 3) {																																\
				memcpy(color, d_src_off, Bpp);																											\
			}																																			\
			else {																																		\
				if (Bpp == 4) {																															\
					col = *((u32*)d_src_off);		/*get pixel (4-byte) from source*/																	\
					if (w == 4) 					/*get alpha from central point of 3x3 array*/														\
						a = col & imgsrc->format->Amask;	/*get R, G, B channels [0-255]*/															\
					color[0] = (u8)(((col & imgsrc->format->Rmask) >> (imgsrc->format->Rshift))); 	/*get red   channel*/							\
					color[1] = (u8)(((col & imgsrc->format->Gmask) >> (imgsrc->format->Gshift))); 	/*get green channel*/							\
					color[2] = (u8)(((col & imgsrc->format->Bmask) >> (imgsrc->format->Bshift))); 	/*get blue  channel*/							\
				}																																		\
			}																																			\
			if (color[0] > max[0]) max[0] = color[0];																									\
			if (color[1] > max[1]) max[1] = color[1];																									\
			if (color[2] > max[2]) max[2] = color[2];																									\
		}																																				\
	}																																					\
	if (Bpp == 3) {		/*Write maximum pixel to destination*/																							\
		if (first) {																																	\
			*((u8*)off_dst) = *((u8*)off_dst-3) = max[0]; off_dst++;																				\
			*((u8*)off_dst) = *((u8*)off_dst-3) = max[1]; off_dst++;																				\
			*((u8*)off_dst) = *((u8*)off_dst-3) = max[2]; off_dst++;																				\
			first = false;																																\
		}																																				\
		else {																																			\
			*((u8*)off_dst) = max[0]; off_dst++;																										\
			*((u8*)off_dst) = max[1]; off_dst++;																										\
			*((u8*)off_dst) = max[2]; off_dst++;																										\
			first = false;																																\
		}																																				\
	}																																					\
	else {																																				\
		if (Bpp == 4) {																																	\
			r = ((u32)max[0]) << imgsrc->format->Rshift;																								\
			g = ((u32)max[1]) << imgsrc->format->Gshift;																								\
			b = ((u32)max[2]) << imgsrc->format->Bshift;																								\
																																						\
			col = r|g|b|a; /*transformed pixel*/																										\
																																						\
			if (first) {	/*if first column write pixel to destination offset and */																	\
							/*to destination offset - 4 (minus Bpp)*/																					\
				*((u32*)off_dst) = *((u32*)off_dst-4) = col;																							\
				first = false;																															\
			}																																			\
			else {			/*otherwise write only to destination offset*/																				\
				*((u32*)off_dst) = col;																												\
			}																																			\
			off_dst += 4;	/*shift destination offset*/																								\
		}																																				\
	}																																					\
}

u8 GToolsFilter_apply(const SDL_Surface *imgsrc, SDL_Surface *imgdst, const generictype type) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsFilter_apply() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	u8 Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsFilter_apply() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	if ((imgsrc->w < 3) || (imgsrc->h < 3)) {
		fprintf(stderr, "GToolsFilter_apply() > Input image to small [w=%hu, h=%hu] (below 3x3 pixels)\n",
			imgsrc->w, imgsrc->h);
		return 1;
	}
	
	u32  		pitch 			= imgsrc->pitch;
	const u8 	*off_src 		= imgsrc->pixels;
	u8 			*off_dst 		= (u8*)imgdst->pixels + pitch + Bpp;	// [1][1] pixel in destination
	const u8 	*end_srcy_off 	= off_src + (imgsrc->h - 3) * pitch;
	u8 			Bpp2 			= Bpp << 1;
	u32  		pitch2 			= pitch << 1;
	u32  		wb 				= Bpp * imgsrc->w - Bpp2;
	u8 			sp 				= Bpp * ( (pitch/Bpp > (imgsrc->w)) ? (pitch/Bpp-(imgsrc->w)) : 0 );
	
	const u8 	*end_srcx_off; 
	const u8 	*d_src_off, *p_src_off;
	b8  first;
	u8 	w = 0, color[3];
	u8 	w_col[3][9];
	u8 	min[3], max[3];
	u8 	i, j, t;
	u32 col, a = 0, r, g, b, wu_col[3];
	
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	while (off_src <= end_srcy_off) {		// foreach row
		end_srcx_off = off_src + wb;
		first = true;
		
		while (off_src < end_srcx_off) {	// foreach column
			switch (type) {
				case FILTER_MEDIAN:  		GToolsFilter_median(); break;
				case FILTER_AVERAGE: 		GToolsFilter_average(); break;
				case FILTER_MIN: 	 		GToolsFilter_min(); break;
				case FILTER_MAX: 	 		GToolsFilter_max(); break;
				case FILTER_MAX_MINUS_MIN: 	GToolsFilter_max_minus_min(); break;
			}
			
			off_src += Bpp;
		}
		
		// kopiuj ostatni bajt, trójbajt do ostatniej kolumny
		memcpy(off_dst, off_dst-Bpp, Bpp);
		
		off_src += Bpp2;	// skip two pixels: last and first in src
		off_dst += sp;		// skip line separating bytes in dst
		off_dst += Bpp2;	// skip two pixels: last and first in dst
		off_src += sp;		// skip line separating bytes in src
		//fprintf(stderr, "------------\n");
	}
	
	off_dst = (imgdst->h - 1)*pitch + imgdst->pixels;
	memcpy(imgdst->pixels, imgdst->pixels+pitch, pitch);
	memcpy(off_dst, off_dst-pitch, pitch);
	
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	return NO_ERROR;
}

const char* GToolsFilter_getName(const generictype type) {
	switch (type) {
		case FILTER_MEDIAN: 		return "FILTER_MEDIAN";
		case FILTER_AVERAGE: 		return "FILTER_AVERAGE";
		case FILTER_MIN: 			return "FILTER_MIN";
		case FILTER_MAX: 			return "FILTER_MAX";
		case FILTER_MAX_MINUS_MIN: 	return "FILTER_MAX_MINUS_MIN";
		default: 					return "UNKNOWN";
	}
}
