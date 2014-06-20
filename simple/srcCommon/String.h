/*
 *      String.h - this file is part of SDL_Widgets
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
#ifndef _String_h_
	#define _String_h_
	#include "StdDefinitions.h"
	#include "Types.h"
	#include "Object.h"
	
	/** Public definitions and typedefs **/
	//
	
	/** ####################################################### **/
	/**  					class String 						**/
	/** Attributes: cloneable  									**/
	#define 			STRING(VTHIS) ((String*)VTHIS)
	extern const Type  *String_t;
	inline const Type  *String_gt(); 	/** getter of String_t **/
	struct String {
		Object				_super;		/** extends from Object **/
		char 				*buffer;
		size_t				size;
		size_t				len;
	};
	
	/// constructors
	
		/// construct by text
		inline String *String_newText(char *text);
	
		/// construct by empty string
		inline String *String_new();
	
		/// construct by string max length (initialized to "")
		inline String *String_newLen(size_t len);
		
		inline String *String_copy(String *src);
	
	/// initializers used by inheriting classes
	void String_new2Text(String *this, char *text);
	inline void String_new2(String *this);
	void String_new2Len(String *this, size_t len);
	void String_copy2(String *this, String *src);
	
	/// deinitializer called by inheriting classes destructors
	void String_destroy(String *this);
	
	/** print fields of only this class							**/
	void 			String_print(String *this);
	
	/** print fields of this class and all of its super-classes **/
	inline void 	String_vprint(void *vthis);
	
	
	/** public objective and static methods						**/
	
	// return read-only c-string of String
	inline const char *String_getText(String *this);
	
	// return text length
	inline size_t String_getLen(String *this);

	// set content of String to given c-string or String
	void String_setText(String *this, char *text);
	void String_setString(String *this, String *src);

	// vprintf formatted string onto this->text
	// method resizes this->buffer if needed
	// _offset is position of printing relative to current text start
	// _offset can cover only characters up to and including terminating '\0'
	int String_vprintf(String *this, size_t _offset, const char *format, va_list ap);

	// printf formatted string onto this->text
	// method resizes this->buffer if needed
	// _offset is position of printing relative to current text start
	// _offset can cover only characters up to and including terminating '\0'
	int String_printf(String *this, size_t _offset, const char *format, ...);
	
	// strcat
	void String_appendText(String *this, char *text);
	
	// set '\0' on last occurence of ch
	// return new length of string
	size_t String_cutLast(String *this, char ch);
#endif
