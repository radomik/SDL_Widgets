/*
 *      HistStretchGraph.c - this file is part of SDL_Widgets
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
#include "Object.h"
#include "Memory.h"
#include "Static.h"
#include "Screen.h"
#include "Widget.h"
#include "Rectangle.h"
#include "TextBlock.h"
#include "HistStretchGraph.h"

#define		M		7
#define		M2		(2*M)
#define		P		7
#define		GRAPH_SIZE	512
#define		AXES_THICKNESS	2

#define		BGCOLOR		0xFFFFFF
#define 	AXES_COLOR	0x000000FF
#define 	AXES2_COLOR	0xB7B7B7FF
#define		RECT_COLOR	0xFF00FF
#define		RECT_COLOR2	((((uint)RECT_COLOR)<<8)|(uint)0xFF)
#define		LINE_COLOR	0x0000FFFF
#define		RECT_SIZE	12

static const char *type = "HistStretchGraph";

static char str_id[160];
char *HistStretchGraph_toString(HistStretchGraph *hsg) {
	if (! hsg) return "hsg=NULL";
	Widget *widget = (Widget*)hsg;
	snprintf(str_id, 160, "HistStretchGraph: (x,y,w,h,maxx,maxy)=[%hu,%hu,%hu,%hu,%hu,%hu], (ax,ay)=[%hu,%hu], (tw,th)=[%hu,%hu], size=%hu",
		widget->pos.x, widget->pos.y, widget->pos.w, widget->pos.h, widget->maxx, widget->maxy, hsg->ax, hsg->ay, hsg->labelX.widget.pos.w, hsg->labelX.widget.pos.h, hsg->size);
	return str_id;
}

void HistStretchGraph_setCountPoints(HistStretchGraph *hsg, usint size) {
	if ((size == hsg->size) && (hsg->x)) return;
	Rectangle *rect;
	usint i, dx = 256 / size;
	
	if (hsg->x) free(hsg->x);
	if (hsg->y) free(hsg->y);
	if (hsg->rect) {
		for (i = 0; i < hsg->size; i++) delete(&(hsg->rect[i]));
		free(hsg->rect);
	}
	
	hsg->size   = size;
	hsg->x		= calloc(size, sizeof(usint));
	hsg->y		= calloc(size, sizeof(usint));
	hsg->rect	= calloc(size, sizeof(Rectangle));
	
	hsg->x[0] = 0;					// first point
	hsg->x[hsg->size - 1] = 255;	// last  point
	
	for(i = 0; i < hsg->size; i++) {
		if ((i != 0) && (i != hsg->size-1)) // middle point
			hsg->x[i] = hsg->x[i-1] + dx;
		rect = &(hsg->rect[i]);
		hsg->y[i] = hsg->x[i];
		Rectangle_new(rect, RECT_COLOR);
		Rectangle_setCenter(rect, (hsg->x[i]<<1) + hsg->zero_x, hsg->zero_y - (hsg->y[i]<<1));
		Rectangle_setSize(rect, RECT_SIZE, RECT_SIZE);
		Rectangle_refresh(rect);
		//fprintf(stderr, "Rectangle[%hu] = %s\n", i, Widget_toString((Widget*)rect));
	}
}

uchar HistStretchGraph_refresh2(HistStretchGraph *hsg) {
	Widget *wt_rect;
	Widget *widget = (Widget*)hsg;
	usint i = 0;
	uchar t = 1;
	usint line[2][2];
	
	if (SDL_BlitSurface(hsg->bg_surf, NULL, widget->surf, NULL)) {
		fprintf(stderr, "HistStretchGraph_refresh2> SDL_BlitSurface(hsg->bg_surf, NULL, widget->surf, NULL) failed: %s\n", SDL_GetError());
        widget->visible = false;
        return 1;
	}
	
	if (! hsg->rect[0].widget.visible) {
		fprintf(stderr, "HistStretchGraph_refresh2> hsg->rect[0] is not visible\n");
		widget->visible = false;
		return 4;
	}
	
	Rectangle_getCenter(&(hsg->rect[0]), &(line[0][0]), &(line[0][1]));
	
	for (; i < hsg->size; i++) {
		wt_rect = &(hsg->rect[i].widget);
		if (! wt_rect->visible) {
			fprintf(stderr, "HistStretchGraph_refresh2> hsg->rect[%hu] is not visible\n", i);
			widget->visible = false;
			return 4;
		}
		if (i != 0) {
			Rectangle_getCenter(&(hsg->rect[i]), &(line[t][0]), &(line[t][1])); 
			t = ! t;
			thickLineColor(widget->surf, line[0][0], line[0][1], line[1][0], line[1][1], AXES_THICKNESS, RECT_COLOR2);
		}
		
		if (SDL_BlitSurface(wt_rect->surf, NULL, widget->surf, &(wt_rect->pos))) {
			fprintf(stderr, "HistStretchGraph_refresh2> Failed to blit rectangle[%hu]: %s failed: %s\n", i, Widget_toString(wt_rect), SDL_GetError());
			widget->visible = false;
			return 5;
		}
	}
	
	widget->visible = true;
	return 0;
}

void HistStretchGraph_refresh(HistStretchGraph *hsg) {
	if ((! hsg->labelX.widget.visible) || (! hsg->labelY.widget.visible)) {
		fprintf(stderr, "HistStretchGraph_refresh(): Failed on assertion ((! hsg->labelX.widget.visible) || (! hsg->labelY.widget.visible))\n");
		hsg->widget.visible = false;
		return;
	}
	
	Widget *widget = (Widget*)hsg;
	usint tw = hsg->labelX.widget.pos.w;
	usint th = hsg->labelX.widget.pos.h;
	
	hsg->ax = M2 + tw;
	hsg->ay = M2 + th;
	
	widget->pos.w = (hsg->ax << 1) + AXES_THICKNESS + GRAPH_SIZE + (tw >> 1) + P + 1;
	widget->pos.h = (hsg->ay << 1) + AXES_THICKNESS + GRAPH_SIZE + (th >> 1) + P + 1;
	widget->maxx = widget->pos.x + widget->pos.w;
	widget->maxy = widget->pos.y + widget->pos.h;
	
	if (! widget->surf) {
		widget->surf = Static_NewSurface(widget->pos.w, widget->pos.h);
		if (! widget->surf) {
			fprintf(stderr, "HistStretchGraph_refresh: Failed to CreateRGBSurface widget->surf: %s\n", SDL_GetError());
			widget->visible = false;
			return;
		}
	}
	
	if (! hsg->bg_surf) {
		hsg->bg_surf = Static_NewSurface(widget->pos.w, widget->pos.h);
		if (hsg->bg_surf == NULL) {
			fprintf(stderr, "HistStretchGraph_refresh: Failed to CreateRGBSurface hsg->bg_surf: %s\n", SDL_GetError());
			widget->visible = false;
			return;
		}
	}
	
	if (SDL_FillRect(hsg->bg_surf, NULL, BGCOLOR)) {
		fprintf(stderr, "HistStretchGraph_refresh Failed to fill background surface (FillRect)\n");
		widget->visible = false;
		return;
	}
	
	usint x1, x2, y2, y1 = hsg->ay + P + (th>>1) + GRAPH_SIZE;
	
	thickLineColor(hsg->bg_surf, hsg->ax, hsg->ay, hsg->ax, y1, AXES_THICKNESS, AXES_COLOR);	// y axis
	
	for (x2 = hsg->ax+128+6; x2 <= hsg->ax+512+5; x2+=128)
		vlineColor(hsg->bg_surf, x2, hsg->ay, y1, AXES2_COLOR);			// 1, 2, 3 grid x-lines
	vlineColor(hsg->bg_surf, hsg->ax+512+5, hsg->ay, y1, AXES2_COLOR);	// last grid x-line
	
	thickLineColor(hsg->bg_surf, hsg->ax, y1, widget->pos.w - hsg->ax, y1, AXES_THICKNESS, AXES_COLOR);	// x axis
	
	y1 = hsg->ay + P + (th>>1);
	
	
	hsg->labelY.widget.pos.x = M;
	hsg->labelY.widget.pos.y = y1 - (th>>1);
	
	if (SDL_BlitSurface(hsg->labelY.widget.surf, NULL, hsg->bg_surf, &(hsg->labelY.widget.pos))) {
		fprintf(stderr, "HistStretchGraph_refresh> [1] SDL_BlitSurface(hsg->labelX.widget.surf, NULL, hsg->bg_surf, &(hsg->labelY.widget.pos))) failed: %s\n", SDL_GetError());
        widget->visible = false;
        return;
	}
	
	x1 = hsg->ax + AXES_THICKNESS + GRAPH_SIZE+2;
	
	//y2 = y1-128-6;
	y2 = y1+1;
	hlineColor(hsg->bg_surf, hsg->ax+2, x1, y2, AXES2_COLOR);
	thickLineColor(hsg->bg_surf, hsg->ax, y1, hsg->ax + M, y1, AXES_THICKNESS, AXES_COLOR);		// last y tick
	
	y1 += GRAPH_SIZE; 
	while (y2 < y1) { y2 += 128; hlineColor(hsg->bg_surf, hsg->ax+2, x1, y2, AXES2_COLOR); }
	
	
	thickLineColor(hsg->bg_surf, x1, y1-M, x1, y1, AXES_THICKNESS, AXES_COLOR);	// last x tick
	
	hsg->labelX.widget.pos.x = x1 - (tw>>1);
	hsg->labelX.widget.pos.y = y1 + M;
	
	hsg->zero_y = y1-5;
	hsg->zero_x = hsg->ax + AXES_THICKNESS;
	
	if (SDL_BlitSurface(hsg->labelX.widget.surf, NULL, hsg->bg_surf, &(hsg->labelX.widget.pos))) {
		fprintf(stderr, "HistStretchGraph_refresh> [2] SDL_BlitSurface(hsg->labelX.widget.surf, NULL, hsg->bg_surf, &(hsg->labelX.widget.pos))) failed: %s\n", SDL_GetError());
        widget->visible = false;
        return;
	}
	
	HistStretchGraph_setCountPoints(hsg, hsg->size);
	
	
	uchar s;
	if ( (s = HistStretchGraph_refresh2(hsg)) ) {
		fprintf(stderr, "HistStretchGraph_refresh2 > Failed. Exit with code %d\n", s);
	}
}

/** Current destructor (virtual) use delete handler to call it */
static void HistStretchGraph_vdestroy(void *vthis) { 
	HistStretchGraph *this = (HistStretchGraph*)vthis;
	
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "HistStretchGraph_vdestroy", Object_getType((Object*)this), this);		
		
	/*! Delete self stuff !*/
	if (this->rect) {						// Delete array of rectangles
		usint i = 0; 
		for (; i < this->size; i++) delete(&(this->rect[i]));
		free(this->rect); 
		this->rect = NULL;
	}
	
	delete(&(this->labelX));			// delete axes labels (TextBlocks)
	delete(&(this->labelY));
	
	free(this->x); free(this->y); 			// delete x, y arrays
	this->x = this->y = NULL;
	
	SDL_FreeSurface(this->bg_surf);			// delete bg_surf (shared between every call to refresh)
	this->bg_surf = NULL;					// cannot make it local or static
	
	/*! Delete parent object !*/
	Widget_destroy((Widget*)this);
}

HistStretchGraph* HistStretchGraph_new(HistStretchGraph *this, TTF_Font *font, usint size) {
	if (! this) {
		fprintf(stderr, "HistStretchGraph_new: Passed NULL this pointer. font=%p, size=%hu\n", font, size);
		return NULL;
	}
	Widget_init_type((Widget*)this, HISTSTRETCHGRAPH_TYPE, HistStretchGraph_vdestroy, type);
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "HistStretchGraph_new", Object_getType((Object*)this), this);
	
	((Widget*)this)->mevent = true;
	this->rect  = NULL;
	this->bg_surf = NULL;
	this->x = NULL;
	this->y = NULL;
	this->size = size ? size : 8;
	this->release_handler = NULL;
	
	TextBlock_new(&(this->labelX), "255");
	TextBlock_setFont(&(this->labelX), font);
	TextBlock_setBackgroundColor(&(this->labelX), 0xFFFFFF);
	TextBlock_setForegroundColor(&(this->labelX), 0x000000);
	TextBlock_refresh(&(this->labelX));
	TextBlock_new(&(this->labelY), "255");
	TextBlock_setFont(&(this->labelY), font);
	TextBlock_setBackgroundColor(&(this->labelY), 0xFFFFFF);
	TextBlock_setForegroundColor(&(this->labelY), 0x000000);
	TextBlock_refresh(&(this->labelY));
	if ((! this->labelX.widget.visible) || (! this->labelY.widget.visible)) {
		fprintf(stderr, "HistStretchGraph_new(): Failed on assertion ((! hsg->labelX.widget.visible) || (! hsg->labelY.widget.visible))\n");
		this->widget.visible = false;
	}
	return this;
}

void HistStretchGraph_mousePressed(HistStretchGraph *hsg, Screen *screen) {
	screen->event_handled = true;
	if (! hsg->rect) {
		fprintf(stderr, "HistStretchGraph_mousePressed > Error hsg->rect array of Rectangles is NULL\n");
		return;
	}
	Widget *widget = (Widget*)hsg;
	usint relx = screen->event.button.x - widget->pos.x;
	usint rely = screen->event.button.y - widget->pos.y;
	
	usint i=0;
	
	fprintf(stderr, "HistStretchGraph_mousePressed > relx=%hu, rely=%hu\n", relx, rely);
	for (; i<hsg->size; i++) 
		if (Rectangle_contains(&(hsg->rect[i]), relx, rely)) break;
		
	if (i != hsg->size) {
		usint x;
		usint y;
		bool mid, drag;
		usint stx = screen->event.button.x;
		usint sty = screen->event.button.y;
		signed short dx, dy, dx2, dy2;
		drag = true;
		mid = ((i!=0)&&(i < hsg->size-1));
		Rectangle_getCenter(&(hsg->rect[i]), &x, &y);
		while (drag) {
			while (SDL_PollEvent(screen->pevent)) {
				if (screen->event.type == SDL_MOUSEMOTION) {
					dx = screen->event.motion.x - stx;
					dy = screen->event.motion.y - sty;
					
					if ((dx % 2) || (dy % 2)) continue;
					
					dx2 = dx >> 1; dy2 = dy >> 1;
					if (mid) {
						if (((dx2 < 0) && ( (hsg->x[i]+dx2 > hsg->x[i]) || (hsg->x[i]+dx2 < hsg->x[i-1]) ) ) ||
							((dx2 > 0) && (hsg->x[i] + dx2 > hsg->x[i+1])) ||
							((dy2 > 0) && ((signed short)hsg->y[i] - dy2 < 0)) ||
							((dy2 < 0) && (hsg->y[i] - dy2 > 255))
							)
							continue;
						x += dx;
						y += dy;
						hsg->x[i] += dx2;
						hsg->y[i] -= dy2;
						
						Rectangle_setCenter(&(hsg->rect[i]), x, y);
						HistStretchGraph_refresh2(hsg);
						Widget_draw(widget, screen, true);
						stx += dx;
						sty += dy;
					}
					else {
						if (((dy2 > 0) && ((signed short)hsg->y[i] - dy2 < 0)) ||
							((dy2 < 0) && (hsg->y[i] - dy2 > 255))
							)
							continue;
						y += dy;
						hsg->y[i] -= dy2;
						
						Rectangle_setCenter(&(hsg->rect[i]), x, y);
						HistStretchGraph_refresh2(hsg);
						Widget_draw(widget, screen, true);
						sty += dy;
					}
				}
				else {
					if (screen->event.type == SDL_MOUSEBUTTONUP) {
						drag = false;
						if (hsg->release_handler) hsg->release_handler(widget, screen);
						break;
					}
				}
			}
		}
	}
}
