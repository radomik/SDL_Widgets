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
#include "Memory.h"
#include "Static.h"
#include "Screen.h"
#include "Rectangle.h"
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
#define		RECT_COLOR2	((((u32)RECT_COLOR)<<8)|(u32)0xFF)
#define		LINE_COLOR	0x0000FFFF
#define		RECT_SIZE	12

static const void* vtable[] = {
	HistStretchGraph_vdestroy,
	Widget_vmevent,
	Widget_vdraw,
	HistStretchGraph_vrefresh,
	Widget_vdrag,
	Widget_vsetVisible
};

static coClass type = {
	.size	= sizeof(HistStretchGraph),
	.name	= "HistStretchGraph",
	.vtable	= vtable
};
const coClass *HistStretchGraph_class = &type;

const char *HistStretchGraph_toString(const HistStretchGraph *this) {
	static char str_id[160];
	if (! this) return "hsg=NULL";
	snprintf(str_id, sizeof(str_id), "HistStretchGraph: (x,y,w,h,maxx,maxy)=[%hu,%hu,%hu,%hu,%hu,%hu], (ax,ay)=[%hu,%hu], (tw,th)=[%hu,%hu], size=%hu",
		WIDGET(this)->pos.x, WIDGET(this)->pos.y, WIDGET(this)->pos.w, WIDGET(this)->pos.h, WIDGET(this)->maxx, WIDGET(this)->maxy, 
		this->ax, this->ay, WIDGET(&this->labelX)->pos.w, WIDGET(&this->labelX)->pos.h, this->size);
	return str_id;
}

static u8 HistStretchGraph_refresh2(HistStretchGraph *this) {
	Widget *wt_rect;
	Widget *widget = (Widget*)this;
	u16 i = 0;
	u8 t = 1;
	u16 line[2][2];
	
	if (SDL_BlitSurface(this->bg_surf, NULL, widget->surf, NULL)) {
		fprintf(stderr, "HistStretchGraph_refresh2: SDL_BlitSurface(this->bg_surf, NULL, widget->surf, NULL) failed: %s\n", SDL_GetError());
        Widget_setVisible(widget, false);
        return 1;
	}
	
	if (! WIDGET(&this->rect[0])->visible) {
		fprintf(stderr, "HistStretchGraph_refresh2: this->rect[0] is not visible\n");
		Widget_setVisible(widget, false);
		return 4;
	}
	
	Rectangle_getCenter(&this->rect[0], &line[0][0], &line[0][1]);
	
	for (; i < this->size; i++) {
		wt_rect = WIDGET(&this->rect[i]);
		if (! wt_rect->visible) {
			fprintf(stderr, "HistStretchGraph_refresh2: this->rect[%hu] is not visible\n", i);
			Widget_setVisible(widget, false);
			return 4;
		}
		if (i != 0) {
			Rectangle_getCenter(&this->rect[i], &line[t][0], &line[t][1]); 
			t = ! t;
			thickLineColor(widget->surf, line[0][0], line[0][1], line[1][0], line[1][1], AXES_THICKNESS, RECT_COLOR2);
		}
		
		if (SDL_BlitSurface(wt_rect->surf, NULL, widget->surf, &wt_rect->pos)) {
			fprintf(stderr, "HistStretchGraph_refresh2: Failed to blit rectangle[%hu]: %s failed: %s\n", i, Widget_toString(wt_rect), SDL_GetError());
			Widget_setVisible(widget, false);
			return 5;
		}
	}
	
	Widget_setVisible(widget, true);
	return 0;
}

u8 HistStretchGraph_setCountPoints(HistStretchGraph *this, u16 size) {
	if ((size == this->size) && (this->x)) return 99;
	Rectangle *rect;
	u16 i, dx = 256 / size;
	
	this->size   = size;
	
	this->x = realloc(this->x, size * sizeof(u16));
	this->y = realloc(this->y, size * sizeof(u16));
	
	if (this->rect) {
		for (i = 0; i < this->size; i++) delete(&this->rect[i]);
	}
	
	this->rect	= realloc(this->rect, size * sizeof(Rectangle));
	
	this->x[0] = 0;					// first point
	this->x[this->size - 1] = 255;	// last  point
	
	for(i = 0; i < this->size; i++) {
		if ((i != 0) && (i != this->size-1)) // middle point
			this->x[i] = this->x[i-1] + dx;
		rect = &this->rect[i];
		this->y[i] = this->x[i];
		Rectangle_new(rect, RECT_COLOR);
		Rectangle_setCenter(rect, (this->x[i]<<1) + this->zero_x, this->zero_y - (this->y[i]<<1));
		Rectangle_setSize(rect, RECT_SIZE, RECT_SIZE);
		Widget_refresh( WIDGET(rect) );
		//fprintf(stderr, "Rectangle[%hu] = %s\n", i, Widget_toString(WIDGET(rect)));
	}
	
	u8 s;
	if ( (s = HistStretchGraph_refresh2(this)) ) {
		fprintf(stderr, "HistStretchGraph_setCountPoints: Failed to HistStretchGraph_refresh2(). Exited with code %d\n", s);
	}
	return s;
}

void HistStretchGraph_vrefresh(void *vthis) {
	HistStretchGraph	*this = HIST_STRETCH_GRAPH(vthis);
	Widget 				*widget = WIDGET(vthis);
	
	if ((! WIDGET(&this->labelX)->visible) || (! WIDGET(&this->labelY)->visible)) {
		fprintf(stderr, "HistStretchGraph_vrefresh: Failed on assertion (! WIDGET(&this->labelX)->visible) || (! WIDGET(&this->labelY)->visible)\n");
		Widget_setVisible(widget, false);
		return;
	}
	
	u16 tw = WIDGET(&this->labelX)->pos.w;
	u16 th = WIDGET(&this->labelX)->pos.h;
	
	this->ax = M2 + tw;
	this->ay = M2 + th;
	
	widget->pos.w = (this->ax << 1) + AXES_THICKNESS + GRAPH_SIZE + (tw >> 1) + P + 1;
	widget->pos.h = (this->ay << 1) + AXES_THICKNESS + GRAPH_SIZE + (th >> 1) + P + 1;
	widget->maxx = widget->pos.x + widget->pos.w - 1;
	widget->maxy = widget->pos.y + widget->pos.h - 1;
	
	if (! widget->surf) {
		widget->surf = Static_NewSurface(widget->pos.w, widget->pos.h);
		if (! widget->surf) {
			fprintf(stderr, "HistStretchGraph_vrefresh: Failed to CreateRGBSurface widget->surf: %s\n", SDL_GetError());
			Widget_setVisible(widget, false);
			return;
		}
	}
	
	if (! this->bg_surf) {
		this->bg_surf = Static_NewSurface(widget->pos.w, widget->pos.h);
		if (this->bg_surf == NULL) {
			fprintf(stderr, "HistStretchGraph_vrefresh: Failed to CreateRGBSurface this->bg_surf: %s\n", SDL_GetError());
			Widget_setVisible(widget, false);
			return;
		}
	}
	
	if (SDL_FillRect(this->bg_surf, NULL, BGCOLOR)) {
		fprintf(stderr, "HistStretchGraph_vrefresh: Failed to fill background surface (FillRect)\n");
		Widget_setVisible(widget, false);
		return;
	}
	
	u16 x1, x2, y2, y1 = this->ay + P + (th>>1) + GRAPH_SIZE;
	
	thickLineColor(this->bg_surf, this->ax, this->ay, this->ax, y1, AXES_THICKNESS, AXES_COLOR);	// y axis
	
	for (x2 = this->ax+128+6; x2 <= this->ax+512+5; x2+=128)
		vlineColor(this->bg_surf, x2, this->ay, y1, AXES2_COLOR);			// 1, 2, 3 grid x-lines
	vlineColor(this->bg_surf, this->ax+512+5, this->ay, y1, AXES2_COLOR);	// last grid x-line
	
	thickLineColor(this->bg_surf, this->ax, y1, widget->pos.w - this->ax, y1, AXES_THICKNESS, AXES_COLOR);	// x axis
	
	y1 = this->ay + P + (th>>1);
	
	
	WIDGET(&this->labelY)->pos.x = M;
	WIDGET(&this->labelY)->pos.y = y1 - (th>>1);
	
	if (SDL_BlitSurface(WIDGET(&this->labelY)->surf, NULL, this->bg_surf, &( WIDGET(&this->labelY)->pos ))) {
		fprintf(stderr, "HistStretchGraph_vrefresh: [1] SDL_BlitSurface(WIDGET(&this->labelY)->surf, NULL, this->bg_surf, &( WIDGET(&this->labelY)->pos )) failed: %s\n", SDL_GetError());
        Widget_setVisible(widget, false);
        return;
	}
	
	x1 = this->ax + AXES_THICKNESS + GRAPH_SIZE+2;
	
	//y2 = y1-128-6;
	y2 = y1+1;
	hlineColor(this->bg_surf, this->ax+2, x1, y2, AXES2_COLOR);
	thickLineColor(this->bg_surf, this->ax, y1, this->ax + M, y1, AXES_THICKNESS, AXES_COLOR);		// last y tick
	
	y1 += GRAPH_SIZE; 
	while (y2 < y1) { y2 += 128; hlineColor(this->bg_surf, this->ax+2, x1, y2, AXES2_COLOR); }
	
	
	thickLineColor(this->bg_surf, x1, y1-M, x1, y1, AXES_THICKNESS, AXES_COLOR);	// last x tick
	
	WIDGET(&this->labelX)->pos.x = x1 - (tw>>1);
	WIDGET(&this->labelX)->pos.y = y1 + M;
	
	this->zero_y = y1-5;
	this->zero_x = this->ax + AXES_THICKNESS;
	
	if (SDL_BlitSurface(WIDGET(&this->labelX)->surf, NULL, this->bg_surf, &( WIDGET(&this->labelX)->pos ))) {
		fprintf(stderr, "HistStretchGraph_refresh> [2] SDL_BlitSurface(WIDGET(&this->labelY)->surf, NULL, this->bg_surf, &( WIDGET(&this->labelY)->pos )) failed: %s\n", SDL_GetError());
        Widget_setVisible(widget, false);
        return;
	}
	
	HistStretchGraph_setCountPoints(this, this->size);
}

void HistStretchGraph_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	if (HIST_STRETCH_GRAPH(vthis)->rect) {						// Delete array of rectangles
		u16 i = 0; 
		for (; i < HIST_STRETCH_GRAPH(vthis)->size; i++) delete(&(HIST_STRETCH_GRAPH(vthis)->rect[i]));
		free(HIST_STRETCH_GRAPH(vthis)->rect); 
		HIST_STRETCH_GRAPH(vthis)->rect = NULL;
	}
	
	delete(&(HIST_STRETCH_GRAPH(vthis)->labelX));			// delete axes labels (TextBlocks)
	delete(&(HIST_STRETCH_GRAPH(vthis)->labelY));
	
	free(HIST_STRETCH_GRAPH(vthis)->x); 
	free(HIST_STRETCH_GRAPH(vthis)->y); 			// delete x, y arrays
	HIST_STRETCH_GRAPH(vthis)->x = HIST_STRETCH_GRAPH(vthis)->y = NULL;
	
	SDL_FreeSurface(HIST_STRETCH_GRAPH(vthis)->bg_surf);		// delete bg_surf (shared between every call to refresh)
	HIST_STRETCH_GRAPH(vthis)->bg_surf = NULL;					// cannot make it local or static
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

static void HistStretchGraph_mousePressed(Widget *widget, Screen *screen) {
	HistStretchGraph *this = HIST_STRETCH_GRAPH(widget);
	screen->event_handled = true;
	if (! this->rect) {
		fprintf(stderr, "HistStretchGraph_mousePressed: Error this->rect array of Rectangles is NULL\n");
		return;
	}
	u16 relx = screen->event.button.x - widget->pos.x;
	u16 rely = screen->event.button.y - widget->pos.y;
	
	u16 i=0;
	
	fprintf(stderr, "HistStretchGraph_mousePressed: relx=%hu, rely=%hu\n", relx, rely);
	for (; i<this->size; i++) 
		if (Rectangle_contains(&this->rect[i], relx, rely)) break;
		
	if (i != this->size) {
		u16 x;
		u16 y;
		b8 mid, drag;
		u16 stx = screen->event.button.x;
		u16 sty = screen->event.button.y;
		signed short dx, dy, dx2, dy2;
		drag = true;
		mid = ((i!=0)&&(i < this->size-1));
		Rectangle_getCenter(&this->rect[i], &x, &y);
		while (drag) {
			while (SDL_PollEvent(screen->pevent)) {
				if (screen->event.type == SDL_MOUSEMOTION) {
					dx = screen->event.motion.x - stx;
					dy = screen->event.motion.y - sty;
					
					if ((dx % 2) || (dy % 2)) continue;
					
					dx2 = dx >> 1; dy2 = dy >> 1;
					if (mid) {
						if (((dx2 < 0) && ( (this->x[i]+dx2 > this->x[i]) || (this->x[i]+dx2 < this->x[i-1]) ) ) ||
							((dx2 > 0) && (this->x[i] + dx2 > this->x[i+1])) ||
							((dy2 > 0) && ((signed short)this->y[i] - dy2 < 0)) ||
							((dy2 < 0) && (this->y[i] - dy2 > 255))
							)
							continue;
						x += dx;
						y += dy;
						this->x[i] += dx2;
						this->y[i] -= dy2;
						
						Rectangle_setCenter(&(this->rect[i]), x, y);
						HistStretchGraph_refresh2(this);
						Widget_draw(widget, screen, true);
						stx += dx;
						sty += dy;
					}
					else {
						if (((dy2 > 0) && ((signed short)this->y[i] - dy2 < 0)) ||
							((dy2 < 0) && (this->y[i] - dy2 > 255))
							)
							continue;
						y += dy;
						this->y[i] -= dy2;
						
						Rectangle_setCenter(&this->rect[i], x, y);
						HistStretchGraph_refresh2(this);
						Widget_draw(widget, screen, true);
						sty += dy;
					}
				}
				else {
					if (screen->event.type == SDL_MOUSEBUTTONUP) {
						drag = false;
						if (this->release_handler) this->release_handler(widget, screen);
						break;
					}
				}
			}
		}
	}
}

HistStretchGraph* HistStretchGraph_new(HistStretchGraph *this, TTF_Font *font, u16 size) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: font=%p, size=%u\n", __FUNCTION__, font, size);
		return NULL;
	}
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	WIDGET(this)->mevent_internal.press = HistStretchGraph_mousePressed;
	WIDGET(this)->mevent = true;
	this->rect  = NULL;
	this->bg_surf = NULL;
	this->x = NULL;
	this->y = NULL;
	this->size = size ? size : 8;
	this->release_handler = NULL;
	
	TextBlock_new(&this->labelX, "255");
	TextBlock_setFont(&this->labelX, font);
	TextBlock_setBackgroundColor(&this->labelX, 0xFFFFFF);
	TextBlock_setForegroundColor(&this->labelX, 0x000000);
	Widget_refresh(WIDGET(&this->labelX));
	TextBlock_new(&this->labelY, "255");
	TextBlock_setFont(&this->labelY, font);
	TextBlock_setBackgroundColor(&this->labelY, 0xFFFFFF);
	TextBlock_setForegroundColor(&this->labelY, 0x000000);
	Widget_refresh(WIDGET(&this->labelY));
	if ((! WIDGET(&this->labelX)->visible) || (! WIDGET(&this->labelY)->visible)) {
		fprintf(stderr, "HistStretchGraph_new: Failed on assertion ((! WIDGET(&this->labelX)->visible) || (! WIDGET(&this->labelY)->visible))\n");
		Widget_setVisible(WIDGET(this), false);
	}
	return this;
}
