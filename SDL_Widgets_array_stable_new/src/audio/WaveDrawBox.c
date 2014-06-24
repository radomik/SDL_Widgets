/*
 *      WaveDrawBox.c - this file is part of SDL_Widgets
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

#include	"StdDefinitions.h"
#include	"Screen.h"
#include	"Static.h"
#include	"Widget.h"
#include    "Memory.h"
#include	"WaveDrawBox.h"
#include	"AudioFromGraph.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = WaveDrawBox_vdestroy,
	.toString = WaveDrawBox_vtoString
};

/** Methods overriden from interface IWidget */
static const IWidget override_IWidget = {
	.mevent 	= Widget_vmevent,
	.draw 		= Widget_vdraw,
	.refresh	= WaveDrawBox_vrefresh,
	.drag		= Widget_vdrag,
	.setVisible	= Widget_vsetVisible
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IWidget
};

static coClass type = {
	.size	= sizeof(WaveDrawBox),
	.name	= "WaveDrawBox",
	.vtable	= vtable
};
const coClass *WaveDrawBox_class = &type;

#define WaveDrawBox_DrawPoint(this, screen, drag)	/*private*/														\
{																													\
	this->xp = this->relx - this->relx_min;																			\
	this->yp = ((float)(-((this->rely - this->rely_min)<<1))) / ((float)this->yrange) + 1.0f;							\
	if (this->points[this->xp].rely != this->rely) {																	\
		if ((this->points[this->xp].rely)&&(this->points[this->xp].rely != this->zero_y)) {								\
			/*fprintf(stderr, "Clear point (%hu,%hu)[%5.2f]\n", this->points[this->xp].relx,*/						\
						/*this->points[this->xp].rely, this->points[this->xp].fvalue);*/								\
			/*if (WIDGET(this)->surf->format->BytesPerPixel == 3) {*/													\
				/*Static_set24bit_pixelxy_lock(WIDGET(this)->surf, this->points[this->xp].relx,*/						\
					/*this->points[this->xp].rely, WDB_BGCOLOR);*/													\
			/*}*/																									\
			/*else*/																								\
				pixelColor(WIDGET(this)->surf, this->points[this->xp].relx, this->points[this->xp].rely, WDB_BGCOLOR2);	\
		}																											\
		this->points[this->xp].relx   = this->relx;																	\
		this->points[this->xp].rely   = this->rely;																	\
		this->points[this->xp].fvalue = this->yp;																		\
		if (this->rely != this->zero_y) {																				\
			/*fprintf(stderr, "Draw  point (%hu,%hu)[%5.2f]\n", this->points[this->xp].relx,*/						\
						/*this->points[this->xp].rely, this->points[this->xp].fvalue);*/								\
			/*if (WIDGET(this)->surf->format->BytesPerPixel == 3) {*/													\
				/*Static_set24bit_pixelxy_lock(WIDGET(this)->surf, this->points[this->xp].relx,*/						\
					/*this->points[this->xp].rely, WDB_GRAPH_COLOR);*/												\
			/*}*/																									\
			/*else*/																								\
				pixelColor(WIDGET(this)->surf, this->points[this->xp].relx, this->points[this->xp].rely, WDB_GRAPH_COLOR2);\
		}																											\
		SDL_BlitSurface(WIDGET(this)->surf, NULL, screen->screen, &(WIDGET(this)->pos));								\
		SDL_Flip(screen->screen);																					\
	}																												\
}

#define WaveDrawBox_mouseDragging(this, screen)	/*private*/																\
{																														\
	if (Widget_contains(WIDGET(this), screen->event.motion.x, screen->event.motion.y))								\
	{																													\
		this->relx = screen->event.motion.x - WIDGET(this)->pos.x;															\
		this->rely = screen->event.motion.y - WIDGET(this)->pos.y;															\
		if (Static_pointInside(this->relx, this->rely, this->relx_min, this->relx_max, this->rely_min, this->rely_max)) {		\
			WaveDrawBox_DrawPoint(this, screen, 1);																		\
		}																												\
	}																													\
}

/* y = (y2-y1)/(x2-x1) * (x-x1) + y1 */
#define WaveDrawBox_mouseReleased(this, screen)	/*private*/															\
{																													\
	WIDGET(this)->dragging = false;																					\
	if (this->samples) {																								\
		float yrange;				/* yrange = y2-y1 in above equation*/											\
		float y1;					/* y1 in above */																\
		u16 s = 0;				/* samples index [0...this->sample_freq]*/										\
		u16 xrange = this->bunch;	/* xrange = x2-x1 in above */													\
		u16 i, s2;																								\
		/*! FILE *graph_data = fopen("graph.txt","w"); !*/															\
		for (i = 1; i < this->xrange; i++) {	/* foreach point in graph */											\
			y1     = this->points[i-1].fvalue;																		\
			yrange = this->points[i].fvalue;																			\
			s2 = 1;							/* index of sample relative to start of sample bunch*/					\
																													\
			/* Fill first sample in bunch (copy from points[i-1]) */												\
			this->samples[s] = y1;																					\
																													\
			/*! fprintf(graph_data, "%hu\t%f\n", s, this->samples[s]); !*/											\
			s++;																									\
																													\
			yrange -= y1;																							\
			while (s2 < xrange) {				/* foreach sample this->samples[s] */								\
				/* calculate samples from second to last s2 in [1...this->bunch-1] */ 								\
				this->samples[s] = ((yrange * (float)s2)/ (float)xrange) + y1;										\
				/*! fprintf(graph_data, "%hu\t%f\n", s, this->samples[s]); !*/										\
				s++; s2++;																							\
			} 																										\
		}																											\
		/* Fill last sample in last bunch (copy from points[i-1]) */												\
		this->samples[s] = this->points[i-1].fvalue;																	\
		/*! fprintf(graph_data, "%hu\t%f\n", s, this->samples[s]);! */												\
		/*! fclose(graph_data); !*/																					\
	}																												\
}

static void WaveDrawBox_mousePressed(Widget *sender, Screen *screen)
{
	WaveDrawBox *this = WAVE_DRAW_BOX(sender);
	this->relx = screen->event.button.x - sender->pos.x;
	this->rely = screen->event.button.y - sender->pos.y;
	if (Static_pointInside(this->relx, this->rely, this->relx_min, this->relx_max, this->rely_min, this->rely_max)) {
		sender->dragging = true;
		WaveDrawBox_DrawPoint(this, screen, 0);
		while (sender->dragging) {
			while (SDL_PollEvent(screen->pevent)) {
				if (screen->pevent->type == SDL_MOUSEMOTION) {
					WaveDrawBox_mouseDragging(this, screen);
				}
				else {
					if (screen->pevent->type == SDL_MOUSEBUTTONUP) {
						WaveDrawBox_mouseReleased(this, screen);
						break;
					}
				}
			}
		}
		/* fprintf(stderr, "Mouse pressed on WaveDrawBox at (x,y)=(%hu,%5.2f) dragging=%d\n", this->xp, this->yp, */
		/* sender->dragging); */
	}
}

const char *WaveDrawBox_vtoString(const void *vthis) {
	static char str_id[256];
	const WaveDrawBox *this = WAVE_DRAW_BOX(this);
	snprintf(str_id, sizeof(str_id), "WaveDrawBox: [x,y,w,h]=[%hu,%hu,%hu,%hu], freq=%hu, bunch=%hu, (zero)=(%hu,%hu), xrel_range=(%hu,%hu)[%hu], yrel_range=(%hu,%hu)[%hu+1], (padx,pady)=(%hu,%hu), my=%hu",
		WIDGET(this)->pos.x, WIDGET(this)->pos.y, WIDGET(this)->pos.w, WIDGET(this)->pos.h, 
		this->sample_freq, this->bunch, this->zero_x, this->zero_y, this->relx_min, this->relx_max, 
		this->xrange, this->rely_min, this->rely_max, this->yrange, this->padx, this->pady, this->my);
	return str_id;
}

#define DEBUG 0
void WaveDrawBox_vrefresh(void *vthis) {
	WaveDrawBox *this = WAVE_DRAW_BOX(vthis);
	if ((! this->sample_freq) || (! this->bunch)) {
		fprintf(stderr, "WaveDrawBox_vrefresh: Failed on assertion ((! this->sample_freq) || (! this->bunch)) == true\n%s\n", toString(this));
		WIDGET(this)->visible = false;
		return;
	}
	this->xrange   = this->sample_freq / this->bunch + 1;
	this->zero_x   = this->padx;
	this->zero_y   = WIDGET(this)->pos.h >> 1;
	WIDGET(this)->pos.w = this->xrange + (this->padx << 1);
	WIDGET(this)->maxx  = WIDGET(this)->pos.x + WIDGET(this)->pos.w;
	WIDGET(this)->maxy  = WIDGET(this)->pos.y + WIDGET(this)->pos.h;
	
	if (DEBUG) fprintf(stderr, "WaveDrawBox_vrefresh: [1] %s\n", toString(this));
	
	if (WIDGET(this)->surf) {
		if (DEBUG) fprintf(stderr, "WaveDrawBox_vrefresh: [2] Surface exists filling with BGCOLOR\n");
		if (SDL_FillRect(WIDGET(this)->surf, NULL, WDB_BGCOLOR)) {
			fprintf(stderr, "WaveDrawBox_vrefresh: [1] Failed to fill background surface (FillRect) %s\n", SDL_GetError());
			WIDGET(this)->visible = false;
			return;
		}
	}
	else {
		if (DEBUG) fprintf(stderr, "WaveDrawBox_vrefresh: [2] Surface not exists creating\n");
		if (! (WIDGET(this)->surf = Static_newSurface(WIDGET(this)->pos.w, WIDGET(this)->pos.h)))
		{
			fprintf(stderr, "WaveDrawBox_vrefresh: Failed to fill create background surface (SDL_CreateRGBSurface) %s\n", SDL_GetError());
			WIDGET(this)->visible = false;
			return;
		}
		if (DEBUG) fprintf(stderr, "WaveDrawBox_vrefresh: [2] Filling created surface with BGCOLOR\n");
		if (SDL_FillRect(WIDGET(this)->surf, NULL, WDB_BGCOLOR)) {
			fprintf(stderr, "WaveDrawBox_vrefresh: [2] Failed to fill background surface (FillRect) %s\n", SDL_GetError());
			WIDGET(this)->visible = false;
			return;
		}
	}
	
	/* Draw axes */
	u16 y1 = WIDGET(this)->pos.h - this->pady - this->my;
	u16 x1 = this->padx + this->xrange;
	this->relx_min = this->zero_x;
	this->relx_max = x1-1;
	this->rely_min = this->pady + this->my;
	this->rely_max = y1;
	
	hlineColor(WIDGET(this)->surf, this->padx, x1, WIDGET(this)->pos.h >> 1, WDB_AXES_COLOR);
	hlineColor(WIDGET(this)->surf, this->padx, x1, this->rely_min, WDB_MAXY_COLOR);
	hlineColor(WIDGET(this)->surf, this->padx, x1, y1, WDB_MAXY_COLOR); 

	y1 += this->my;
	vlineColor(WIDGET(this)->surf, this->padx, this->pady, y1, WDB_AXES_COLOR);
	vlineColor(WIDGET(this)->surf, x1, this->pady, y1, WDB_AXES_COLOR);
	
	this->yrange = this->rely_max - this->rely_min;
	
	if (this->xrange != (this->relx_max - this->relx_min + 1)) {
		fprintf(stderr, "WaveDrawBox_vrefresh: Failed on assertion (this->xrange != (this->relx_max - this->relx_min + 1)) == true\n%s\n", toString(this));
		WIDGET(this)->visible = false;
		return;
	}
	if ((this->xrange == 0) || (this->xrange >= this->sample_freq)) {
		fprintf(stderr, "WaveDrawBox_vrefresh: Failed on assertion ((this->xrange == 0) || (this->xrange >= this->sample_freq)) == true\n%s\n", toString(this));
		WIDGET(this)->visible = false;
		return;
	}
	
	if (! this->points) {
		this->points = calloc(this->xrange, sizeof(wdb_point));
		this->afg->points = this->points;
		this->afg->points_size = this->xrange;
	}
	if (! this->samples) {
		this->samples = calloc(this->sample_freq, sizeof(float));
		this->afg->samples = this->samples;
		this->afg->samples_size = this->sample_freq;
	}
	
	if (DEBUG) {
		fprintf(stderr, "WaveDrawBox_vrefresh: Final: %s\n", toString(this));
		fprintf(stderr, "WaveDrawBox_vrefresh: Surface: %s\n", Static_surfaceToString(WIDGET(this)->surf));
	}
	
	WIDGET(this)->visible = true;
}

void WaveDrawBox_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	free(WAVE_DRAW_BOX(vthis)->points); WAVE_DRAW_BOX(vthis)->points=NULL;		// delete points array
	free(WAVE_DRAW_BOX(vthis)->samples); WAVE_DRAW_BOX(vthis)->samples=NULL;	// delete samples array
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

WaveDrawBox* WaveDrawBox_new(WaveDrawBox *this, AudioFromGraph *afg, u16 h) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: afg=%p, h=%hu\n", __FUNCTION__, afg, h);
		return NULL;
	}
	
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	WIDGET(this)->pos.h = h;
	WIDGET(this)->mevent = true;
	WIDGET(this)->mevent_internal.press = WaveDrawBox_mousePressed;
	this->points = NULL;
	this->samples = NULL;
	this->afg = afg;
	
	if (afg == NULL) 
		fprintf(stderr, "WaveDrawBox_new: ERROR AudioFromGraph object cannot be NULL\n");
		
	this->yp 			= 0.0f;
	this->bunch 		= 0;
	this->sample_freq	= AUDIO_SAMPLE_FREQUENCY;
	this->padx			= 0;
	this->pady			= 0;
	this->xrange		= 0;
	this->yrange		= 0;
	this->my			= 0;
	this->zero_x		= 0;
	this->zero_y		= 0;
	this->relx			= 0;
	this->rely			= 0;
	this->relx_min		= 0;
	this->relx_max		= 0;
	this->rely_min		= 0;
	this->rely_max		= 0;
	this->xp			= 0;
	return this;
}

void WaveDrawBox_clearData(WaveDrawBox *this) {
	b8 refresh = false;
	if (this->points)  {
		u16 i = 0; for (; i < this->xrange; i++) this->points[i].fvalue = 0.0f;
		refresh = true;
	}
	if (this->samples) { 
		u16 i = 0; for (; i < this->sample_freq; i++) this->samples[i] = 0.0f;
		refresh = true; 
	}
	
	if (refresh) Widget_refresh(WIDGET(this));
}

