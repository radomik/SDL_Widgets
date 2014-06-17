/*      Graphics point operations (static class):
 * 				brightness and contrast
 * 				desaturize, 
 * 				binary thresholding (Otsu method and tom3k.info modified version)
 * 				negative
 * 				create histograms
 * 				histograms equalization
 * 		All of them works for 24 bit and 32 bit images represented by one-dimensional array of bytes
 *
 *      GToolsPoint.c - this file is part of SDL_Widgets
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
#include "GToolsPoint.h"

uchar GToolsPoint_apply_brightness_contrast(SDL_Surface *imgsrc, SDL_Surface *imgdst, float img_mul, short img_off, bool allow_overflow) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsPoint_apply_brightness_contrast() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	uchar Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsPoint_apply_brightness_contrast() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	//~ 
	uint  pitches = 0, pitch = imgsrc->pitch;
	uint  wb = imgsrc->w * Bpp; 				// count of bytes of image per line	
	uchar *pixels_src     = (uchar*) imgsrc->pixels;
	uchar *pixels_dst     = (uchar*) imgdst->pixels;
	uchar *pixels_dst_end = (uchar*) imgdst->pixels + pitch * imgdst->h;
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	//~ 
	if (Bpp == 3) { // assume RGB
		int value;
		while (pixels_dst < pixels_dst_end) {
			if (pitches == wb) {	// end of image line
				while(pitches < pitch) { pitches++; pixels_src++; pixels_dst++; }	// skip line separating bytes
				pitches = 0;	// index of first byte in new line
			}
			value = img_mul * (*(pixels_src)) + img_off;	// per one channel, doesn't matter which, but the same for source and destination
			if (allow_overflow)	// don't care
				*(pixels_dst) = (uchar)value;
			else { // cut on 0xFF if above 0xFF or cut to 0x00 if below 0x00
				if (value > 0xFF) *(pixels_dst) = 0xFF;
				else {
					if (value < 0x00) *(pixels_dst) = 0x00;
					else *(pixels_dst) = (uchar)value;
				}
			}
			pixels_src++;
			pixels_dst++;
			pitches++;
		}
	}
	else {
		if (Bpp == 4) { // assume ARGB
			uint col, a, r, g, b;
			int rr, gg, bb;
			while (pixels_dst < pixels_dst_end) {
				if (pitches == wb) {	// end of image line
					while(pitches < pitch) { pitches++; pixels_src++; pixels_dst++; }	// skip line separating bytes
					pitches = 0;	// index of first byte in new line
				}
				col = *((uint*)pixels_src);
				a = col  & imgsrc->format->Amask;
				r = (col & imgsrc->format->Rmask)>>(imgsrc->format->Rshift);
				g = (col & imgsrc->format->Gmask)>>(imgsrc->format->Gshift);
				b = (col & imgsrc->format->Bmask)>>(imgsrc->format->Bshift);
				
				rr = img_mul * ((int)r) + img_off;
				gg = img_mul * ((int)g) + img_off;
				bb = img_mul * ((int)b) + img_off;
				
				if (allow_overflow) {
					r = ((uint)rr) & 0x000000FF;
					g = ((uint)gg) & 0x000000FF;
					b = ((uint)bb) & 0x000000FF;
				}
				else {
					r = ((rr<0x00)?0x00:((rr>0xFF)?0xFF:((uint)rr)));
					g = ((gg<0x00)?0x00:((gg>0xFF)?0xFF:((uint)gg)));
					b = ((bb<0x00)?0x00:((bb>0xFF)?0xFF:((uint)bb)));
				}
				r <<= imgsrc->format->Rshift;
				g <<= imgsrc->format->Gshift;
				b <<= imgsrc->format->Bshift;
				
				col = a|r|g|b;
				
				*((uint*)pixels_dst) = col;
				pixels_src += Bpp;
				pixels_dst += Bpp;
				pitches    += Bpp;
				
				/*
				for (g = 0; g < 3; g++) {	// B, G, R
					value = img_mul*(*(pixels_src)) + img_off;
					if (img_overflow)	// don't care
						*(pixels_dst) = (uchar)value;
					else { // cut on 0xFF
						if (value > 0xFF) *(pixels_dst) = 0xFF;
						else *(pixels_dst) = (uchar)value;
					}
						
					pixels_src++;
					pixels_dst++;
					pitches++;
				}
				// copy A
				*(pixels_dst) = *(pixels_src);
				
				
				pixels_src++;	
				pixels_dst++;
				pitches++;
				*/
			}
		}
	}
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	return NO_ERROR;
}

uchar GToolsPoint_desaturize_std(SDL_Surface *imgsrc, SDL_Surface *imgdst) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsPoint_desaturize_std() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	uchar Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsPoint_desaturize_std() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	uint  pitches = 0, pitch = imgsrc->pitch;
	uint  wb = imgsrc->w * Bpp; 				// count of bytes of image per line	
	uint  col, r, g, b, a;
	uchar *pixels_src     = (uchar*) imgsrc->pixels;
	uchar *pixels_dst     = (uchar*) imgdst->pixels;
	uchar *pixels_dst_end = (uchar*) imgdst->pixels + pitch * imgdst->h;
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	
	if (Bpp == 3) {
		while (pixels_dst < pixels_dst_end) {
			if (pitches == wb) {	// end of image line
				while(pitches < pitch) { pitches++; pixels_src++; pixels_dst++; }	// skip line separating bytes
				pitches = 0;	// index of first byte in new line
			}
			//(Red * 0.3 + Green * 0.59 + Blue * 0.11)
			col = *((uint*)pixels_src);
			
			r =  (col & imgsrc->format->Rmask);
			g =  (col & imgsrc->format->Gmask);
			b =  (col & imgsrc->format->Bmask);
			
			r >>= imgsrc->format->Rshift;
			g >>= imgsrc->format->Gshift;
			b >>= imgsrc->format->Bshift;
			
			r *= 0.30;
			g *= 0.59;
			b *= 0.11;
			
			r  += g;
			r  += b;
			
			memset(pixels_dst, r, Bpp);		// 3 * sizeof(uchar) == 3
			
			pitches 	+= Bpp;
			pixels_src 	+= Bpp;
			pixels_dst 	+= Bpp;
		}
	}
	else {
		if (Bpp == 4) {
			while (pixels_dst < pixels_dst_end) {
				if (pitches == wb) {	// end of image line
					while(pitches < pitch) { pitches++; pixels_src++; pixels_dst++; }	// skip line separating bytes
					pitches = 0;	// index of first byte in new line
				}
				//(Red * 0.3 + Green * 0.59 + Blue * 0.11)
				col = *((uint*)pixels_src);
				
				r =  (col & imgsrc->format->Rmask);
				g =  (col & imgsrc->format->Gmask);
				b =  (col & imgsrc->format->Bmask);
				a =  (col & imgsrc->format->Amask);
				
				r >>= imgsrc->format->Rshift;
				g >>= imgsrc->format->Gshift;
				b >>= imgsrc->format->Bshift;
				
				r *= 0.30;
				g *= 0.59;
				b *= 0.11;
				
				r  += g;
				r  += b;
				g  = b = r;
				
				r <<= imgsrc->format->Rshift;
				g <<= imgsrc->format->Gshift;
				b <<= imgsrc->format->Bshift;
				
				col = r|g|b|a;
				
				*((uint*)pixels_dst) = col;
			
				pitches 	+= Bpp;
				pixels_src 	+= Bpp;
				pixels_dst 	+= Bpp;
			}
		}
	}
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	return NO_ERROR;
}

uchar GToolsPoint_create_histograms(SDL_Surface *image, uint **colors) {
	if (Check_surface(image)) { 
		fprintf(stderr, "GToolsPoint_create_histograms() > Failed on assertion Check_surface(image)\n");
		return ERROR_CHECK_SURF;
	}
	uchar Bpp = image->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsPoint_create_histograms() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	uint  pitches = 0, pitch = image->pitch;
	uint  wb = image->w * Bpp;
	uint  col, r, g, b;
	uchar *pixels_src     = (uchar*) image->pixels;
	uchar *pixels_src_end = pixels_src + image->h * pitch;
	
	memset(colors[0], 0, 256*sizeof(uint));
	memset(colors[1], 0, 256*sizeof(uint));
	memset(colors[2], 0, 256*sizeof(uint));
	
	/* Same loop for Bpp == 3 and Bpp == 4 */
	while (pixels_src < pixels_src_end) {
		if (pitches == wb) {	// end of image line
			while(pitches < pitch) { pitches++; pixels_src++;}	// skip line separating bytes
			pitches = 0;	// index of first byte in new line
		}
		col = *((uint*)pixels_src);
		r  = ((col & image->format->Rmask) >> image->format->Rshift);
		g  = ((col & image->format->Gmask) >> image->format->Gshift);
		b  = ((col & image->format->Bmask) >> image->format->Bshift);
		
		colors[0][(uchar)r]++;
		colors[1][(uchar)g]++;
		colors[2][(uchar)b]++;
		
		pixels_src 	+= Bpp;
		pitches 	+= Bpp;
	}
	
	return NO_ERROR;
}

uchar GToolsPoint_calculate_binary_threshold(uint *histogram, ullong *threshold, bool t_algo) {
	ullong tmp_t=0, tmp_t_2=0, t=0, t_cz, t_b, tmp_t_cz, tmp_t_b, tt;
	uint k, m;
	// Algorytm 2 (działa!!!) +zmiany w obliczaniu histogramu +uwzględnienie pitches//
	if (t_algo) {
		//fprintf(stderr, "Calculating threshold using alghoritm from graphics classes (Otsu alghoritm)\n");
		for (m = 0; m < 256; m++) {
			//fprintf(stderr, "m=%u\n", m);
			t_cz = tmp_t_cz = 0;
			for (k = 0; k <= m; k++) {
				t_cz 	 += k * histogram[k];
				tmp_t_cz += histogram[k];
			}
			
			if (tmp_t_cz != 0) t_cz /= tmp_t_cz;
			//fprintf(stderr, "\tt_cz = %u\n", t_cz);
			t_b = tmp_t_b = 0;
			
			for (k = m+1; k < 256; k++) {
				t_b 	+= k * histogram[k];
				tmp_t_b += histogram[k];
			}
			if (tmp_t_b != 0) t_b /= tmp_t_b;
			//fprintf(stderr, "\tt_b = %u\n", t_b);
			
			tt = (t_cz - t_b)*(t_cz - t_b);
			
			tmp_t = tmp_t_cz * tmp_t_b * tt;
			//fprintf(stderr, "\ttmp_t = %Lu\n", tmp_t);
			if (tmp_t > tmp_t_2) {
				//fprintf(stderr, "\t%Lu >\n\t%Lu\n", tmp_t, tmp_t_2);
				tmp_t_2 = tmp_t;
				t = m;
			}
			//else
				//fprintf(stderr, "\t%Lu <=\n\t%Lu\n", tmp_t, tmp_t_2);
		} 
	}
	else {
		//fprintf(stderr, "Calculating threshold using Otsu alghoritm modified by Tomasz Kaczmarzyk (tom3k.info)\n");
		t = 100;
		do {
			tmp_t = t;
			tmp_t_cz = t_cz  = 0;
			for (k = 0; k <= t; k++) {	// colour value range in [0,t] map to black color
				t_cz 	 += histogram[k] * k;
				tmp_t_cz += histogram[k];
				//fprintf(stderr, "for@1\tk=%u, t=%u, kolory[k]=%u, t_cz=%u, tmp_t_cz=%u\n", k, t, kolory[k], t_cz, tmp_t_cz);
			}
			if (tmp_t_cz != 0) {
				t_cz /= tmp_t_cz;
				//fprintf(stderr, "tmp_t_cz != 0 --> t_cz /= tmp_t_cz = %u\n", t_cz);
			}
			else {
				//fprintf(stderr, "tmp_t_cz == 0 <-->\n");
			}
			
			t_b = tmp_t_b = 0;
			for (k = t+1; k < 256; k++) {	// colour value range in [t+1,255] map to white color
				t_b 	+= histogram[k] * k;
				tmp_t_b += histogram[k];
				//fprintf(stderr, "for@2\tk=%u, t=%u, kolory[k]=%u, t_b=%u, tmp_t_b=%u\n", k, t, kolory[k], t_b, tmp_t_b);
			}
			if (tmp_t_b != 0) {
				t_b /= tmp_t_b;
				//fprintf(stderr, "tmp_t_b != 0 --> t_b /= tmp_t_b = %u\n", t_b);
			}
			else {
				//fprintf(stderr, "tmp_t_b == 0 <-->\n");
			}
			t = ((t_cz+t_b)>>1);
		}
		while (tmp_t != t);
	}
	
	if (t > 255) {
		fprintf(stderr, "GToolsPoint_calculate_binary_threshold() Error. Calculated binarization threshold is above 255: %Lu\n", *threshold);
		return 1;
	}
	else {
		*threshold = t;
		return NO_ERROR;
	}
}

uchar GToolsPoint_apply_bin_threshold(SDL_Surface *imgsrc, SDL_Surface *imgdst, ullong threshold) {
	if (threshold > 255) {
		fprintf(stderr, "GToolsPoint_apply_bin_threshold() Error. Got threshold above 255: %Lu\n", threshold);
		return 1;
	}
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsPoint_apply_bin_threshold() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	uchar Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsPoint_apply_bin_threshold() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	uint  pitches = 0, pitch = imgsrc->pitch;
	uint  wb = imgsrc->w * Bpp; 				// count of bytes of image per line	
	uint  col, r, g, b, a;
	uchar *pixels_src     = (uchar*) imgsrc->pixels;
	uchar *pixels_dst     = (uchar*) imgdst->pixels;
	uchar *pixels_dst_end = (uchar*) imgdst->pixels + pitch * imgdst->h;
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	if (Bpp == 3) {
		while (pixels_dst < pixels_dst_end) {
			if (pitches == wb) {	// end of image line
				while(pitches < pitch) { pitches++; pixels_src++; pixels_dst++; }	// skip line separating bytes
				pitches = 0;	// index of first byte in new line
			}
			if (*(pixels_src) <= threshold) *(pixels_dst) = 0x00;
			else *(pixels_dst) = 0xFF;
			pixels_src++;
			pixels_dst++;
			pitches++;
		}
	}
	else {
		if (Bpp == 4) {
			while (pixels_dst < pixels_dst_end) {
				if (pitches == wb) {	// end of image line
					while(pitches < pitch) { pitches++; pixels_src++; pixels_dst++; }	// skip line separating bytes
					pitches = 0;	// index of first byte in new line
				}
				col = *((uint*)pixels_src);
				a = (col & imgsrc->format->Amask);
				r = (col & imgsrc->format->Rmask) >> imgsrc->format->Rshift;
				g = (col & imgsrc->format->Gmask) >> imgsrc->format->Gshift;
				b = (col & imgsrc->format->Bmask) >> imgsrc->format->Bshift;
				
				if (r <= threshold) r = 0x00; else r = 0xFF;
				if (g <= threshold) g = 0x00; else g = 0xFF;
				if (b <= threshold) b = 0x00; else b = 0xFF;
				
				r <<= imgsrc->format->Rshift;
				g <<= imgsrc->format->Gshift;
				b <<= imgsrc->format->Bshift;
				
				col = a|r|g|b;
				
				*((uint*)pixels_dst) = col;
				
				pixels_dst	+= Bpp; 
				pixels_src	+= Bpp; 
				pitches		+= Bpp;
			}
		}
	}
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	return NO_ERROR;
}

uchar GToolsPoint_negative(SDL_Surface *imgdst) {
	if (Check_surface(imgdst)) { 
		fprintf(stderr, "GToolsPoint_negative() > Failed on assertion Check_surface(imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	uchar Bpp = imgdst->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsPoint_negative() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	uint  pitches = 0, pitch = imgdst->pitch;
	uint  wb = imgdst->w * Bpp; 				// count of bytes of image per line	
	uint  col, r, g, b, a;
	uchar *pixels_dst     = (uchar*) imgdst->pixels;
	uchar *pixels_dst_end = (uchar*) imgdst->pixels + pitch * imgdst->h;
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	if (Bpp == 3) {
		while (pixels_dst < pixels_dst_end) {
			if (pitches == wb) {	// end of image line
				while(pitches < pitch) { pitches++; pixels_dst++; }	// skip line separating bytes
				pitches = 0;	// index of first byte in new line
			}
			*(pixels_dst) = 0xFF - *(pixels_dst);
			pixels_dst++;
			pitches++;
		}
	}
	else {
		if (Bpp == 4) {
			while (pixels_dst < pixels_dst_end) {
				if (pitches == wb) {	// end of image line
					while(pitches < pitch) { pitches++; pixels_dst++;}	// skip line separating bytes
					pitches = 0;	// index of first byte in new line
				}
				col = *((uint*)pixels_dst);
				a = (col & imgdst->format->Amask);
				r = (col & imgdst->format->Rmask) >> imgdst->format->Rshift;
				g = (col & imgdst->format->Gmask) >> imgdst->format->Gshift;
				b = (col & imgdst->format->Bmask) >> imgdst->format->Bshift;
				
				r = 0xFF - r;
				g = 0xFF - g;
				b = 0xFF - b;
				
				r <<= imgdst->format->Rshift;
				g <<= imgdst->format->Gshift;
				b <<= imgdst->format->Bshift;
				
				col = a|r|g|b;
				
				*((uint*)pixels_dst) = col;
				
				pixels_dst	+= Bpp;
				pitches		+= Bpp;
			}
		}
	}
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	return NO_ERROR;
}

uchar GToolsPoint_histEqualize(SDL_Surface *imgdst, uint **colors) {
	if (Check_surface(imgdst)) { 
		fprintf(stderr, "GToolsPoint_histEqualize() > Failed on assertion Check_surface(imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	uchar Bpp = imgdst->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsPoint_histEqualize() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	if (! colors) {
		fprintf(stderr, "GToolsPoint_histEqualize() > NULL pointer at colors parameter\n");
		return 1;
	}
	uint  pitches = 0, pitch = imgdst->pitch;
	uint  wb = imgdst->w * Bpp; 				// count of bytes of image per line	
	uint  i, col[3], a, clr;
	uchar *pixels_dst     = (uchar*) imgdst->pixels;
	uchar *pixels_dst_end = (uchar*) imgdst->pixels + pitch * imgdst->h;
	uint  **dystrybuanta = calloc(3, sizeof(uint*));
	dystrybuanta[0] = calloc(256, sizeof(uint));
	dystrybuanta[1] = calloc(256, sizeof(uint));
	dystrybuanta[2] = calloc(256, sizeof(uint));
	
	ullong 	t[3];
	uchar 	min_col[3], channel;
	ullong	sum[3]   = {0, 0, 0};
	bool 	found[3] = {false, false, false};
	
	/* Utwórz dystrybuanty, oddzielnie dla każdego kanału */
	for (i = 0; i < 256; i++) {
		for (channel = 0; channel < 3; channel++) {
			if ((!found[channel]) && (colors[channel][i])) {
				found[channel]   = true;
				min_col[channel] = colors[channel][i];
			}
			if ((t[channel] = sum[channel] + colors[channel][i]) > sum[channel]) {
				sum[channel] = t[channel];
			}
			dystrybuanta[channel][i] = t[channel];
			//fprintf(stderr, "dystrybuanta[%d][%u] = %u\n", channel, i, dystrybuanta[channel][i]);
		}
	}
	/*DEBUG
	fprintf(stderr, "Dystrybuanta:\n");
	for (i = 0; i < 256; i++) {
		if ((dystrybuanta[0][i]) || (dystrybuanta[1][i]) || (dystrybuanta[2][i])) {
			fprintf(stderr, "[%3u]| %5u | %5u | %5u |\n", i, dystrybuanta[0][i], dystrybuanta[1][i], dystrybuanta[2][i]);
		}
	}
	fprintf(stderr, "min_col={%d, %d, %d}, max_col={%d, %d, %d} \n", min_col[0], min_col[1], min_col[2], max_col[0], max_col[1], max_col[2]);
	*/
	
	
	/* Wyczyść obecne histogramy */
	memset(colors[0], 0x00, 256*sizeof(uint));
	memset(colors[1], 0x00, 256*sizeof(uint));
	memset(colors[2], 0x00, 256*sizeof(uint));
	
	uint  wh = imgdst->w * imgdst->h; 
	double v[3], licz[3], 
			mian[3] = {(double)(wh - min_col[0]), (double)(wh - min_col[1]), (double)(wh - min_col[2])};
	
	fprintf(stderr, "width*height = %u\n", wh);
	fprintf(stderr, "mian = {%5.3f, %5.3f, %5.3f}\n", mian[0], mian[1], mian[2]);
	
	//!uchar p=0;
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	while (pixels_dst < pixels_dst_end) {
		if (pitches == wb) {	// end of image line
			while(pitches < pitch) { pitches++; pixels_dst++;}	// skip line separating bytes
			pitches = 0;	// index of first byte in new line
		}
		
		if (Bpp == 3)
			clr = Static_get24bit_pixel(pixels_dst);
		else
			clr = *((uint*)pixels_dst);
			
		col[0] = (clr & imgdst->format->Rmask)>> imgdst->format->Rshift;
		col[1] = (clr & imgdst->format->Gmask)>> imgdst->format->Gshift;
		col[2] = (clr & imgdst->format->Bmask)>> imgdst->format->Bshift;
		if (Bpp == 4) a = clr & imgdst->format->Amask;
		//!fprintf(stderr, "|%3d.%3d.%3d||", col[0], col[1], col[2]);
		//!if ((++p) == 8) { p = 0; fprintf(stderr, "\n"); }
		
		for (channel = 0; channel < 3; channel++) {
			//fprintf(stderr, "\tcol[%d] = %u\n", channel, col[channel]);
			//fprintf(stderr, "\tdystrybuanta[%d][%u] = %u\n", channel, col[channel], dystrybuanta[channel][col[channel]]);
			//fprintf(stderr, "\tmin_col[%d] = %d\n", channel, min_col[channel]);
			licz[channel] = ((double)(dystrybuanta[channel][col[channel]] - min_col[channel])) * 255.0;
			v[channel] = licz[channel] / mian[channel];
			//fprintf(stderr, "\tlicz[%d] = %f, mian[%d] = %f, v[%d] = %f\n", channel, licz[channel], channel, mian[channel], channel, v[channel]);
			if ((v[channel] - (uchar)v[channel]) > 0.50) v[channel] += 1.0;
			
			col[channel] = (uchar)v[channel];
			//fprintf(stderr, "\tcol[%d] = %u\n", channel, col[channel]);
			colors[channel][col[channel]]++;
		}
		clr = (col[0]<<imgdst->format->Rshift)|(col[1]<<imgdst->format->Gshift)|(col[2]<<imgdst->format->Bshift);
		if (Bpp == 4) {
			clr |= a;
			*((uint*)pixels_dst) = clr;
		}
		else {
			Static_set24bit_pixel(pixels_dst, clr);
		}
		pixels_dst += Bpp;
		pitches += Bpp;
	}
	/*
	fprintf(stderr, "Po przetworzeniu:\n");
	pitches = 0; p=0;
	pixels_dst     = (uchar*) imgdst->pixels;
	pixels_dst_end = (uchar*) imgdst->pixels + pitch * imgdst->h;
	while (pixels_dst < pixels_dst_end) {
		if (pitches == wb) {	// end of image line
			while(pitches < pitch) { pitches++; pixels_dst++;}	// skip line separating bytes
			pitches = 0;	// index of first byte in new line
		}
		
		clr = Static_get24bit_pixel(pixels_dst);
		col[0] = (clr & imgdst->format->Rmask)>> imgdst->format->Rshift;
		col[1] = (clr & imgdst->format->Gmask)>> imgdst->format->Gshift;
		col[2] = (clr & imgdst->format->Bmask)>> imgdst->format->Bshift;
		if (Bpp == 4) a = clr & imgdst->format->Amask;
		fprintf(stderr, "|%3d.%3d.%3d||", col[0], col[1], col[2]);
		if ((++p) == 8) { p = 0; fprintf(stderr, "\n"); }
		
		pixels_dst += Bpp;
		pitches += Bpp;
	}
	*/
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	free(dystrybuanta[0]);
	free(dystrybuanta[1]);
	free(dystrybuanta[2]);
	free(dystrybuanta);
	return NO_ERROR;
}

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
uchar GToolsPoint_replace_pixels(SDL_Surface *imgsrc, SDL_Surface *imgdst, 
			condition cond, uchar threshold, uchar *new_color) {
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsPoint_replace_pixels() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	uchar Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsPoint_replace_pixels() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	uint  pitches = 0, pitch = imgsrc->pitch;
	uint  wb = imgsrc->w * Bpp; 				// count of bytes of image per line	
	uint  col, r, g, b, a;
	uchar *pixels_src     = (uchar*) imgsrc->pixels;
	uchar *pixels_dst     = (uchar*) imgdst->pixels;
	uchar *pixels_dst_end = (uchar*) imgdst->pixels + pitch * imgdst->h;
	uchar min, max;
	bool res = false;
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	while (pixels_dst < pixels_dst_end) {
		if (pitches == wb) {	// end of image line
			while(pitches < pitch) { pitches++; pixels_src++; pixels_dst++; }	// skip line separating bytes
			pitches = 0;	// index of first byte in new line
		}
		col = *((uint*)pixels_src);
		r   = (col & imgsrc->format->Rmask)>>imgsrc->format->Rshift;
		g   = (col & imgsrc->format->Gmask)>>imgsrc->format->Gshift;
		b   = (col & imgsrc->format->Bmask)>>imgsrc->format->Bshift;
		if (Bpp == 4) a = col & imgsrc->format->Amask;
		min = (uchar)((r < g) ? ((b<r) ? b : r) : ((b<g) ? b : g));
		max = (uchar)((r > g) ? ((b>r) ? b : r) : ((b>g) ? b : g));
		
		max -= min;
		
		switch(cond) {
			case LOWER: 		res = max <  threshold; break;
			case LOWER_EQUAL: 	res = max <= threshold; break;
			case GREATER:		res = max >  threshold; break;
			case GREATER_EQUAL: res = max >= threshold; break;
			case EQUAL:			res = max == threshold; break;
			case NOT_EQUAL:		res = max != threshold; break;
		}
		if (res) {
			r = ((uint)new_color[0]) << imgsrc->format->Rshift;
			g = ((uint)new_color[1]) << imgsrc->format->Gshift;
			b = ((uint)new_color[2]) << imgsrc->format->Bshift;
			if (Bpp == 3) {
				col = r|g|b; 
				Static_set24bit_pixel(pixels_dst, col);
			}
			else {
				if (Bpp == 4) {
					col = r|g|b|a; 
					*((uint*)pixels_dst) = col;
				}
			}
		}
		else {
			if (Bpp == 3)
				Static_set24bit_pixel(pixels_dst, col);
			else
				*((uint*)pixels_dst) = col;
		}
		pixels_src += Bpp;
		pixels_dst += Bpp;
		pitches    += Bpp;
	}
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	return NO_ERROR;
}

/* Histogram stretching 
 * in x and y array there are points from graph
 * both array are of size - size */
uchar GToolsPoint_histogram_stretching(SDL_Surface *imgsrc, SDL_Surface *imgdst,
										usint *x, usint *y, usint size) {								
	if (Check_surfaces(imgsrc, imgdst)) { 
		fprintf(stderr, "GToolsPoint_histogram_stretching() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n");
		return ERROR_CHECK_SURF;
	}
	uchar j, i, Bpp = imgsrc->format->BytesPerPixel;
	if (Check_Bpp(Bpp)) {
		fprintf(stderr, "GToolsPoint_histogram_stretching() > Unsupported BytesPerPixel format %d\n", Bpp);
		return ERROR_UNSUPPORTED_BPP;
	}
	uint  pitches = 0, pitch = imgsrc->pitch;
	uint  wb = imgsrc->w * Bpp; 				// count of bytes of image per line	
	uint  col, c[4];
	
	int licz, mnoz, mian;
	
	
	uchar *pixels_src     = (uchar*) imgsrc->pixels;
	uchar *pixels_dst     = (uchar*) imgdst->pixels;
	uchar *pixels_dst_end = (uchar*) imgdst->pixels + pitch * imgdst->h;
	if (SDL_MUSTLOCK(imgdst)) SDL_LockSurface(imgdst);
	while (pixels_dst < pixels_dst_end) {
		if (pitches == wb) {	// end of image line
			while(pitches < pitch) { pitches++; pixels_src++; pixels_dst++; }	// skip line separating bytes
			pitches = 0;	// index of first byte in new line
		}
		col = *((uint*)pixels_src);
		c[0]   = (col & imgsrc->format->Rmask)>>imgsrc->format->Rshift;
		c[1]   = (col & imgsrc->format->Gmask)>>imgsrc->format->Gshift;
		c[2]   = (col & imgsrc->format->Bmask)>>imgsrc->format->Bshift;
		if (Bpp == 4) c[3] = col & imgsrc->format->Amask;
		
		//fprintf(stderr, "|%u,%u,%u -->\n", c[0], c[1], c[2]);
		
		for (j = 0; j < 3; j++)	{			// foreach channel 
			for (i = 1; i < size; i++) {	// find appropiate range
				if (c[j] > (uint)x[i]) {  continue; }
				if (c[j] == (uint)x[i-1]) { c[j] = (uint)y[i-1];  break; }
				else {
					if (c[j] == (uint)x[i]) { c[j] = (uint)y[i]; break; }
					else {
						licz = (int)y[i]-(int)y[i-1];
						mnoz = (int)c[j]-(int)x[i-1];
						mian = (int)x[i]-(int)x[i-1];
						
						licz *= mnoz;
						licz /= mian;
						licz += (int)y[i-1];
						c[j] = (uint) licz;

						break;
					}
				}
			}
		}
		
		c[0] <<= imgsrc->format->Rshift;
		c[1] <<= imgsrc->format->Gshift;
		c[2] <<= imgsrc->format->Bshift;
		if (Bpp == 3) {
			col = c[0]|c[1]|c[2]; Static_set24bit_pixel(pixels_dst, col);
		}
		else {
			if (Bpp == 4) {
				col = c[0]|c[1]|c[2]|c[3]; *((uint*)pixels_dst) = col;
			}
		}
		pixels_src += Bpp;
		pixels_dst += Bpp;
		pitches    += Bpp;
	}
	if (SDL_MUSTLOCK(imgdst)) SDL_UnlockSurface(imgdst);
	return NO_ERROR;
	
	/*
	uchar los[20];
	uchar i = 0, j;
	for (;i < 20; i++) los[i] = rand()%256;
	
	for (i = 0; i < 20; i++) {
		fprintf(stderr, "Check point %d\n", los[i]);
		for (j = 1; j < size; j++) {
			fprintf(stderr, "\tCheck range [%hu,%hu]\n", x[j-1], x[j]);
			if (los[i] > x[j]) continue;
			if (los[i] == x[j-1]) {
				fprintf(stderr, "\t[1]Mapped %d to %hu\n", los[i], y[j-1]);
				los[i] = y[j-1];
				break;
			}
			else {
				if (los[i] == x[j]) {
					fprintf(stderr, "\t[2]Mapped %d to %hu\n", los[i], y[j]);
					los[i] = y[j];
					break;
				}
				else {
					fprintf(stderr, "\t[3]Mapped %d to ", los[i]);
					los[i] = ((y[j]-y[j-1])*(los[i]-x[j-1])) / (x[j]-x[j-1]) + y[j-1];
					fprintf(stderr, "%d\n", los[i]);
					break;
				}
			}
		}
	}
	
	return NO_ERROR;*/
}
