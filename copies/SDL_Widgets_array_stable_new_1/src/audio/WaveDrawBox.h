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
	#include	"Audio.h"
	
	#define WDB_BGCOLOR			0xFFF4BD	//R,G,B
	#define WDB_BGCOLOR2		0xFFF4BDFF	//R,G,B,A		
	#define	WDB_AXES_COLOR		0x000000FF	//R,G,B,A
	#define WDB_MAXY_COLOR  	0xEC99FFFF	//R,G,B,A
	#define WDB_GRAPH_COLOR		0xFF0028	//R,G,B
	#define WDB_GRAPH_COLOR2	0xFF0028FF	//R,G,B,A
	
	struct wdb_point {
		float		fvalue;			// value of point in range [-1, 1]
		usint		relx;			// x, y - of point relative to most
		usint		rely;			// top-left corner of widget surface
	};
	typedef struct wdb_point wdb_point;
	
	struct WaveDrawBox {
		Widget			widget;			// inherits from Widget
		AudioFromGraph 	*afg;			// pointer to existing AudioFromGraph object (given on construction)
		wdb_point		*points;		// private - array of points
		float			*samples;		// array with samples of size sample_freq (filled after draw and mouse release)
		float			yp;				// private [current y value in range [-1,1]
		usint 			bunch;			// count of samples between two xticks
		usint			sample_freq;	// sampling freqency
		usint			padx;			// padding x
		usint			pady;			// padding y
		usint			xrange;			// sample_freq/bunch + 1
		usint			yrange;			// rely_max - rely_min
		usint			my;				// distance between vertexes of y axis and maxy/miny point
		usint			zero_x;			// x,y position of origin of coordinate system 
		usint			zero_y;			// relative to most top-left corner of widget surface
										// NOTE: this point lays on xaxis ONE pixel to right from y axis
								
		usint			relx, rely;				/*private*/
		usint			relx_min, relx_max;		// max, min dimensions inside drawable area
		usint			rely_min, rely_max;		//
		usint			xp;						// current x value in range [relx_min,relx_max]
	};
	// CONSTRUCTOR
	WaveDrawBox* WaveDrawBox_new(WaveDrawBox *this, AudioFromGraph *afg, usint h);
	
	// REFRESH widget
	void WaveDrawBox_refresh(WaveDrawBox *wdb);
	
	void WaveDrawBox_clearData(WaveDrawBox *wdb);
	
	// toString
	char* WaveDrawBox_toString(WaveDrawBox *wdb);
	
	
	#define WaveDrawBox_DrawPoint(wdb, screen, drag)	/*private*/														\
	{																													\
		wdb->xp = wdb->relx - wdb->relx_min;																			\
		wdb->yp = ((float)(-((wdb->rely - wdb->rely_min)<<1))) / ((float)wdb->yrange) + 1.0f;							\
		if (wdb->points[wdb->xp].rely != wdb->rely) {																	\
			if ((wdb->points[wdb->xp].rely)&&(wdb->points[wdb->xp].rely != wdb->zero_y)) {								\
				/*fprintf(stderr, "Clear point (%hu,%hu)[%5.2f]\n", wdb->points[wdb->xp].relx,*/						\
							/*wdb->points[wdb->xp].rely, wdb->points[wdb->xp].fvalue);*/								\
				/*if (wdb->widget.surf->format->BytesPerPixel == 3) {*/													\
					/*Static_set24bit_pixelxy_lock(wdb->widget.surf, wdb->points[wdb->xp].relx,*/						\
						/*wdb->points[wdb->xp].rely, WDB_BGCOLOR);*/													\
				/*}*/																									\
				/*else*/																								\
					pixelColor(wdb->widget.surf, wdb->points[wdb->xp].relx, wdb->points[wdb->xp].rely, WDB_BGCOLOR2);	\
			}																											\
			wdb->points[wdb->xp].relx   = wdb->relx;																	\
			wdb->points[wdb->xp].rely   = wdb->rely;																	\
			wdb->points[wdb->xp].fvalue = wdb->yp;																		\
			if (wdb->rely != wdb->zero_y) {																				\
				/*fprintf(stderr, "Draw  point (%hu,%hu)[%5.2f]\n", wdb->points[wdb->xp].relx,*/						\
							/*wdb->points[wdb->xp].rely, wdb->points[wdb->xp].fvalue);*/								\
				/*if (wdb->widget.surf->format->BytesPerPixel == 3) {*/													\
					/*Static_set24bit_pixelxy_lock(wdb->widget.surf, wdb->points[wdb->xp].relx,*/						\
						/*wdb->points[wdb->xp].rely, WDB_GRAPH_COLOR);*/												\
				/*}*/																									\
				/*else*/																								\
					pixelColor(wdb->widget.surf, wdb->points[wdb->xp].relx, wdb->points[wdb->xp].rely, WDB_GRAPH_COLOR2);\
			}																											\
			SDL_BlitSurface(wdb->widget.surf, NULL, screen->screen, &(wdb->widget.pos));								\
			SDL_Flip(screen->screen);																					\
		}																												\
	}
	
	#define WaveDrawBox_mouseDragging(wdb, screen)	/*private*/																\
	{																														\
		if (Widget_contains(&(wdb->widget), screen->event.motion.x, screen->event.motion.y))								\
		{																													\
			wdb->relx = screen->event.motion.x - wdb->widget.pos.x;															\
			wdb->rely = screen->event.motion.y - wdb->widget.pos.y;															\
			if (Static_PointInside(wdb->relx, wdb->rely, wdb->relx_min, wdb->relx_max, wdb->rely_min, wdb->rely_max)) {		\
				WaveDrawBox_DrawPoint(wdb, screen, 1);																		\
			}																												\
		}																													\
	}
	
	/* y = (y2-y1)/(x2-x1) * (x-x1) + y1 */
	#define WaveDrawBox_mouseReleased(wdb, screen)	/*private*/															\
	{																													\
		wdb->widget.dragging = false;																					\
		if (wdb->samples) {																								\
			float yrange;				/* yrange = y2-y1 in above equation*/											\
			float y1;					/* y1 in above */																\
			usint s = 0;				/* samples index [0...wdb->sample_freq]*/										\
			usint xrange = wdb->bunch;	/* xrange = x2-x1 in above */													\
			usint i, s2;																								\
			/*! FILE *graph_data = fopen("graph.txt","w"); !*/															\
			for (i = 1; i < wdb->xrange; i++) {	/* foreach point in graph */											\
				y1     = wdb->points[i-1].fvalue;																		\
				yrange = wdb->points[i].fvalue;																			\
				s2 = 1;							/* index of sample relative to start of sample bunch*/					\
																														\
				/* Fill first sample in bunch (copy from points[i-1]) */												\
				wdb->samples[s] = y1;																					\
																														\
				/*! fprintf(graph_data, "%hu\t%f\n", s, wdb->samples[s]); !*/											\
				s++;																									\
																														\
				yrange -= y1;																							\
				while (s2 < xrange) {				/* foreach sample wdb->samples[s] */								\
					/* calculate samples from second to last s2 in [1...wdb->bunch-1] */ 								\
					wdb->samples[s] = ((yrange * (float)s2)/ (float)xrange) + y1;										\
					/*! fprintf(graph_data, "%hu\t%f\n", s, wdb->samples[s]); !*/										\
					s++; s2++;																							\
				} 																										\
			}																											\
			/* Fill last sample in last bunch (copy from points[i-1]) */												\
			wdb->samples[s] = wdb->points[i-1].fvalue;																	\
			/*! fprintf(graph_data, "%hu\t%f\n", s, wdb->samples[s]);! */												\
			/*! fclose(graph_data); !*/																					\
		}																												\
	}

	#define WaveDrawBox_mousePressed(wdb, screen)	/*public*/															\
	{																													\
		wdb->relx = screen->event.button.x - wdb->widget.pos.x;															\
		wdb->rely = screen->event.button.y - wdb->widget.pos.y;															\
		if (Static_PointInside(wdb->relx, wdb->rely, wdb->relx_min, wdb->relx_max, wdb->rely_min, wdb->rely_max)) {		\
			wdb->widget.dragging = true;																				\
			WaveDrawBox_DrawPoint(wdb, screen, 0);																		\
			while (wdb->widget.dragging) {																				\
				while (SDL_PollEvent(screen->pevent)) {																	\
					if (screen->pevent->type == SDL_MOUSEMOTION) {														\
						WaveDrawBox_mouseDragging(wdb, screen);															\
					}																									\
					else {																								\
						if (screen->pevent->type == SDL_MOUSEBUTTONUP) {												\
							WaveDrawBox_mouseReleased(wdb, screen);														\
							break;																						\
						}																								\
					}																									\
				}																										\
			}																											\
			/* fprintf(stderr, "Mouse pressed on WaveDrawBox at (x,y)=(%hu,%5.2f) dragging=%d\n", wdb->xp, wdb->yp, */	\
			/* wdb->widget.dragging); */																				\
		}																												\
	}
	
	#define WaveDrawBox_mousePressed2(wdb, screen) 													\
	{																								\
		SDL_Surface *surf   = wdb->widget.surf;														\
		SDL_Surface *scr    = screen->screen;														\
		SDL_Rect    *rect   = &(wdb->widget.pos);													\
		SDL_Event   *pevent = screen->pevent;														\
		usint wdb_pos_x = wdb->widget.pos.x;														\
		usint wdb_pos_y = wdb->widget.pos.y;														\
		usint wdb_maxx  = wdb->widget.maxx;															\
		usint wdb_maxy  = wdb->widget.maxy;															\
		usint relx, rely;																			\
		usint sx = screen->event.button.x;															\
		usint sy = screen->event.button.y;															\
		bool  dragging = false;																		\
																									\
		if (Static_PointInside(sx, sy, wdb_pos_x, wdb_maxx, wdb_pos_y, wdb_maxy)) {					\
			relx = sx - wdb_pos_x;																	\
			rely = sy - wdb_pos_y;																	\
			/*fprintf(stderr, "Inside relx=%hu, rely=%hu\n", relx, rely);*/							\
			dragging = true;																		\
			pixelColor(surf, relx, rely, WDB_GRAPH_COLOR2);											\
			SDL_BlitSurface(surf, NULL, scr, rect);													\
			SDL_Flip(scr);																			\
			while (dragging) {																		\
				while (SDL_PollEvent(pevent)) {														\
					if (pevent->type == SDL_MOUSEMOTION) {											\
						relx = pevent->motion.x - rect->x;											\
						rely = pevent->motion.y - rect->y;											\
						pixelColor(surf, relx, rely, WDB_GRAPH_COLOR2);								\
						SDL_BlitSurface(surf, NULL, scr, rect);										\
						SDL_Flip(scr);																\
					}																				\
					else {																			\
						if (pevent->type == SDL_MOUSEBUTTONUP) {									\
							dragging = false;														\
							break;																	\
						}																			\
					}																				\
				}																					\
			}																						\
		}																							\
	}
#endif

