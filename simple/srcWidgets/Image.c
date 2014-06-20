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

#include "../srcCommon/StdDefinitions.h"
#include "../srcCommon/Types.h"
#include "../srcCommon/Static.h"
#include "../srcCommon/Memory.h"
#include "Image.h"
#include "Widget.h"
static void Image_vprint(void *vthis);

static Type type = {
	.size      = sizeof(Image),
	.name      = "Image",
	.super_get = Widget_gt,
	.vprint    = Image_vprint,
	.vdestroy  = NULL
};
const Type *Image_t = &type;
const Type *Image_gt() { return Image_t; }

static void Image_vprint(void *vthis) {
	Image *this = (Image*)vthis;
	fprintf(stderr, "Image[this=%p]:\n\
\t.path:                   %p [%s]\n",
	this, this->path, CSTR(this->path));
	Widget_print(WIDGET(this));
}

inline void Image_print(Image *this) { Image_vprint(this); }

inline void Image_destroy(Image *this) { Widget_destroy(WIDGET(this)); }

// default constructor
Image* Image_new(char *img_path) {
	/** Create this pointer **/
	Image *this = new(&type);
	if (! this) { _error("Image_new", this, "new() failed. @param img_path[%s]", CSTR(img_path)); return this; }
	
	/** Do common initialization of direct super class and of current class object **/
	Image_new2(this, img_path);
	
	/** Return newly created this pointer **/
	return this;
}

/** Do common initialization of direct super class and of current class object **/
/** Constructor can be used by classes inheriting from current class           **/
/** or by self class constructor after create this pointer                     **/
inline void Image_new2(Image *this, char *img_path) {
	/** Initialize super class with choosen super constructor **/
	Widget_new2(WIDGET(this));
	
	/** Do common initialization of current class **/
	this->path = img_path;
	
	if (! img_path) {
		Widget_fsetVisible(this, false);
		return; // invisible image, still should be destroyed
	}
	
	if (! Static_fileExist(img_path)) {
		_error("Image_new2", this, "File does not exist %s\n", img_path);
		Widget_fsetInvalid(this, true);
		return; // this and other errors are critical errors (but image still should be destroyed)
	} 
	
	(WIDGET(this))->surf = IMG_Load(img_path);
	if (! (WIDGET(this))->surf) {
		_error("Image_new2", this, "IMG_Load failed with error %s [path=%s]\n", SDL_GetError(), img_path);
		return;
	}
	
	Widget_setSize(WIDGET(this), (WIDGET(this))->surf->w, (WIDGET(this))->surf->h);
	Widget_fsetNeedRefresh(this, false);
}

Image* Image_copy(Image *src) {
	if (! src) {
		_error("Image_copy", NULL, "Passed NULL @param: src pointer"); return NULL; 
	}
	Image *this = new(&type);
	if (! this) { _error("Image_copy", this, "new() failed. @param src[%p][%s]", src, CSTR(src->path)); return this; }
	
	Image_copy2(this, src);
	
	return this;
}

void Image_copy2(Image *this, Image *src) {
	/** Initialize super class with choosen super constructor **/
	Widget_copy2(WIDGET(this), (Widget*)src);
	
	/** Do common initialization of current class **/
	this->path = src->path;
}
