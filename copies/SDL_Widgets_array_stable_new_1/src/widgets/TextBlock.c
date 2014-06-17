/*		[text on one color background, no paddings nor border, more lightweight than Label]
 *      TextBlock.c - this file is part of SDL_Widgets
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
#include "Object.h"
#include "Memory.h"
#include "TextBlock.h"
#include "Widget.h"

static const char *type = "TextBlock";

void TextBlock_refresh(TextBlock *text_block) {
	if ((! text_block->text) || (! text_block->font)) { ((Widget*)text_block)->visible = false; return; }
	
	Widget 			*widget = (Widget*) text_block;
	SDL_Surface		*bg_surf    = widget->surf, // background surface initialize with existing(?) surface
					*text_surf  = NULL;			// temporary text surface
	int 			w=0, h=0;
	int 			et = TTF_SizeUTF8(text_block->font, text_block->text, &w, &h);
	if ((et == -1) || (w <= 0) || (h <= 0) || (w > 3000) || (h > 3000)) {
		fprintf(stderr, "TextBlock_refresh[%s] Failed to determine font size or invalid size (exit_code=%d, w=%d, h=%d)\n", text_block->text, et, w, h);
		widget->visible = false;
		return;
	}
	
	//SDL_Rect	bgr = { 0, 0, (usint)w, (usint)h };		// SDL blitting rectangle
	
	/* Create surface if needed */
	if ((bg_surf) && (bg_surf->w >= w) && (bg_surf->h >= h)) {
		/*fprintf(stderr, "TextBlock_refresh[%s] Notice: Surface already exists. Does not creating new one.\n", text_block->text);*/
	}
	else {
		SDL_FreeSurface(bg_surf); // free current surface (safe to pass NULL)
		bg_surf = Static_NewSurface((usint)w, (usint)h);
		if (! bg_surf) {
			fprintf(stderr, "TextBlock_refresh[%s] CreateRGBSurface (bg_surf) failed: %s\n", text_block->text, SDL_GetError());
			widget->visible = false;
			return;
		}
	}
	
	
	//fprintf(stderr, "TextBlock_refresh:TextBlock>> bg_surf{w,h}=(%hu,%hu) color=%X[r=%X,g=%X,b=%X]\n", bg_surf->w, bg_surf->h, Static_rgbFromColor(text_block->background), text_block->background.r, text_block->background.g, text_block->background.b);
	if (SDL_FillRect(bg_surf, NULL, text_block->background)) {
		fprintf(stderr, "TextBlock_refresh[%s] Failed to fill background surface (FillRect): %s\n", text_block->text, SDL_GetError());
	}
	
	/* Convert foreground RGB color (uint) to SDL_Color if needed */
	if (text_block->foreground_changed) {
		Static_getColorFromRGB(text_block->fgcolor, text_block->foreground, Screen_getBaseSurfaceFormat());
		text_block->foreground_changed = false;
	}
	
    if (! (text_surf = TTF_RenderUTF8_Solid(text_block->font, text_block->text, text_block->fgcolor))) {
		fprintf(stderr, "TextBlock_refresh[%s] TTF_RenderUTF8_Solid (text_surf) failed [%s]\n", text_block->text, TTF_GetError());
	}
	
	if (SDL_BlitSurface(text_surf, NULL, bg_surf, NULL)) {
		fprintf(stderr, "TextBlock_refresh[%s] SDL_BlitSurface(bg_surf, NULL, text_surf, NULL) failed: %s\n", text_block->text, SDL_GetError());
	}
	
	widget->surf = bg_surf;
	Widget_setSizeUpdatePos(widget, w, h);
	Widget_setVisible(widget, true);
	SDL_FreeSurface(text_surf);		// delete temporary text surface
}


perr TextBlock_refresh2(TextBlock *text_block, Screen *screen) {
	/* Check parameters */
	if ((! text_block) || (! screen) || (! text_block->text) || (! text_block->font)) { 
		fprintf(stderr, "TextBlock_refresh[%s] Passed NULL parameter: text_block(%p), or screen(%p), or text_block->text(%p) or text_block->font(%p)\n",
			(text_block)?text_block->text:NULL, text_block, screen, (text_block)?text_block->text:NULL, (text_block)?text_block->font:NULL);
		if (text_block) Widget_setVisible(&(text_block->widget), false);
		return E_INTRO_FAILED; 
	}
	Widget 			*widget = &(text_block->widget);	// parent class Widget object
	SDL_PixelFormat	*scr_format = (screen->screen) ? (screen->screen->format) : NULL;	// screen format
	SDL_Surface		*bg_surf    = widget->surf, // background surface initialize with existing(?) surface
					*text_surf  = NULL;			// temporary text surface
	
	if (! scr_format) {							// if screen format is a NULL pointer
		fprintf(stderr, "TextBlock_refresh[%s] Got NULL screen->screen->format (note: screen->screen is %p)\n", text_block->text, screen->screen);
		Widget_setVisible(&(text_block->widget), false);
		return E_SURFACE_FORMAT_NULL; 
	}
	
	/* Determine size of text */
	int w=0, h=0;
	int et = TTF_SizeUTF8(text_block->font, text_block->text, &w, &h);
	if ((et < 0) || (w <= 0) || (h <= 0) || (w > 3000) || (h > 3000)) {
		fprintf(stderr, "TextBlock_refresh[%s] Failed to determine font size or invalid size (exit_code=%d[%s], w=%d, h=%d)\n", text_block->text, et, TTF_GetError(), w, h);
		Widget_setVisible(widget, false);
		return E_SDL__TTF_SizeUTF8;
	}
	
	//SDL_Rect	bgr = { 0, 0, (usint)w, (usint)h };		// SDL blitting rectangle
	
	/* Create surface if needed */
	if ((bg_surf) && (bg_surf->w >= w) && (bg_surf->h >= h)) {
		fprintf(stderr, "TextBlock_refresh[%s] Notice: Surface already exists. Does not creating new one.\n", text_block->text);
	}
	else {
		SDL_FreeSurface(bg_surf); // free current surface (safe to pass NULL)
		bg_surf = Static_NewSurface((usint)w, (usint)h);
		if (! bg_surf) {
			fprintf(stderr, "TextBlock_refresh[%s] CreateRGBSurface (bg_surf) failed: %s\n", text_block->text, SDL_GetError());
			Widget_setVisible(widget, false);
			return E_SDL__CreateRGBSurface;
		}
	}
	
	/* Fill newly created or old (not smaller) surface with background color */
	if (SDL_FillRect(bg_surf, NULL, text_block->background)) {
		fprintf(stderr, "TextBlock_refresh[%s] Failed to fill background surface (FillRect): %s\n", text_block->text, SDL_GetError());
		Widget_setVisible(widget, false);
		return E_SDL__FillRect;
	}
	
	/* Convert foreground RGB color (uint) to SDL_Color if needed */
	if (text_block->foreground_changed) {
		Static_getColorFromRGB(text_block->fgcolor, text_block->foreground, scr_format);
		text_block->foreground_changed = false;
	}
	
	/* Create temporary surface with text rendered onto it */
	if (! (text_surf = TTF_RenderUTF8_Solid(text_block->font, text_block->text, text_block->fgcolor))) {
		fprintf(stderr, "TextBlock_refresh[%s] TTF_RenderUTF8_Solid (text_surf) failed [%s]\n", text_block->text, TTF_GetError());
		Widget_setVisible(widget, false);
		return E_SDL__TTF_RenderUTF8_Solid;
	}
	
	/* Blit text surface onto background surface */
	if (SDL_BlitSurface(text_surf, NULL, bg_surf, NULL)) {
		fprintf(stderr, "TextBlock_refresh[%s] SDL_BlitSurface(text_surf, NULL, bg_surf, NULL) failed: %s\n", text_block->text, SDL_GetError());
		SDL_FreeSurface(text_surf);
		Widget_setVisible(widget, false);
		return E_SDL__BlitSurface;
	}
	
	widget->surf = bg_surf;
	Widget_setSizeUpdatePos(widget, w, h);
	Widget_setVisible(widget, true);
	SDL_FreeSurface(text_surf);		// delete temporary text surface
	return E_NO_ERROR;
}

/** Current destructor (virtual) use delete() handler to call it */
static void TextBlock_vdestroy(void *vthis) { 
	TextBlock *this = (TextBlock*) vthis;

	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "TextBlock_vdestroy", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	free(this->text);					// delete text char* array
	this->text=NULL;					//!		(FUTURE) replace char* with String object
	
	/*! Delete parent object !*/
	Widget_destroy((Widget*)this);
}

// Constructor
TextBlock* TextBlock_new(	TextBlock 	*this, 
							const char 	*text) {
	if (! this) {
		fprintf(stderr, "TextBlock_new: Passed NULL this pointer. text=%s\n", text);
		return NULL;
	}
	Widget_init_type((Widget*)this, TEXTBLOCK_TYPE, TextBlock_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "TextBlock_new", Object_getType((Object*)this), this);
	
	this->text 	 	 = NULL;
	
	if (text != NULL) TextBlock_setText(this, text);
	
	this->font         = Static_getDefaultFont();
	if (! this->font) {
		this->widget.visible = false;			
		fprintf(stderr, "TextBlock_new: Failed to set default font %s\n", W_DEFAULT_FONT);
		return this;
	}
	this->foreground = W_DEFAULT_FGCOLOR;
	this->background = W_DEFAULT_BGCOLOR;
	this->foreground_changed = true;
	return this;
}

void TextBlock_setText(TextBlock *text_block, const char *text) {
	usint l = strlen(text);
	usint n = (text_block->text==NULL) ? 0 : strlen(text_block->text);
	if (l <= n) {
		strcpy(text_block->text, text);
	}
	else {
		if (text_block->text) free(text_block->text);
		text_block->text = (char*) calloc(strlen(text)+1, sizeof(char));
		strcpy(text_block->text, text);
	}
}

inline void TextBlock_setFont(TextBlock *text_block, TTF_Font *font)
	{ if ((font) && (text_block)) { text_block->font = font; /*text_block->widget.need_refresh = true;*/ } }
	
inline void TextBlock_setForegroundColor(TextBlock *text_block, uint rgb)	
	{ text_block->foreground = rgb; text_block->foreground_changed = true; /*text_block->widget.need_refresh = true;*/ }

inline void TextBlock_setBackgroundColor(TextBlock *text_block, uint rgb)	
	{ text_block->background = rgb; /*text_block->widget.need_refresh = true;*/ }

static char str_id[128];
char *TextBlock_toString(TextBlock *text_block) {
	if (! text_block) return "text_block=NULL";
	snprintf(str_id, 128, "%s", text_block->text);
	return str_id;
}

inline void TextBlock_staticGetTextSize(TTF_Font *font, const char *text, int *w, int *h) { 
	TTF_SizeUTF8(font, text, w, h); 
}
