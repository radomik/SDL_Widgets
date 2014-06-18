/*
 *      WaveDrawBox.h - this file is part of SDL_Widgets
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

#ifndef		_WaveDrawBox_h_
	#define		_WaveDrawBox_h_
	#include	"StdDefinitions.h"
	#include 	"Widget.h"
	
	#define WDB_BGCOLOR			0xFFF4BD	//R,G,B
	#define WDB_BGCOLOR2		0xFFF4BDFF	//R,G,B,A		
	#define	WDB_AXES_COLOR		0x000000FF	//R,G,B,A
	#define WDB_MAXY_COLOR  	0xEC99FFFF	//R,G,B,A
	#define WDB_GRAPH_COLOR		0xFF0028	//R,G,B
	#define WDB_GRAPH_COLOR2	0xFF0028FF	//R,G,B,A
	
	struct wdb_point {
		float		fvalue;			// value of point in range [-1, 1]
		u16		relx;			// x, y - of point relative to most
		u16		rely;			// top-left corner of widget surface
	};
	//typedef struct wdb_point wdb_point;
	
	extern const coClass *WaveDrawBox_class;
	#define WAVE_DRAW_BOX(VTHIS) ((WaveDrawBox*)VTHIS)
	
	struct WaveDrawBox {
		Widget			_super;			// inherits from Widget
		AudioFromGraph 	*afg;			// pointer to existing AudioFromGraph object (given on construction)
		wdb_point		*points;		// private - array of points
		float			*samples;		// array with samples of size sample_freq (filled after draw and mouse release)
		float			yp;				// private [current y value in range [-1,1]
		u16 			bunch;			// count of samples between two xticks
		u16				sample_freq;	// sampling freqency
		u16				padx;			// padding x
		u16				pady;			// padding y
		u16				xrange;			// sample_freq/bunch + 1
		u16				yrange;			// rely_max - rely_min
		u16				my;				// distance between vertexes of y axis and maxy/miny point
		u16				zero_x;			// x,y position of origin of coordinate system 
		u16				zero_y;			// relative to most top-left corner of widget surface
										// NOTE: this point lays on xaxis ONE pixel to right from y axis
								
		u16				relx, rely;				/*private*/
		u16				relx_min, relx_max;		// max, min dimensions inside drawable area
		u16				rely_min, rely_max;		//
		u16				xp;						// current x value in range [relx_min,relx_max]
	};
	// CONSTRUCTOR
	WaveDrawBox* WaveDrawBox_new(WaveDrawBox *this, AudioFromGraph *afg, u16 h);
	void WaveDrawBox_vdestroy(void *vthis);
	
	// REFRESH widget
	void WaveDrawBox_vrefresh(void *vthis);
	
	void WaveDrawBox_clearData(WaveDrawBox *this);
	
	// toString
	const char* WaveDrawBox_toString(const WaveDrawBox *this);
#endif

