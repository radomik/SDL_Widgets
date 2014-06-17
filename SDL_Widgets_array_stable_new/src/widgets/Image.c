/*		[image]
 *      Image.c - this file is part of SDL_Widgets
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
#include "Memory.h"
/*#include "file_browse_common.h"*/
#include "Image.h"
#include "Widget.h"

static const void* vtable[] = {
	Image_vdestroy,
	Widget_vmevent,
	Widget_vdraw,
	Widget_vrefresh,
	Widget_vdrag,
	Widget_vsetVisible
};

static coClass type = {
	.size	= sizeof(Image),
	.name	= "Image",
	.vtable	= vtable
};
const coClass *Image_class = &type;

//static char supported_files[][MAX_EXT_SIZE] = {"bmp", "jpg", "jpeg", "gif", "png", "tif", "tiff", "\0"};

// returns true if ext file extension (without '.') is supported by Image class
inline b8 Image_isExtSupported(const char *ext) { /*return fileOnMask(ext, &supported_files);*/ return false; }

void Image_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif

	/*! Delete self stuff !*/
	free(IMAGE(vthis)->path); IMAGE(vthis)->path = NULL;	// image char* file path
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

// Constructor
Image* Image_new(Image *this, const char *img_path, u16 minx, u16 miny) { // png, tiff, giff, jpeg
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: img_path=%s, minx=%hu, miny=%hu\n", __FUNCTION__, img_path, minx, miny);
		return NULL;
	}
	
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	this->path = NULL;
	
	if (! img_path) {
		Widget_setVisible(WIDGET(this), false);
		return this; // invisible image, still should be destroyed
	}
	
	if (! Static_fileExist(img_path)) {
		fprintf(stderr, "Image_new: File does not exist %s\n", img_path);
		Widget_setVisible(WIDGET(this), false);
		return this; // this and other errors are critical errors (but image still should be destroyed)
	} 
	
	WIDGET(this)->surf = IMG_Load(img_path);
	if (! WIDGET(this)->surf) {
		fprintf(stderr, "Image_new: IMG_Load failed with error %s [path=%s]\n", SDL_GetError(), img_path);
		Widget_setVisible(WIDGET(this), false);
		return this;
	}
	
	this->path	= strdup(img_path);
	Widget_setSize(WIDGET(this), WIDGET(this)->surf->w, WIDGET(this)->surf->h);
	Widget_setPosition(WIDGET(this), minx, miny);
	Widget_setVisible(WIDGET(this), true);
	return this;
}

// Copying constructor 
// (assuming that imgdest is only allocated or just after destroy, not constructed yet)
Image* Image_copy(Image *this, const Image *src, b8 copy_pos) {
	if ((! this) || (! src)) {
		fprintf(stderr, "Image_copy: Passed NULL: this(%p) or src(%p)\n", this, src);
		return NULL;
	}
	
	Widget_copy(WIDGET(this), WIDGET(src), copy_pos, true);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	this->path = (src->path) ? strdup(src->path) : NULL;

	return this;
}

const char *Image_toString(const Image *this) {
	static char str_id[128];
	if (! this) return "image=NULL";
	snprintf(str_id, sizeof(str_id), "%s", this->path);
	return str_id;
}
