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
#include	"Object.h"
#include	"Widget.h"
#include    "Memory.h"
#include	"WaveDrawBox.h"
#include	"AudioFromGraph.h"
#include	"Audio.h"
static const char *type = "WaveDrawBox";

static char str_id[256];
char* WaveDrawBox_toString(WaveDrawBox *wdb) {
	if (! wdb) return "wdb=NULL";
	Widget *widget = &(wdb->widget);
	snprintf(str_id, 256, "WaveDrawBox: [x,y,w,h]=[%hu,%hu,%hu,%hu], freq=%hu, bunch=%hu, (zero)=(%hu,%hu), xrel_range=(%hu,%hu)[%hu], yrel_range=(%hu,%hu)[%hu+1], (padx,pady)=(%hu,%hu), my=%hu",
		widget->pos.x, widget->pos.y, widget->pos.w, widget->pos.h, wdb->sample_freq, wdb->bunch, wdb->zero_x, wdb->zero_y, wdb->relx_min, wdb->relx_max, wdb->xrange, wdb->rely_min, wdb->rely_max, wdb->yrange, wdb->padx, wdb->pady, wdb->my);
	return str_id;
}

#define DEBUG 0
void WaveDrawBox_refresh(WaveDrawBox *wdb) {
	Widget *widget = &(wdb->widget);
	if ((! wdb->sample_freq) || (! wdb->bunch)) {
		fprintf(stderr, "WaveDrawBox_refresh> Failed on assertion ((! wdb->sample_freq) || (! wdb->bunch)) == true\n%s\n", WaveDrawBox_toString(wdb));
		widget->visible = false;
		return;
	}
	wdb->xrange   = wdb->sample_freq / wdb->bunch + 1;
	wdb->zero_x   = wdb->padx;
	wdb->zero_y   = widget->pos.h >> 1;
	widget->pos.w = wdb->xrange + (wdb->padx << 1);
	widget->maxx  = widget->pos.x + widget->pos.w;
	widget->maxy  = widget->pos.y + widget->pos.h;
	
	if (DEBUG) fprintf(stderr, "WaveDrawBox_refresh [1] %s\n", WaveDrawBox_toString(wdb));
	
	if (widget->surf) {
		if (DEBUG) fprintf(stderr, "WaveDrawBox_refresh [2] Surface exists filling with BGCOLOR\n");
		if (SDL_FillRect(widget->surf, NULL, WDB_BGCOLOR)) {
			fprintf(stderr, "WaveDrawBox_refresh>[1] Failed to fill background surface (FillRect) %s\n", SDL_GetError());
			widget->visible = false;
			return;
		}
	}
	else {
		if (DEBUG) fprintf(stderr, "WaveDrawBox_refresh [2] Surface not exists creating\n");
		if (! (widget->surf = Static_NewSurface(widget->pos.w, widget->pos.h)))
		{
			fprintf(stderr, "WaveDrawBox_refresh> Failed to fill create background surface (SDL_CreateRGBSurface) %s\n", SDL_GetError());
			widget->visible = false;
			return;
		}
		if (DEBUG) fprintf(stderr, "WaveDrawBox_refresh [2] Filling created surface with BGCOLOR\n");
		if (SDL_FillRect(widget->surf, NULL, WDB_BGCOLOR)) {
			fprintf(stderr, "WaveDrawBox_refresh>[2] Failed to fill background surface (FillRect) %s\n", SDL_GetError());
			widget->visible = false;
			return;
		}
	}
	
	/* Draw axes */
	usint y1 = widget->pos.h - wdb->pady - wdb->my;
	usint x1 = wdb->padx + wdb->xrange;
	wdb->relx_min = wdb->zero_x;
	wdb->relx_max = x1-1;
	wdb->rely_min = wdb->pady + wdb->my;
	wdb->rely_max = y1;
	
	hlineColor(widget->surf, wdb->padx, x1, widget->pos.h >> 1, WDB_AXES_COLOR);
	hlineColor(widget->surf, wdb->padx, x1, wdb->rely_min, WDB_MAXY_COLOR);
	hlineColor(widget->surf, wdb->padx, x1, y1, WDB_MAXY_COLOR); 

	y1 += wdb->my;
	vlineColor(widget->surf, wdb->padx, wdb->pady, y1, WDB_AXES_COLOR);
	vlineColor(widget->surf, x1, wdb->pady, y1, WDB_AXES_COLOR);
	
	wdb->yrange = wdb->rely_max - wdb->rely_min;
	
	if (wdb->xrange != (wdb->relx_max - wdb->relx_min + 1)) {
		fprintf(stderr, "WaveDrawBox_refresh> Failed on assertion (wdb->xrange != (wdb->relx_max - wdb->relx_min + 1)) == true\n%s\n", WaveDrawBox_toString(wdb));
		widget->visible = false;
		return;
	}
	if ((wdb->xrange == 0) || (wdb->xrange >= wdb->sample_freq)) {
		fprintf(stderr, "WaveDrawBox_refresh> Failed on assertion ((wdb->xrange == 0) || (wdb->xrange >= wdb->sample_freq)) == true\n%s\n", WaveDrawBox_toString(wdb));
		widget->visible = false;
		return;
	}
	
	if (! wdb->points) {
		wdb->points = calloc(wdb->xrange, sizeof(wdb_point));
		wdb->afg->points = wdb->points;
		wdb->afg->points_size = wdb->xrange;
	}
	if (! wdb->samples) {
		wdb->samples = calloc(wdb->sample_freq, sizeof(float));
		wdb->afg->samples = wdb->samples;
		wdb->afg->samples_size = wdb->sample_freq;
	}
	
	if (DEBUG) {
		fprintf(stderr, "WaveDrawBox_refresh> Final: %s\n", WaveDrawBox_toString(wdb));
		fprintf(stderr, "WaveDrawBox_refresh> Surface: %s\n", Static_SurfaceToString(widget->surf));
	}
	
	widget->visible = true;
}

/** Current destructor (virtual) use delete() handler to call it */
static void WaveDrawBox_vdestroy(void *vthis) {
	WaveDrawBox *this = (WaveDrawBox*) vthis;
	
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p", "WaveDrawBox_vdestroy", Object_getType((Object*)vthis), vthis);
	
	/* Delete self stuff */
	free(this->points); this->points=NULL;		// delete points array
	free(this->samples); this->samples=NULL;	// delete samples array
	
	/* Delete parent object */
	Widget_destroy((Widget*)vthis);
}

WaveDrawBox* WaveDrawBox_new(WaveDrawBox *this, AudioFromGraph *afg, usint h) {
	if (! this) {
		fprintf(stderr, "WaveDrawBox_new: Passed NULL this pointer. afg=%p, h=%hu\n", afg, h);
		return NULL;
	}
	Widget *widget = &(this->widget);
	Widget_init_type(widget, WAVEDRAWBOX_TYPE, WaveDrawBox_vdestroy, type);
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "WaveDrawBox_new", Object_getType((Object*)this), this);
	widget->pos.h = h;
	widget->mevent = true;
	this->points = NULL;
	this->samples = NULL;
	this->afg = afg;
	if (afg == NULL) fprintf(stderr, "WaveDrawBox_new() ERROR AudioFromGraph object cannot be NULL\n");
	return this;
}

void WaveDrawBox_clearData(WaveDrawBox *wdb) {
	bool refresh = false;
	if (wdb->points)  {
		usint i = 0; for (; i < wdb->xrange; i++) wdb->points[i].fvalue = 0.0f;
		refresh = true;
	}
	if (wdb->samples) { memset(wdb->samples, 0, wdb->sample_freq * sizeof(float));	refresh = true; }
	
	if (refresh) WaveDrawBox_refresh(wdb);
}

