#include "String.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = String_vdestroy,
	.toString = String_vtoString
};

static const void *vtable[] = {
	&override_coIObject
};

static coClass type = {
	.size	= sizeof(String),
	.name	= "String",
	.vtable	= vtable
};
const coClass *String_class = &type;

static void String_setTextLen(String *this, const char *text, size_t len) {
	if (len >= this->m_size) {
		this->m_len	   = len++;
		this->m_buffer = realloc(this->m_buffer, len);
		this->m_size   = len;
	}
	else
		this->m_len = len;
	strncpy(this->m_buffer, text, this->m_size);
}


static inline void String_appendTextLength(String *this, const char *str, size_t length) {
	this->m_len += length;
	if (this->m_len >= this->m_size) {
		this->m_size   = this->m_len + 1;
		this->m_buffer = realloc(this->m_buffer, this->m_size);
	}
	strcat(this->m_buffer, str);
}

static size_t String_findLastOfLength(const String *this, const char *text, size_t text_len) {
	if (! text) return STRING_NPOS;
	else {
		if (! text_len) { /* text == "" */
			if (! this->m_len) return 0;
			else return STRING_NPOS;
		}
		else {
			if (! this->m_len) return STRING_NPOS;
			else {
				if (text_len > this->m_len) return STRING_NPOS;
				else {
					size_t i = this->m_len - text_len;
					while (true) {
						if (! strncmp(this->m_buffer + i, text, text_len))
							return i;
						else {
							if (i == 0) return STRING_NPOS;
							else i--;
						}
					}
				}
			}
		}
	}
}


/** Constructs empty string, with buffer initialized to "" :
 * m_buffer=null, m_size=0, m_len=0 */
String* String_new(String *this) {
	coObject_new(CO_OBJECT(this));
	class_init(this, &type);
	
	/* Default fields values */
	this->m_buffer	= NULL;
	this->m_size	= 0;
	this->m_len		= 0;
	
	return this;
}

/** Constructs string initialized by given c string:
 * text != null
 * 		m_len=strlen(text), m_size=m_len+1, strncpy(m_buffer, text, m_size) 
 * else: default
 */
String* String_newText(String *this, const char *text) {
	coObject_new(CO_OBJECT(this));
	class_init(this, &type);
	
	/* Default fields values */
	if (! text) {
		this->m_buffer	= NULL;
		this->m_size	= 0;
		this->m_len		= 0;
	}
	else {
		this->m_len = strlen(text);
		this->m_size = this->m_len+1;
		this->m_buffer = malloc(this->m_size * sizeof(char));
		strncpy(this->m_buffer, text, this->m_size);
	}

	return this;
}

/** Constructs empty string of given length (count of characters,
 * excluding final '\0':
 * length != null
 * 		m_len = length, m_size = m_len+1, m_buffer=calloc(m_size, sizeof(char))
 * else: default
 */
String* String_newLen(String *this, size_t length) {
	coObject_new(CO_OBJECT(this));
	class_init(this, &type);
	
	/* Default fields values */
	if (! length) {
		this->m_buffer	= NULL;
		this->m_size	= 0;
		this->m_len		= 0;
	}
	else {
		this->m_len = length;
		this->m_size = length+1;
		this->m_buffer = malloc(this->m_size * sizeof(char));
		this->m_buffer[0] = '\0';
	}

	return this;
}

/** Constructs string as copy of another string
 * (shrinked in size if possible)
 * m_len = src.m_len, m_size = m_len+1, m_buffer = calloc(m_size, sizeof(char))
 * strncpy(m_buffer, src.m_buffer, m_size) */
String* String_copy(String *this, const String *src) {
	coObject_new(CO_OBJECT(this));
	class_init(this, &type);
	
	/* Default fields values */
	if ((! src) || (! src->m_buffer)) {
		this->m_buffer	= NULL;
		this->m_size	= 0;
		this->m_len		= 0;
	}
	else {
		this->m_len = src->m_len;
		this->m_size = src->m_len+1;
		this->m_buffer = malloc(this->m_size * sizeof(char));
		strncpy(this->m_buffer, src->m_buffer, this->m_size);
	}

	return this;
}

/** toString virtual method implementation
 * returns m_buffer const char* pointer */
inline const char* String_vtoString(const void *vthis) { 
	return String_cstr(STRING(vthis));
}

/** Virtual destructor implementation */
void String_vdestroy(void *vthis) {
	if (STRING(vthis)->m_buffer) {
		free(STRING(vthis)->m_buffer);
		STRING(vthis)->m_buffer = NULL;
	}
	STRING(vthis)->m_len = STRING(vthis)->m_size = 0;
	coObject_vdestroy(vthis);
}

/** Return read-only pointer to m_buffer */
inline const char* String_cstr(const String *this) {
	return this->m_buffer ? this->m_buffer : "";
}

/** Return length (count of characters) */
inline size_t String_length(const String *this) {
	return this->m_len;
}

/** Return length (count of characters) */
inline size_t String_size(const String *this) {
	return this->m_len;
}

/** Return size (bytes of allocated memory) */
inline size_t String_capacity(const String *this) {
	return this->m_size;
}

/** Test if string is empty */
inline b8 String_empty(const String *this) {
	return this->m_len == 0;
}

/** Sets String to given c string (passing NULL @param text
 * makes no changes and no errors) */
inline void String_setText(String *this, const char *str) {
	if ((str) && (str[0])) String_setTextLen(this, str, strlen(str));
	else String_clear(this);
}

/** Sets String to another String */
inline void String_set(String *this, const String *str) {
	if (String_empty(str)) String_clear(this);
	else String_setTextLen(this, str->m_buffer, str->m_len);
}

/** Clear content of string: put m_buffer[0] = '\0', m_len = 0 if needed */
inline void String_clear(String *this) {
	if (this->m_len) {
		this->m_len = 0;
		this->m_buffer[0] = '\0';
	}
}

/** Clear content of string: memset(m_buffer, 0, m_size); m_len = 0; */
inline void String_wipe(String *this) {
	if (this->m_size) {
		memset(this->m_buffer, 0, sizeof(char) * this->m_size);
		this->m_len = 0;
	}
}



/** vprintf formatted string onto this->text
 * method resizes this->buffer if needed
 * _offset is position of printing relative to current text start
 * _offset can cover only characters up to and including terminating '\0'
 * Returns count of characters written, negative value on output error */
int String_vprintf(String *this, size_t _offset, const char *const format, va_list ap) {
	if (_offset > this->m_len) return 0; /* if first byte of write lays after '\0' */
	else {
		va_list ap2;
		size_t 	size;
		char 	*str;
		int		ret_val;
		va_copy(ap2, ap);

		if (this->m_buffer) {
			str  = this->m_buffer + _offset;
			size = this->m_size   - _offset;
		}
		else {
			str  = this->m_buffer;
			size = 0;
		}

		ret_val = vsnprintf(str, size, format, ap);
		
		if ((ret_val > 0) && ((size = ret_val+_offset) >= this->m_size)) { /* here size is length of final string */
			size++; /* here size is size of final string */

			str = (char*)realloc(this->m_buffer, size);
			if (str) {
				this->m_size = size;
				this->m_buffer = str;
				this->m_len  = size-1;

				size -= _offset;
				str  += _offset;

				ret_val = vsnprintf(str, size, format, ap2);
			}
		}
		else
			{ if (ret_val >= 0) this->m_len = ret_val+_offset; }

		return ret_val;
	}
}

/** printf formatted string onto this->text
 * method resizes this->buffer if needed
 * _offset is position of printing relative to current text start
 * _offset can cover only characters up to and including terminating '\0'
 * Returns count of characters written, negative value on output error */
int String_printf(String *this, size_t _offset, const char *const format, ...) {
	if (_offset > this->m_len) return 0; /* if first byte of write lays after '\0' */
	else {
		va_list ap;
		int		ret_val;
		
		va_start(ap, format);
		ret_val = String_vprintf(this, _offset, format, ap);
		va_end(ap);
		return ret_val;
	}
}

/** Append cstring on the end of String,
 * 
 * @param str C string to be appended (if str is NULL or equal "", current String is not changed)
 * 
 * @return this pointer */
String* String_appendText(String *this, const char *str) {	
	if ((str) && (str[0])) {
		String_appendTextLength(this, str, strlen(str));
	}
	return this;
}

/** Append another String on the end of String, returns this pointer */
inline String* String_append(String *this, const String *str) {
	if (! String_empty(str)) {
		String_appendTextLength(this, str->m_buffer, str->m_len);
	}
	return this;
}

/** set '\0' on last occurence of @param ch character
 * return new length of string */
size_t String_cutLast(String *this, char ch) {
	if (! this->m_len) return 0;
	else {
		size_t i = this->m_len-1;
		for (; ; i--) {
			if (this->m_buffer[i] == ch) {
				this->m_buffer[i] = '\0';
				this->m_len = i;
				return i;
			}
			else {
				if (i == 0) return this->m_len;
			}
		}
	}
}

/** sets '\0' on given index (if index >= length does nothing)
 * returns new length of string */
size_t String_cutAtIndex(String *this, size_t index) {
	if (index < this->m_len) {
		this->m_buffer[index] = '\0';
		this->m_len = index;
	}
	return this->m_len;
}

/** Searches for last occurence of substring given by
 * @param char *text
 * @return beginning index of found substring or String::NPOS
 * if not found */
size_t String_findLastOfText(const String *this, const char *text) {
	return String_findLastOfLength(this, text, strlen(text));
}

/** Searches for last occurence of substring given by
 * @param const String &text
 * @return beginning index of found substring or String::NPOS
 * if not found */
inline size_t String_findLastOf(const String *this, const String *string) {
	return String_findLastOfLength(this, string->m_buffer, string->m_len);
}

/** Generate substring
 * 
 * Generate substring of _src_ and store result in _this_
 *
 * The substring is the portion of the object that starts at character
 * position pos and spans len characters (or until the end of the string,
 * whichever comes first).
 *
 *  Parameters
 *  @param this Result object (should be constructed)
 *  @param src Source object (const)
 *  @param pos
 *  Position of the first character to be copied as a substring.
 *  If this is equal to the string length, the function returns an empty string.
 *  If this is greater than the string length, it throws out_of_range
 *  Note: The first character is denoted by a value of 0 (not 1).
 *  @param len
 *  Number of characters to include in the substring (if the string is shorter,
 *  as many characters as possible are used).
 *  A value of String::NPOS indicates all characters until the end of the string.
 *  @return
 *  true - if substring was successfully generated from _src_ and stored in _this_
 *  false - if pos > src.m_len
 * 
 *  @note If pos == src.m_len then _this_ is set to empty string
 *  @note To create substring from pos to the end of string use len=STRING_NPOS
 * 
 *  based on: http://www.cplusplus.com/reference/string/string/substr/ */
b8 String_substr(String *this, const String *src, size_t pos, size_t len) {
	if (pos == src->m_len) { String_clear(this); return true; }
	else {
		if (pos > src->m_len) {
			return false;
		}
		else {
			size_t new_len;
			if (len == STRING_NPOS) {
				new_len = src->m_len - pos;
			}
			else {
				size_t d = pos + len;
				if (d > src->m_len) {
					new_len = len - (d - src->m_len);
				}
				else {
					new_len = len;
				}
			}
			
			if (this->m_size <= new_len) {
				this->m_size = new_len+1;
				this->m_buffer = realloc(this->m_buffer, this->m_size);
				if (! this->m_buffer) {
					return false;
				}
			}
			
			this->m_len = new_len;
			strncpy(this->m_buffer, src->m_buffer + pos, new_len * sizeof(char));
			this->m_buffer[new_len] = '\0';

			return true;
		}
	}
}
