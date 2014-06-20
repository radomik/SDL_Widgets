/*      Font wrapper to SDL_ttf 
 * 
 *      Font.h - this file is part of SDL_Widgets
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
#ifndef _Font_h_
	#define _Font_h_
	#include "StdDefinitions.h"
	#include "Types.h"
	#include "Object.h"
	
	/** Public definitions and typedefs **/
	/// Font styles, font_style is a bitwise alternative of above styles
	#define FONT_NORMAL 		TTF_STYLE_NORMAL
	#define FONT_BOLD			TTF_STYLE_BOLD
	#define FONT_ITALIC			TTF_STYLE_ITALIC
	#define FONT_UNDERLINE		TTF_STYLE_UNDERLINE
	#define FONT_STRIKETHROUGH	TTF_STYLE_STRIKETHROUGH
	
	/** ####################################################### **/
	/**  					class Font 							**/
	/** Attributes: cloneable  									**/
	#define 			FONT(VTHIS) ((Font*)VTHIS)
	extern const Type  *Font_t;
	inline const Type  *Font_gt(); 		/** getter of Font_t 	**/
	struct Font {
		Object				_super;		/** extends from Object **/
		TTF_Font			*font;
		String 				*font_file;
		usint				font_size;
		usint				font_style;
	};
	/** ####################################################### **/
	
	/** constructors 											**/
	inline Font* 	Font_newPath(char *font_file, usint font_size, usint font_style);
	inline Font* 	Font_newName(char *font_name, usint font_size, usint font_style);
	inline Font* 	Font_copy(Font *src);
	
	/** initializers											**/
	void 			Font_new2Path(Font *this, char *font_file, usint font_size, usint font_style);
	void 			Font_new2Name(Font *this, char *font_name, usint font_size, usint font_style);
	void 			Font_copy2(Font *this, Font *src);
	
	/** deinitializer											**/
	void 			Font_destroy(Font *this);
	
	/** print fields of only this class							**/
	void 			Font_print(Font *this);
	
	/** print fields of this class and all of its super-classes **/
	inline void 	Font_vprint(void *vthis);
	
	
	/** public objective and static methods						**/
	
	/// get default font
	/// need to be deleted after usage
	Font *Font_getDefaultFont();
	
	/// closes default font (called by Static_quit()
	inline void Font_quit();
	
	/// Set style of given font using bitwise alternative of above styles defines
	inline void Font_setStyle(Font *this, usint font_style);
	
	/// Get this->font or call to Font_getDefaultFont() if this->font==NULL
	inline TTF_Font* Font_getTTF(Font *this);
	
	/// Get filename of current font (this can be NULL)
	inline const char* Font_getFileName(Font *this);
	
	/**/
#endif


