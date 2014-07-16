/*		[label with text (TextBlock with added border and paddings)]
 *      Label.h - this file is part of SDL_Widgets
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

#ifndef _Label_h_
	#define _Label_h_
	#include "StdDefinitions.h"
	#include "Widget.h"
	#include "TextBlock.h"
	
	extern const coClass *Label_class;
	#define LABEL(VTHIS) ((Label*)VTHIS)
	
	struct Label {
		Widget 		_super;			// Label inherits from Widget
		TextBlock 	text_block;		// composed TextBlock
		SDL_Rect	background;		// size of inner without border
		u32			border_color;
		u16 		border_width;
		u16 		padx;
		u16 		pady;
		b8 			fixed_width : 1;// fixed_width can be set ONLY after first call to Label_refresh
	}; 
	
	/// Virtual methods implementations
	void Label_vrefresh(void *vthis);

	void Label_vdestroy(void *vthis);

	const char *Label_vtoString(const void *vthis);


	/// Constructors
	Label* Label_newText(Label *this, const char *text);

	Label* Label_newString(Label *this, const String *string);

	Label* Label_newLen(Label *this, size_t length);
	
	Label* Label_copy(Label *this, const Label *src, b8 copy_pos);
	
	

	void Label_setBorder(Label *this, u16 border_width, u32 border_color);

	void Label_setPadding(Label *this, u16 padx, u16 pady);

	inline void Label_stringCutAtIndex(Label *this, size_t index);

	inline Label* Label_stringAppendText(Label *this, const char *text);

	inline Label* Label_stringAppend(Label *this, const String *string);

	int Label_stringPrintf(Label *this, size_t _offset, const char *const format, ...);

	inline int Label_stringVprintf(Label *this, size_t _offset, const char *const format, va_list ap);

	inline void Label_stringClear(Label *this);

	inline void Label_stringWipe(Label *this);

	/// get string for constant operations on string
	inline const String* Label_getString(const Label *this);

	inline const char* Label_getText(const Label *this);

	inline void Label_setText(Label *this, const char *text);

	inline void Label_setString(Label *this, const String *string);

	inline void Label_setFont(Label *this, TTF_Font *font);
		
	inline void Label_setForegroundColor(Label *this, u32 rgb);

	inline void Label_setBackgroundColor(Label *this, u32 rgb);
	
	void Label_applyDefaultStyle(	Label *this, 		u16 posx, u16 posy, 
									TTF_Font *font2, 	u16 padx, u16 pady,
									b8 fixed_width);
#endif
