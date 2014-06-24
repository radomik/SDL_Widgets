/* 
 *		Implementation of convolution filter (filtracja splotowa) 
 * 		Methods works for 24 bit and 32 bit images represented by one-dimensional array of bytes
 * 
 *      GToolsSplotFilter.c - this file is part of SDL_Widgets
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
#include "GToolsSplotFilter.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = coObject_coIObject_vdestroy,
	.toString = coObject_coIObject_vtoString
};

static const void *vtable[] = {
	&override_coIObject
};

static coClass type = {
	.size	= sizeof(GToolsSplotFilter),
	.name	= "GToolsSplotFilter",
	.vtable	= vtable
};
const coClass *GToolsSplotFilter_class = &type;

/** PREDEFINIED FILTERS SECTION **/

// from right to left and from bottom to top
/* Note weight array is indexed in this way:
	 * +---+---+---+
	 * | 8 | 7 | 6 |
	 * +---+---+---+
	 * | 5 | 4 | 3 |
	 * +---+---+---+
	 * | 2 | 1 | 0 |
	 * +---+---+---+
	 */
	 
typedef struct {
	const char		*name;
	const float		weight[9];
	const float		divider;
} splot_filter;

static const splot_filter predef_filter[] = {
		/* Name */							/* Weights (indexes as above) */						/* Divider */
{ "rozmycie",					{  1.f,   1.f,   1.f,   1.f,   1.f,   1.f,   1.f,   1.f,   1.f },		 9.f },
{ "rozmycie gaussowskie",		{  1.f,   2.f,   1.f,   2.f,   4.f,   2.f,   1.f,   2.f,   1.f },		16.f },
{ "filtr dolnoprzepustowy",		{  1.f,   1.f,   1.f,   1.f,   4.f,   1.f,   1.f,   1.f,   1.f },		12.f },
{ "górnoprzepustowy 1",			{  0.f,  -1.f,  -1.f,  -1.f,   5.f,  -1.f,   0.f,  -1.f,   0.f },		 1.f },
{ "górnoprzepustowy 2",			{ -1.f,  -1.f,  -1.f,  -1.f,   9.f,  -1.f,  -1.f,  -1.f,  -1.f },		 1.f },
{ "górnoprzepustowy 3",			{  1.f,  -2.f,   1.f,  -2.f,   5.f,  -2.f,   1.f,  -2.f,   1.f },		 1.f },
{ "Maska Prewitt'a 1",			{  1.f,   1.f,   1.f,   0.f,   0.f,   0.f,  -1.f,  -1.f,  -1.f },		 1.f },
{ "Maska Prewitt'a 2",			{  1.f,   0.f,  -1.f,   1.f,   0.f,  -1.f,   1.f,   0.f,  -1.f },		 1.f },
{ "Maska Sobele'a 1",			{  1.f,   2.f,   1.f,   0.f,   0.f,   0.f,  -1.f,  -2.f,  -1.f },		 1.f },
{ "Maska Sobele'a 2",			{  1.f,   0.f,  -1.f,   2.f,   0.f,  -2.f,   1.f,   0.f,  -1.f },		 1.f },
{ "Operator Laplace'a 1",		{  0.f,   1.f,   0.f,   1.f,  -4.f,   1.f,   0.f,   1.f,   0.f },		 1.f },
{ "Operator Laplace'a 2",		{  1.f,   1.f,   1.f,   1.f,  -8.f,   1.f,   1.f,   1.f,   1.f },		 1.f },
{ "R.Gauss + op. Laplace'a",	{  2.f,  -1.f,   2.f,  -1.f,  -4.f,  -1.f,   2.f,  -1.f,   2.f },		 3.f },
{ "Maska Kuby",					{ -2.f,  -1.f,  -2.f,  -1.f,  12.f,  -1.f,  -2.f,  -1.f,  -2.f },		 1.f },
{ "Maska Sylwka",				{ -1.f,  -2.f,  -1.f,  -2.f,  12.f,  -1.f,  -1.f,  -2.f,  -1.f },		 1.f }
};

static const size_t GTSF_COUNT_FILTERS = sizeof(predef_filter) / sizeof(splot_filter);

/** END SECTION PREDEFINIED FILTERS **/

GToolsSplotFilter* GToolsSplotFilter_new(GToolsSplotFilter *this) {
	if (! this) {
		Static_nullThis();
		return NULL;
	}
	coObject_new(CO_OBJECT(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	memcpy(this->weight, predef_filter[0].weight, 9 * sizeof(float));
	this->predef_filter_ind 			= USINF; 
	this->divider 						= predef_filter[0].divider;
	this->has_widget_changing_divider 	= false;
	this->divider_usage 				= FILTER_SPEC_DIVIDER;
	return this;
}

inline void  GToolsSplotFilter_resetFilter(GToolsSplotFilter *gtsf) { 
	gtsf->predef_filter_ind = USINF; 
}

inline u16 GToolsSplotFilter_getFilterInd(const GToolsSplotFilter *gtsf) { 
	return gtsf->predef_filter_ind;
}

inline const char* GToolsSplotFilter_getFilterName(const GToolsSplotFilter *gtsf) { 
	return (gtsf->predef_filter_ind==USINF) ? "" : predef_filter[gtsf->predef_filter_ind].name; 
}

inline b8 GToolsSplotFilter_increaseFilterInd(GToolsSplotFilter *gtsf) { 
	if (gtsf->predef_filter_ind==USINF) gtsf->predef_filter_ind = 0; 
	else {
		if (gtsf->predef_filter_ind < GTSF_COUNT_FILTERS-1) 
			gtsf->predef_filter_ind++; 
		else 
			return false;
	} 
	memcpy(gtsf->weight, predef_filter[gtsf->predef_filter_ind].weight, 9 * sizeof(float)); 
	gtsf->divider = predef_filter[gtsf->predef_filter_ind].divider;
	return true;
}

inline b8 GToolsSplotFilter_decreaseFilterInd(GToolsSplotFilter *gtsf) { 
	if (gtsf->predef_filter_ind==USINF) gtsf->predef_filter_ind = GTSF_COUNT_FILTERS-1; 
	else {
		if (gtsf->predef_filter_ind > 0) 
			gtsf->predef_filter_ind--; 
		else 
			return false;
	} 
	memcpy(gtsf->weight, predef_filter[gtsf->predef_filter_ind].weight, 9 * sizeof(float));
	gtsf->divider = predef_filter[gtsf->predef_filter_ind].divider;
	return true;
}

inline b8 GToolsSplotFilter_increaseWeightAt(GToolsSplotFilter *gtsf, u8 w) {
	if (w < 9) { 
		if (gtsf->weight[w] == 100.0f) return false; 
		if (gtsf->predef_filter_ind != USINF)
			gtsf->predef_filter_ind = USINF;
		gtsf->weight[w] += 0.1f; 
		return true; 
	} 
	else 
		return false; 
}

inline b8 GToolsSplotFilter_decreaseWeightAt(GToolsSplotFilter *gtsf, u8 w) {
	if (w < 9) { 
		if (gtsf->weight[w] == -100.0f) return false; 
		if (gtsf->predef_filter_ind != USINF)
			gtsf->predef_filter_ind = USINF;
		gtsf->weight[w] -= 0.1f; 
		return true; 
	} 
	else 
		return false; 
}

inline b8 GToolsSplotFilter_increaseDivider(GToolsSplotFilter *gtsf) {
	if (gtsf->divider == 100.0f) return false; 
	if (gtsf->predef_filter_ind != USINF)
		gtsf->predef_filter_ind = USINF;
	gtsf->divider += 0.1f; 
	if (fabs(gtsf->divider) < 0.001) gtsf->divider += 0.1f; // changed from -0.1 to 0.0 -> 0.1
	return true;
}

inline b8 GToolsSplotFilter_decreaseDivider(GToolsSplotFilter *gtsf) {
	if (gtsf->divider == -100.0f) return false; 
	if (gtsf->predef_filter_ind != USINF)
		gtsf->predef_filter_ind = USINF;
	gtsf->divider -= 0.1f; 
	if (fabs(gtsf->divider) < 0.001) gtsf->divider -= 0.1f; // changed from 0.1 to 0.0 -> -0.1
	return true;
}

inline float GToolsSplotFilter_getWeightAt(const GToolsSplotFilter *gtsf, u8 w) { 
	return (w < 9) ? gtsf->weight[w] : 0.0f;
}

const char *GToolsSplotFilter_getDividerUsageDesc(const GToolsSplotFilter *gtsf) {
	switch (gtsf->divider_usage) {
		case FILTER_SPEC_DIVIDER:			return "Dzielnik określony przez filtr";
		case CUSTOM_DIVIDER:				return "Dzielnik użytkownika";
		case SUM_OF_WEIGHTS_DIVIDER:		return "Dzielnik będący sumą wag filtru";
		default: return "";
	}
}

u8 GToolsSplotFilter_applyFilter(const GToolsSplotFilter *gtsf, const SDL_Surface *imgsrc, SDL_Surface *imgdst) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsSplotFilter_applyFilter() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	u8 Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsSplotFilter_applyFilter() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	if ((imgsrc->w < 3) || (imgsrc->h < 3)) {
		fprintf(stderr, "GToolsSplotFilter_applyFilter() > Input image [w=%hu, h=%hu] to small (below 3x3 pixels)\n", imgsrc->w, imgsrc->h);
		return 1;
	}
	
	u32  		pitch 			= imgsrc->pitch;
	const u8 	*off_src 		= imgsrc->pixels;
	u8 			*off_dst 		= imgdst->pixels + pitch + Bpp;	// [1][1] pixel in destination
	const u8 	*end_srcy_off 	= off_src + (imgsrc->h - 3) * pitch;
	u8 			Bpp2 			= Bpp << 1;
	u32  		pitch2 			= pitch << 1;
	u32  		wb 				= Bpp * imgsrc->w - Bpp2;
	float 		sum_w 			= 1.0f;
	u8 			sp 				= Bpp * ( (pitch/Bpp > (imgsrc->w)) ? (pitch/Bpp-(imgsrc->w)) : 0 );
	const float *weight 		= gtsf->weight;
	
	const u8 *end_srcx_off, *d_src_off, *p_src_off;
	b8   first, use_sum_weights = false;
	u8 	 w, color[3];
	int  SUM_col[4], t_col[4];
	u32  col, a = 0, r, g, b;
	
	if (! gtsf->has_widget_changing_divider) {
		switch (gtsf->divider_usage) {
			case CUSTOM_DIVIDER:						// (2) approach
				fprintf(stderr, "GToolsSplotFilter_applyFilter: Ignoring .divider_usage==CUSTOM_DIVIDER settings while .has_widget_changing_divider==false\n");
			case FILTER_SPEC_DIVIDER:					// (1) approach (see *.h file table)
				if (gtsf->predef_filter_ind == USINF)	//	Custom weights
					use_sum_weights = true;
				else 									//	predefinied filter
					sum_w = predef_filter[gtsf->predef_filter_ind].divider;
				break;
			case SUM_OF_WEIGHTS_DIVIDER:				// (3) approach
				use_sum_weights = true;
				break;
		}
	}
	else {
		switch (gtsf->divider_usage) {
			case CUSTOM_DIVIDER:						// (5) approach
				sum_w = gtsf->divider;
				break;
			case FILTER_SPEC_DIVIDER:					// (4) approach (see *.h file table)
				if (gtsf->predef_filter_ind == USINF)	//	Custom weights
					use_sum_weights = true;
				else 									//	predefinied filter
					sum_w = predef_filter[gtsf->predef_filter_ind].divider;
				break;
			case SUM_OF_WEIGHTS_DIVIDER:				// (6) approach
				use_sum_weights = true;
				break;
		}
	}
	
	if (use_sum_weights) // calculate sum of weights
		for (w = 0; w < 9; w++) sum_w += weight[w];
		
	if (fabs(sum_w) < 0.001) // if sum of weights is approx. 0
		sum_w = 1.0f;
	
	fprintf(stderr, "GToolsSplotFilter_applyFilter: [%s] Dividier: %f\n", GToolsSplotFilter_getDividerUsageDesc(gtsf), sum_w);
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	while (off_src <= end_srcy_off) {		// foreach row
		end_srcx_off = off_src + wb;
		first = true;
		
		while (off_src < end_srcx_off) {	// foreach column
			//fprintf(stderr, "(off_src,off_dst)=(%Lu,%Lu)\n", (u64)(off_src-img_src), (u64)(off_dst-img_dst));
			
			w = 0;	// index mnożnika z tabeli wag
			memset(SUM_col, 0, Bpp * sizeof(int));
			for (p_src_off = off_src; p_src_off <= off_src + pitch2; p_src_off += pitch) {		// foreach row in array 3x3 [start from left-upper corner]
				for (d_src_off = p_src_off; d_src_off <= p_src_off + Bpp2; d_src_off += Bpp) {	// foreach col in array 3x3
					if (Bpp == 3) {
						memcpy(color, d_src_off, Bpp);
						t_col[0] = color[0] * weight[w];
						t_col[1] = color[1] * weight[w];
						t_col[2] = color[2] * weight[w];
						SUM_col[0] += t_col[0];
						SUM_col[1] += t_col[1];
						SUM_col[2] += t_col[2];
						//fprintf(stderr, "%d * %3.2f %s", color[0], weight[w], (w==8) ? "= " : "+ ");
						
					}
					else {
						if (Bpp == 4) {
							col = *((u32*)d_src_off);		// get pixel (4-byte) from source
							if (w == 4) 					// get alpha from central point of 3x3 array
								a = col & imgsrc->format->Amask;	// get R, G, B channels [0-255]
																	// and multiply them by weight[w]
							t_col[0] = ((col & imgsrc->format->Rmask) >> (imgsrc->format->Rshift)) * weight[w]; 	// get red   channel
							t_col[1] = ((col & imgsrc->format->Gmask) >> (imgsrc->format->Gshift)) * weight[w]; 	// get green channel
							t_col[2] = ((col & imgsrc->format->Bmask) >> (imgsrc->format->Bshift)) * weight[w]; 	// get blue  channel
							SUM_col[0] += t_col[0];	// add results to SUM of channels per array 3x3
							SUM_col[1] += t_col[1];
							SUM_col[2] += t_col[2];
						}
						else {
							if (Bpp == 1) {
								//memcpy(color, d_src_off, Bpp);
								color[0] = *((u8*)d_src_off);
								t_col[0] = color[0] * weight[w];
								SUM_col[0] += t_col[0];
							}
						}
					}
					w++;
				}
			}
			
			if (Bpp == 3) {
				SUM_col[0] /= sum_w;
				SUM_col[1] /= sum_w;
				SUM_col[2] /= sum_w;
				if (first) {
					*((u8*)off_dst) = *((u8*)off_dst-3) = (SUM_col[0] > 255) ? 255 : (SUM_col[0]<0 ? 0 : (u8)SUM_col[0]); off_dst++;
					*((u8*)off_dst) = *((u8*)off_dst-3) = (SUM_col[0] > 255) ? 255 : (SUM_col[0]<0 ? 0 : (u8)SUM_col[0]); off_dst++;
					*((u8*)off_dst) = *((u8*)off_dst-3) = (SUM_col[0] > 255) ? 255 : (SUM_col[0]<0 ? 0 : (u8)SUM_col[0]); off_dst++;
					first = false;
				}
				else {
					*((u8*)off_dst) = (SUM_col[0] > 255) ? 255 : (SUM_col[0]<0 ? 0 : (u8)SUM_col[0]); off_dst++;
					*((u8*)off_dst) = (SUM_col[0] > 255) ? 255 : (SUM_col[0]<0 ? 0 : (u8)SUM_col[0]); off_dst++;
					*((u8*)off_dst) = (SUM_col[0] > 255) ? 255 : (SUM_col[0]<0 ? 0 : (u8)SUM_col[0]); off_dst++;
					first = false;
				}
			}
			else {
				if (Bpp == 4) {
					SUM_col[0] /= sum_w;	// normalize
					SUM_col[1] /= sum_w;
					SUM_col[2] /= sum_w;
					
					// for each channel check if sum exceeds byte bounds, truncate it if needed
					// and shift to exact position of each channel in unsigned int number
					r = (SUM_col[0] > 255) ? (0xFF << imgsrc->format->Rshift) : ((SUM_col[0] < 0)?(0):(((u32)SUM_col[0])<<(imgsrc->format->Rshift)));
					g = (SUM_col[1] > 255) ? (0xFF << imgsrc->format->Gshift) : ((SUM_col[1] < 0)?(0):(((u32)SUM_col[1])<<(imgsrc->format->Gshift)));
					b = (SUM_col[2] > 255) ? (0xFF << imgsrc->format->Bshift) : ((SUM_col[2] < 0)?(0):(((u32)SUM_col[2])<<(imgsrc->format->Bshift)));
					
					// transformed pixel:
					col = r|g|b|a;
					
					if (first) {	// if first column write pixel to destination offset and 
									// to destination offset - 4 (minus Bpp)
						*((u32*)off_dst) = *((u32*)off_dst-4) = col;
						first = false;
					}
					else {			// otherwise write only to destination offset
						*((u32*)off_dst) = col;
					}
					off_dst += 4;	// shift destination offset
				}
				else {
					if (Bpp == 1) {
						//fprintf(stderr, "%3u", SUM_col[0]);
						SUM_col[0] /= sum_w;
						if (first) {
							*((u8*)off_dst) = *((u8*)off_dst-1) = (SUM_col[0] > 255) ? 255 : (SUM_col[0]<0 ? 0 : (u8)SUM_col[0]);
							first = false;
						}
						else {
							*((u8*)off_dst) = (SUM_col[0] > 255) ? 255 : (SUM_col[0]<0 ? 0 : (u8)SUM_col[0]);
						}
						//fprintf(stderr, "; NORM=%d\n", *((u8*)off_dst));
						off_dst++;
					}
				}
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
