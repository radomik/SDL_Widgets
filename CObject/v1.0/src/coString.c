#include "coCommon.h"
#include "coMemory.h"
#include "coUtils.h"
#include "coString.h"
#include "coObject.h"

static const void* vtable[] = {
	coString_vdestroy
};

static coClass type = {
	.size	= sizeof(coString),
	.name	= "coString",
	.vtable	= vtable
};
const coClass *coString_class = &type;

const u64 CO_STRING_NPOS = ULLONG_MAX;

static inline void coString_initDefault(coString *this) {
	this->buffer = NULL;
	this->size = this->len = 0;
}

static void coString_initLen(coString *this, size_t len) {
	if (len) {
		const size_t new_size = len+1;
		
		if (this->size < new_size) {
			this->buffer = realloc(this->buffer, new_size * sizeof(char));
			this->size = new_size;
		}
		
		if (this->buffer) {
			this->buffer[0] = '\0';
		}
		
		this->len = 0;
	}
}

static inline void coString_initCopy(coString *this, const coString *src) {
	this->size = src->size;
	this->len  = src->len;
	if (src->buffer) {
		this->buffer = malloc(this->size);
		if (this->buffer) strncpy(this->buffer, src->buffer, this->size);
	}
}

static void coString_setTextLen(coString *this, const char *text, size_t text_len) {
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
			fprintf(stderr, "coString_setTextLen[this=%p]: Failed to allocate new buffer of size %lu for text %s.\n",
				this, text_len, text);
			return;
		}
	}
	else {
		this->len = text_len;
	}
	strncpy(this->buffer, text, this->size);
}

coString *coString_new(coString *this) {
	/** Initialize super class AND class descriptor (in that order) */
	coObject_new(this);
	class_init(this, &type);

	/** Do common initialization of current class **/
	coString_initDefault(this);

	/** Return newly created this pointer **/
	return this;
}

coString *coString_newText(coString *this, const char *text) {
	/** Initialize super class AND class descriptor (in that order) */
	coObject_new(this);
	class_init(this, &type);

	/** Do common initialization of current class **/
	coString_initDefault(this);
	if (text) coString_setText(this, text);

	/** Return newly created this pointer **/
	return this;
}

coString *coString_newLen(coString *this, size_t len) {
	/** Initialize super class AND class descriptor (in that order) */
	coObject_new(this);
	class_init(this, &type);

	/** Do common initialization of current class **/
	coString_initDefault(this);
	coString_initLen(this, len);

	/** Return newly created this pointer **/
	return this;
}

coString *coString_copy(coString *this, const coString *src) {
	/** Initialize super class AND class descriptor (in that order) */
	coObject_copy(this, src);
	class_init(this, &type);

	/** Do common initialization of current class **/
	coString_initDefault(this);
	coString_initCopy(this, src);

	/** Return newly created this pointer **/
	return this;
}

void coString_vdestroy(void *this) {
	if (CO_STRING(this)->buffer) {
		free(CO_STRING(this)->buffer);
		CO_STRING(this)->buffer = NULL;
		CO_STRING(this)->size = CO_STRING(this)->len = 0;
	}

	coObject_vdestroy(this);
}

inline const char *coString_getText(const coString *this) {
	return ((this) ? ((this->buffer) ? (this->buffer) : "") : ("(null string)"));
}

inline size_t coString_getLen(const coString *this) {
	return ((this) ? (this->len) : 0);
}

void coString_setText(coString *this, const char *text) {
	if (text) {
		size_t text_len = strlen(text);
		coString_setTextLen(this, text, text_len);
	}
}

void coString_setString(coString *this, const coString *src) {
	if (src) {
		if (src->buffer) {
			coString_setTextLen(this, src->buffer, src->len);
		}
		else {
			coString_setTextLen(this, "", 0);
		}
	}
}

// vprintf formatted string onto this->text
// method resizes this->buffer if needed
// _offset is position of printing relative to current text start
// _offset can cover only characters up to and including terminating '\0'
int coString_vprintf(coString *this, size_t _offset, const char *format, va_list ap) {
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

	//fprintf(stderr, "coString_printf: [1] @offset=%lu, @format=%s, .buffer=%p[%s], .size=%lu, .len=%lu, str=%p, size=%lu\n",
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

		//fprintf(stderr, "coString_printf: New size: %lu\n", size);
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


	//fprintf(stderr, "coString_printf: [2] str[%s] BUFFER[%s](len=%lu, size=%lu), ret_val=%d\n",
	//	CSTR(str), CSTR(this->buffer), this->len, this->size, ret_val);

	return ret_val;
}

// printf formatted string onto this->text
// method resizes this->buffer if needed
// _offset is position of printing relative to current text start
// _offset can cover only characters up to and including terminating '\0'
int coString_printf(coString *this, size_t _offset, const char *format, ...) {
	if (_offset > this->len) return 0; // if first byte of write lays after '\0'
	va_list ap;
	int		ret_val;
	va_start(ap, format);
	ret_val = coString_vprintf(this, _offset, format, ap);
	va_end(ap);
	return ret_val;
}

coString* coString_append(coString *this, const char *text) {
	if ((! this) || (! text) || (text[0] == '\0')) return this;
	size_t new_len = this->len + strlen(text);
	if (new_len >= this->size) {
		char *buffer = realloc(this->buffer, new_len+1);
		if (! buffer) {
			coError(coString_append, this, "realloc failed.\n");
			return this;
		}
		else {
			this->size = new_len+1;
			this->buffer = buffer;
			strcat(this->buffer, text);
			this->len = new_len;
		}
	}
	else {
		strcat(this->buffer, text);
		this->len = new_len;
	}

	return this;
}

// sets '\0' on last occurence of ch
// return new length of string
size_t coString_cutLast(coString *this, char ch) {
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

// sets '\0' on given index (if index >= this->len does nothing)
// returns new length of string
size_t coString_cutAtIndex(coString *this, size_t index) {
	if (index < this->len) {
		this->buffer[index] = '\0';
		this->len = index;
	}
	return this->len;
}

size_t coString_findLastOf(const coString *this, const char *text) {
	if ((! this) || (! text)) return CO_STRING_NPOS;
	else {
		size_t text_len = strlen(text);
		if (! text_len) {
			if (! this->len) return 0;
			else return CO_STRING_NPOS;
		}
		else {
			if (! this->len) return CO_STRING_NPOS;
			else {
				if (text_len > this->len) return CO_STRING_NPOS;
				else {
					size_t i = this->len - text_len;
					while (true) {
						if (! strncmp(this->buffer + i, text, text_len))
							return i;
						else {
							if (i == 0) return CO_STRING_NPOS;
							else i--;
						}
					}
				}
			}
		}
	}
}


/// Generate substring
// Returns a newly constructed string object with its value initialized
// to a copy of a substring of this object.
//
// The substring is the portion of the object that starts at character
// position pos and spans len characters (or until the end of the string,
// whichever comes first).
//
/// /// Parameters
/// pos
//  Position of the first character to be copied as a substring.
//  If this is equal to the string length, the function returns an empty string.
//  If this is greater than the string length, it <<returns NULL>>
//  Note: The first character is denoted by a value of 0 (not 1).
/// len
//  Number of characters to include in the substring (if the string is shorter,
//  as many characters as possible are used).
//  A value of STRING_NPOS indicates all characters until the end of the string.
/// Return Value
/// 0 - on success
/// 1 - if (pos > this->len)
/// @note returned object should be deleted by caller using co_delete()
/// based on: http://www.cplusplus.com/reference/string/string/substr/
int coString_substr(coString *this, const coString *src, size_t pos, size_t len) {
	if (pos == src->len) { coString_cutAtIndex(this, 0); return 0; }
	else {
		if (pos > src->len) return 1;
		else { // pos < src->len
			size_t new_len;
			if (len == CO_STRING_NPOS)
				new_len = src->len - pos;
			else {
				size_t d = pos + len;
				if (d > src->len)
					new_len = len - (d - src->len);
				else
					new_len = len;
			}
			
			coString_initLen(this, new_len);
			
			if (this->buffer) {
				this->len = new_len;
				strncpy(this->buffer, src->buffer + pos, new_len * sizeof(char));
				this->buffer[new_len] = '\0';
			}

			return 0;
		}
	}
}
