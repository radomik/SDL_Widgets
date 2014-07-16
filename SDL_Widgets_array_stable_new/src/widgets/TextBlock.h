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
	#include "StdDefinitions.h"
	#include "Widget.h"
	#include "String.h"
	
	extern const coClass *TextBlock_class;
	#define TEXTBLOCK(VTHIS) ((TextBlock*)VTHIS)
	
	struct TextBlock {
		Widget 		_super;			// TextBlock inherits from Widget
		String 		string;
		TTF_Font	*font;
		SDL_Color	fgcolor;
		u32			foreground;		// to set colors use setters, otherwise color wouldn't change
		u32			background;
		b8			foreground_changed : 1;
	};
	
	/// Virtual methods implementations
	void TextBlock_vrefresh(void *vthis);
	void TextBlock_vdestroy(void *vthis);
	const char *TextBlock_vtoString(const void *vthis);

	/// Constructors
	TextBlock* TextBlock_newText(TextBlock *this, const char *text);

	TextBlock* TextBlock_newString(TextBlock *this, const String *string);

	TextBlock* TextBlock_newLen(TextBlock *this, size_t length);

	TextBlock* TextBlock_copy(TextBlock *this, const TextBlock *src, b8 copy_pos);
	

	inline void TextBlock_stringCutAtIndex(TextBlock *this, size_t index);

	inline TextBlock* TextBlock_stringAppendText(TextBlock *this, const char *text);

	inline TextBlock* TextBlock_stringAppend(TextBlock *this, const String *string);

	int TextBlock_stringPrintf(TextBlock *this, size_t _offset, const char *const format, ...);

	inline int TextBlock_stringVprintf(TextBlock *this, size_t _offset, const char *const format, va_list ap);

	inline void TextBlock_stringClear(TextBlock *this);

	inline void TextBlock_stringWipe(TextBlock *this);

	/// get string for constant operations on string
	inline const String* TextBlock_getString(const TextBlock *this);
	
	inline const char* TextBlock_getText(const TextBlock *this);

	inline void TextBlock_setText(TextBlock *this, const char *text);

	inline void TextBlock_setString(TextBlock *this, const String *string);

	inline void TextBlock_setFont(TextBlock *this, TTF_Font *font);
		
	inline void TextBlock_setForegroundColor(TextBlock *this, u32 rgb);

	inline void TextBlock_setBackgroundColor(TextBlock *this, u32 rgb);

	inline void TextBlock_staticGetTextSize(TTF_Font *font, const char *text, int *w, int *h);
	
#endif
