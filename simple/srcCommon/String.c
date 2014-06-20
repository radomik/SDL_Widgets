/*
 *      String.c - this file is part of SDL_Widgets
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
#include "Static.h"
#include "String.h"
#include "Object.h"

/// static methods and private typedefs; private or virtual methods implementations
static void String_vdestroy(void *vthis) { String_destroy(STRING(vthis)); }
static void String_vclone(void *vthis, void *vsrc) { String_copy2(STRING(vthis), STRING(vsrc)); }

/// Object type info
static Type type = {
	.size      = sizeof(String),
	.name      = "String",
	.super_get = Object_gt,
	.vclone    = String_vclone,
	.vprint    = String_vprint,
	.vdestroy  = String_vdestroy
};

/// Object type info getters
const Type *String_t = &type;
const Type *String_gt() { return String_t; }

/// print only this class fields
void String_print(String *this) {
	fprintf(stderr, "String[this=%p]:\n\
\t.buffer:                 %p[%s]\n\
\t.size:                   %lu\n\
\t.len:                    %lu\n", 
this, this->buffer, String_getText(this), this->size, this->len);
}
inline void String_vprint(void *vthis)   { String_print(STRING(vthis)); Object_vprint(vthis); }

void String_destroy(String *this) {
	if (this->buffer) {
		free(this->buffer);
		this->buffer = NULL;
		this->size = this->len = 0;
	}
}

/// constructors

inline String *String_newText(char *text) {
	String *this = new(&type); if (this) String_new2Text(this, text); return this;
}
inline String *String_new() {
	String *this = new(&type); if (this) String_new2(this); return this;
}
inline String *String_newLen(size_t len) {
	String *this = new(&type); if (this) String_new2Len(this, len); return this;
}
inline String *String_copy(String *src) {
	String *this = new(&type); if (this) String_copy2(this, src); return this;
}

void String_new2Text(String *this, char *text) {
	/** Initialize super class with choosen super constructor **/
	Object_new2(OBJECT(this));
	
	/** Do common initialization of current class **/
	if (text) String_setText(this, text);
}



inline void String_new2(String *this) {
	Object_new2(OBJECT(this));
}

void String_new2Len(String *this, size_t len) {
	Object_new2(OBJECT(this));
	
	if (len) {
		size_t new_len = len++;
		if (this->buffer = calloc(len, sizeof(char))) {
			this->size = len;
			this->len  = new_len;
		}
	}
}

void String_copy2(String *this, String *src) {
	Object_new2(OBJECT(this));
	
	this->size = src->size;
	this->len  = src->len;
	if (src->buffer) {
		this->buffer = malloc(this->size);
		if (this->buffer) strncpy(this->buffer, src->buffer, this->size);
	}
}

/// public objective and static methods

inline const char *String_getText(String *this) {
	return ((this) ? ((this->buffer) ? ((const char*)this->buffer) : "") : ("(null string)"));
}

inline size_t String_getLen(String *this) {
	return ((this) ? (this->len) : 0);
}

static inline void String_setTextLen(String *this, char *text, size_t text_len) {
	if (text_len >= this->size) {
		size_t new_len = text_len++;
		// text_len == new_len + 1 == new_size
		char  *new_buf = malloc(text_len);
		
		if (new_buf) {
			if (this->buffer) free(this->buffer);
			this->buffer = new_buf;
			this->size   = text_len;
			this->len    = new_len;
		}
		else {
			fprintf(stderr, "String_setTextLen[this=%p]: Failed to allocate new buffer of size %lu for text %s.\n",
				this, text_len, text);
			return;
		}
	}
	else {
		this->len = text_len;
	}
	strncpy(this->buffer, text, this->size);
}

void String_setText(String *this, char *text) {
	if (text) {
		size_t text_len = strlen(text);
		String_setTextLen(this, text, text_len);
	}
}

void String_setString(String *this, String *src) {
	if (src) {
		if (src->buffer) {
			String_setTextLen(this, src->buffer, src->len);
		}
		else {
			String_setTextLen(this, "", 0);
		}
	}
}

// vprintf formatted string onto this->text
// method resizes this->buffer if needed
// _offset is position of printing relative to current text start
// _offset can cover only characters up to and including terminating '\0'
int String_vprintf(String *this, size_t _offset, const char *format, va_list ap) {
	if (_offset > this->len) return 0; // if first byte of write lays after '\0'
	va_list ap2;
	size_t 	size;
	char 	*str;
	int		ret_val;
	va_copy(ap2, ap);
	
	if (this->buffer) {
		str  = this->buffer + _offset;	//X+11
		size = this->size   - _offset;  //12-11 = 1
	}
	else {
		str  = this->buffer;
		size = 0;
	}
	
	//fprintf(stderr, "String_printf: [1] @offset=%lu, @format=%s, .buffer=%p[%s], .size=%lu, .len=%lu, str=%p, size=%lu\n",
	//	_offset, format, this->buffer, CSTR(this->buffer), this->size, this->len, str, size);
	
	//va_start(ap, format);
//Rotate left 5.0
	//fprintf(stderr, "FIRST [0] vsprintf str[%p][%s], size[%lu]\n", str, str, size);
	ret_val = vsnprintf(str, size, format, ap);
	//fprintf(stderr, "FIRST [1] vsprintf str[%p][%s], size[%lu], ret_val[%d]\n", str, str, size, ret_val);
	//va_end(ap);
	//4, size = 4 + 11 = 15, .size=12
	if ((ret_val > 0) && ((size = ret_val+_offset) >= this->size)) { // here size is length of final string
		size++; // here size is size of final string //16
		
		//fprintf(stderr, "String_printf: New size: %lu\n", size);
		str = realloc(this->buffer, size);
		if (str) {
			//fprintf(stderr, "Allocated new buffer[%p] of size %lu\n", str, size);
			this->size = size;
			this->buffer = str;
			this->len  = size-1;
			
			size -= _offset;
			str  += _offset;
			//fprintf(stderr, "for new print str=%p[%s], size=%lu\n", str, str, size);
			
			//va_start(ap, format);
			ret_val = vsnprintf(str, size, format, ap2);
			
			//va_end(ap);
		}
	}
	else
		{ if (ret_val >= 0) this->len = ret_val+_offset; }
	
	
	//fprintf(stderr, "String_printf: [2] str[%s] BUFFER[%s](len=%lu, size=%lu), ret_val=%d\n",
	//	CSTR(str), CSTR(this->buffer), this->len, this->size, ret_val);
	
	return ret_val;
}

// printf formatted string onto this->text
// method resizes this->buffer if needed
// _offset is position of printing relative to current text start
// _offset can cover only characters up to and including terminating '\0'
int String_printf(String *this, size_t _offset, const char *format, ...) {
	if (_offset > this->len) return 0; // if first byte of write lays after '\0'
	va_list ap;
	int		ret_val;
	va_start(ap, format);
	ret_val = String_vprintf(this, _offset, format, ap);
	va_end(ap);
	return ret_val;
}

void String_appendText(String *this, char *text) {
	if ((! text) || (text[0] == '\0')) return;
	size_t new_len = this->len + strlen(text);
	if (new_len >= this->size) {
		this->size = new_len+1;
		this->buffer = realloc(this->buffer, this->size);
		if (! this->buffer) {
			_error("String_appendText", this, "realloc failed.\n");
		}
	}
	strcat(this->buffer, text);
	this->len = new_len;
}

// set '\0' on last occurence of ch
// return new length of string
size_t String_cutLast(String *this, char ch) {
	if (! this->len) return 0;
	size_t i = this->len-1;
	for (; ; i--) {
		if (this->buffer[i] == ch) {
			this->buffer[i] = '\0';
			this->len = i;
			return i;
		}
		else {
			if (i == 0) return this->len;
		}
	}
}


