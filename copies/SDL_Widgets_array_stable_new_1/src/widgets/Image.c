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
#include "Object.h"
#include "Memory.h"
/*#include "file_browse_common.h"*/
#include "Image.h"
#include "Widget.h"

static const char *type = "Image";

//static char supported_files[][MAX_EXT_SIZE] = {"bmp", "jpg", "jpeg", "gif", "png", "tif", "tiff", "\0"};

inline bool Image_isExtSupported(const char *ext) { /*return fileOnMask(ext, &supported_files);*/ return false; }

/** Current destructor (virtual) use delete handler to call it */
static void Image_vdestroy(void *vthis) {
	Image *this = (Image*) vthis;
	
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "Image_vdestroy", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	free(this->path); this->path = NULL;	// image char* file path
	
	/*! Delete parent object, upcasting !*/
	Widget_destroy((Widget*)this);
}

// Constructor
Image* Image_new(Image *this, const char *img_path, usint minx, usint miny) { // png, tiff, giff, jpeg
	if (! this) {
		fprintf(stderr, "Image_new: Passed NULL this pointer. img_path=%s, minx=%hu, miny=%hu\n", img_path, minx, miny);
		return NULL;
	}
	Widget *widget = (Widget*)this;
	Widget_init_type(widget, IMAGE_TYPE, Image_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Image_new", Object_getType((Object*)this), this);
	
	this->path = NULL;
	
	if (! img_path) {
		Widget_setVisible(widget, false);
		return this; // invisible image, still should be destroyed
	}
	
	if (! Static_fileExist(img_path)) {
		fprintf(stderr, "Image_new: File does not exist %s\n", img_path);
		Widget_setVisible(widget, false);
		return this; // this and other errors are critical errors (but image still should be destroyed)
	} 
	
	widget->surf = IMG_Load(img_path);
	if (! widget->surf) {
		fprintf(stderr, "Image_new: IMG_Load failed with error %s [path=%s]\n", SDL_GetError(), img_path);
		Widget_setVisible(widget, false);
		return this;
	}
	
	this->path	= (char*) calloc(strlen(img_path)+1, sizeof(char));
	if (this->path) strcpy(this->path, img_path);
	Widget_setSize(widget, widget->surf->w, widget->surf->h);
	Widget_setPosition(widget, minx, miny);
	Widget_setVisible(widget, true);
	return this;
}

inline void Image_scale(Image *image, double xscale, double yscale, int smooth) { 
	Widget_scale((Widget*)image, xscale, yscale, smooth); }

// Copying constructor 
// (assuming that imgdest is only allocated or just after destroy, not constructed yet)
Image* Image_copy(Image *imgdest, Image *imgsrc, bool copy_pos) {
	if ((! imgdest) || (! imgsrc)) {
		fprintf(stderr, "Image_copy: Passed NULL: imgdest(%p) or imgsrc(%p)\n", imgdest, imgsrc);
		return NULL;
	}
	Widget_copy((Widget*)imgdest, (Widget*)imgsrc, copy_pos, true);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Image_copy", Object_getType((Object*)imgdest), imgdest);

	if (imgsrc->path) {
		imgdest->path = (char*) calloc(strlen(imgsrc->path)+1, sizeof(char));
		strcpy(imgdest->path, imgsrc->path);
	}
	else
		imgdest->path = NULL;
	return imgdest;
}

inline void Image_setPosition(Image *image, usint minx, usint miny) { Widget_setPosition((Widget*)image, minx, miny); }

static char str_id[128];
char *Image_toString(Image *image) {
	if (! image) return "image=NULL";
	snprintf(str_id, 128, "%s", image->path);
	return str_id;
}
