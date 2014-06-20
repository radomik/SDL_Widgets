/*		[text on one color background, no paddings nor border, more lightweight than Label]
 *      TextBlock.h - this file is part of SDL_Widgets
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

#ifndef _TextBlock_h_
	#define _TextBlock_h_
	#include "../srcCommon/StdDefinitions.h"
	#include "../srcCommon/Types.h"
	#include "Widget.h"
	
	extern const Type *TextBlock_t;
	inline const Type *TextBlock_gt(); // getter for TextBlock_t
	
	struct TextBlock {
		Widget		widget;
		String		*string;	// String composed dynamic object
		Font		*font;		// read-only pointer to existing font object
		SDL_Surface	*text_surf;	// private only text surface
		SDL_Color	_fgcolor;	// private
		uint		fgcolor;		// read-only, to set colors use setters, otherwise color wouldn't change
		uint		bgcolor;		// read-only
		bool		fgcolor_changed;// private
	};
	
	// constructors
	inline TextBlock*	TextBlock_new();
	inline TextBlock* 	TextBlock_newText(char *text);
	inline TextBlock*	TextBlock_newString(String *string);
	inline TextBlock*	TextBlock_copy(TextBlock *src);
	
	// constructors and destructor used by inheriting classes 
	void TextBlock_new2(TextBlock *this);
	void TextBlock_new2Text(TextBlock *this, char *text);
	void TextBlock_new2String(TextBlock *this, String *string);
	void TextBlock_copy2(TextBlock *this, TextBlock *src);
	void TextBlock_destroy(TextBlock *this);
	
	/// get string.text or string from TextBlock
	inline const char*	TextBlock_getText(TextBlock *this);
	inline String*		TextBlock_getString(TextBlock *this);
	
	/// get string length
	inline size_t TextBlock_getStringLen(TextBlock *this);

	/// set text of TextBlock using c-string or String
	inline void TextBlock_setText(TextBlock *this, char *text);
	inline void TextBlock_setString(TextBlock *this, String *string);
	
	/// set font of TextBlock to existing Font object pointer
	/// @param font is copied in method so it have to be deleted
	/// after call to _setFont
	inline void TextBlock_setFont(TextBlock *this, Font *font);
	
	/// set current font style (font styles are definied in Font.h)
	inline void TextBlock_setFontStyle(TextBlock *this, usint font_style);
	
	/// set background and foreground color of TextBlock
	void 		TextBlock_setBgColor(TextBlock *this, uint bgcolor);
	inline void TextBlock_setFgColor(TextBlock *this, uint fgcolor);
	
	/// print formatted string onto TextBlock.string
	int 		TextBlock_printf(TextBlock *this, size_t _offset, const char *format, ...);
	inline int 	TextBlock_vprintf(TextBlock *this, size_t _offset, const char *format, va_list ap);
	
	/// print fields of TextBlock object and all of its superclasses
	inline void	TextBlock_print(TextBlock *this);
#endif
