/*      Font wrapper to SDL_ttf 
 * 
 *      Font.c - this file is part of SDL_Widgets
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
#include "Types.h"
#include "Memory.h"
#include "Font.h"
#include "Object.h"
#include "Static.h"
#include "FontCache.h"
#include "String.h"

/// static methods and private typedefs; private or virtual methods implementations
static void Font_vdestroy(void *vthis) { Font_destroy(FONT(vthis)); }
static void Font_vclone(void *vthis, void *vsrc) { Font_copy2(FONT(vthis), FONT(vsrc)); }

/// Object type info
static Type type = {
	.size      = sizeof(Font),
	.name      = "Font",
	.super_get = Object_gt,
	.vclone    = Font_vclone,
	.vprint    = Font_vprint,
	.vdestroy  = Font_vdestroy
};

/// Object type info getters
const Type *Font_t = &type;
const Type *Font_gt() { return Font_t; }

/// print only this class fields
void Font_print(Font *this) {
	fprintf(stderr, "Font[this=%p]:\n\
\t.font:                   %p\n\
\t.font_file:              %p[%s]\n\
\t.font_size:              %hu\n\
\t.font_style:             0x%02X\n", 
	this, this->font, this->font_file, String_getText(this->font_file), this->font_size, this->font_style);
}
inline void Font_vprint(void *vthis) { Font_print(FONT(vthis)); Object_vprint(vthis); }

/// deinitializer
void Font_destroy(Font *this) {
	//_error("Font_destroy", this, "     .font=%p, .font_file=%p[%s]\n", 
	//	this->font, this->font_file, String_getText(this->font_file));
	if (this->font) {
		TTF_CloseFont(this->font); 
		this->font = NULL;
	}
	if (this->font_file) {
		delete(this->font_file);
		this->font_file = NULL;
	}
	
	Object_destroy(OBJECT(this));
}

/// constructors
inline Font* Font_newPath(char *font_file, usint font_size, usint font_style) {
	Font *this = new(&type); if (this) Font_new2Path(this, font_file, font_size, font_style); return this;
}
inline Font* Font_newName(char *font_name, usint font_size, usint font_style) {
	Font *this = new(&type); if (this) Font_new2Name(this, font_name, font_size, font_style); return this;
}
inline Font* Font_copy(Font *src) {
	Font *this = new(&type); if (this) Font_copy2(this, src); return this;
}
/// initializers
void Font_new2Path(Font *this, char *font_file, usint font_size, usint font_style) {
	Object_new2(OBJECT(this));
	
	if ((! font_file) || (! font_size) || (! Static_fileExist(font_file))) {
		_error("Font_new2Path", this, "Passed NULL or non-existing @param font_file[%s] or @param font_size[%hu] == 0\n",
			font_file, font_size);
		return;
	}
	
	if (! (this->font = TTF_OpenFont(font_file, font_size))) {
		_error("Font_new2Path", this, "TTF_OpenFont of @param font_file[%s] of font_size[%hu] failed with error %s.\n",
			font_file, font_size, TTF_GetError());
		return;
	}
	
	TTF_SetFontStyle(this->font, font_style);
	
	this->font_file  = String_newText(font_file);
	this->font_size  = font_size;
	this->font_style = font_style;
}

void Font_new2Name(Font *this, char *font_name, usint font_size, usint font_style) {
	Object_new2(OBJECT(this));
	
	if ((! font_name) || (! font_size)) {
		_error("Font_new2Name", this, "Passed NULL @param font_name[%s] or @param font_size[%hu] == 0\n",
			font_name, font_size);
		return;
	}
	
	// get read-only string with font path
	String *path = FontCache_getPath(font_name);
	_error("Font_new2Name", this, "name=%s, path=%s\n", font_name, String_getText(path));
	if (! path) {
		_error("Font_new2Name", this, "Failed to get path of font \"%s\"\n", font_name);
		if (! (this->font = TTF_OpenFont(W_DEFAULT_FONT, font_size))) {
			_error("Font_new2Name", this, "TTF_OpenFont W_DEFAULT_FONT[%s] of font_size[%hu] failed with error %s.\n",
				W_DEFAULT_FONT, font_size, TTF_GetError());
			return;
		}
		if (! (this->font_file = String_newText(W_DEFAULT_FONT))) {
			_error("Font_new2Name", this, "Failed to create this->font_file string object of text=%s, String_newText() returned NULL.\n",
				W_DEFAULT_FONT);
			return;
		}
	}
	else {
		if (! (this->font = TTF_OpenFont(String_getText(path), font_size))) {
			_error("Font_new2Name", this, "TTF_OpenFont of @param font_name[%s] of font_size[%hu] failed with error %s.\n",
				font_name, font_size, TTF_GetError());
			return;
		}
		this->font_file  = String_copy(path);
	}
	
	TTF_SetFontStyle(this->font, font_style);
	
	this->font_size  = font_size;
	this->font_style = font_style;
}

void Font_copy2(Font *this, Font *src) {
	Object_clone2(OBJECT(this), OBJECT(src));
	
	if (! src->font_file) {
		_error("Font_copy2", this, "Source font[%p] have .font_file=NULL\n", src);
		return; 
	}
	if (! (this->font = TTF_OpenFont(String_getText(src->font_file), src->font_size))) {
		_error("Font_copy2", this, "Failed to open font from src->font_file=%s of size src->fomnt_size=%hu\n", 
			String_getText(src->font_file), src->font_size);
		return; 
	}
	this->font_file = String_copy(src->font_file);
	Font_setStyle(this, src->font_style);
	this->font_size = src->font_size;
}

/// public objective and static methods

// need to be deleted in destination
Font *Font_getDefaultFont() {
	Font *font = Font_newPath(W_DEFAULT_FONT, W_DEFAULT_FONTSIZE, W_DEFAULT_FONTSTYLE);
	if (! font) {
		_error2("Font_getDefaultFont", "Unable to open default font. Font_new(%s, %d, %d) failed.\n",
						W_DEFAULT_FONT, W_DEFAULT_FONTSIZE, W_DEFAULT_FONTSTYLE);
	}
	
	return font;
}

inline void Font_quit() { 
	//if (DEFAULT_FONT) { delete(DEFAULT_FONT); DEFAULT_FONT = NULL; }
}

inline void Font_setStyle(Font *this, usint font_style) {
	if (this->font) {
		TTF_SetFontStyle(this->font, font_style);
		this->font_style = font_style;
	}
}
	
inline TTF_Font* Font_getTTF(Font *this) {
	TTF_Font *ttf_font = (this) ? (this->font) : NULL;
	//if ((! ttf_font) && (Font_getDefaultFont())) ttf_font = DEFAULT_FONT->font;
	return ttf_font;
}

inline const char* Font_getFileName(Font *this) {
	return ((this) ? (String_getText(this->font_file)) : ("(null font)"));
}
