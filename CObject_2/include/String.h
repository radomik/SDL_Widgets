#ifndef CO_STRING_H
#define CO_STRING_H

#include "coObjectModel.h"

#define STRING_NPOS		((size_t)-1)

extern const coClass *String_class;
#define STRING(VTHIS) ((String*)VTHIS)

struct String {
	coObject	_super;
	
	char		*m_buffer;
	size_t		m_size;
	size_t		m_len;
};

/** Constructs empty string, with buffer initialized to "" :
 * m_buffer=null, m_size=0, m_len=0 */
String* String_new(String *this);

/** Constructs string initialized by given c string:
 * text != null
 * 		m_len=strlen(text), m_size=m_len+1, strncpy(m_buffer, text, m_size) 
 * else: default
 */
String* String_newText(String *this, const char *text);

/** Constructs empty string of given length (count of characters,
 * excluding final '\0':
 * length != null
 * 		m_len = length, m_size = m_len+1, m_buffer=calloc(m_size, sizeof(char))
 * else: default
 */
String* String_newLen(String *this, size_t length);

/** Constructs string as copy of another string
 * (shrinked in size if possible)
 * m_len = src.m_len, m_size = m_len+1, m_buffer = calloc(m_size, sizeof(char))
 * strncpy(m_buffer, src.m_buffer, m_size) */
String* String_copy(String *this, const String *src);

/** toString virtual method implementation
 * returns m_buffer const char* pointer */
inline const char* String_vtoString(const void *vthis);

/** Virtual destructor implementation */
void String_vdestroy(void *vthis);

/** Return read-only pointer to m_buffer */
inline const char* String_cstr(const String *this);

/** Return length (count of characters) */
inline size_t String_length(const String *this);

/** Return length (count of characters) */
inline size_t String_size(const String *this);

/** Return size (bytes of allocated memory) */
inline size_t String_capacity(const String *this);

/** Test if string is empty */
inline b8 String_empty(const String *this);

/** Sets String to given c string (passing NULL @param text
 * makes no changes and no errors) */
inline void String_setText(String *this, const char *str);

/** Sets String to another String */
inline void String_set(String *this, const String *str);

/** Clear content of string: put m_buffer[0] = '\0', m_len = 0 if needed */
inline void String_clear(String *this);

/** Clear content of string: memset(m_buffer, 0, m_size); m_len = 0; */
inline void String_wipe(String *this);

/** vprintf formatted string onto this->text
 * method resizes this->buffer if needed
 * _offset is position of printing relative to current text start
 * _offset can cover only characters up to and including terminating '\0'
 * Returns count of characters written, negative value on output error */
int String_vprintf(String *this, size_t _offset, const char *const format, va_list ap);

/** printf formatted string onto this->text
 * method resizes this->buffer if needed
 * _offset is position of printing relative to current text start
 * _offset can cover only characters up to and including terminating '\0'
 * Returns count of characters written, negative value on output error */
int String_printf(String *this, size_t _offset, const char *const format, ...);

/** Append cstring on the end of String,
 * 
 * @param str C string to be appended (if str is NULL or equal "", current String is not changed)
 * 
 * @return this pointer */
String* String_appendText(String *this, const char *str);

/** Append another String on the end of String, returns this pointer */
inline String* String_append(String *this, const String *str);

/** set '\0' on last occurence of @param ch character
 * return new length of string */
size_t String_cutLast(String *this, char ch);

/** sets '\0' on given index (if index >= length does nothing)
 * returns new length of string */
size_t String_cutAtIndex(String *this, size_t index);

/** Searches for last occurence of substring given by
 * @param char *text
 * @return beginning index of found substring or String::NPOS
 * if not found */
size_t String_findLastOfText(const String *this, const char *text);

/** Searches for last occurence of substring given by
 * @param const String &text
 * @return beginning index of found substring or String::NPOS
 * if not found */
inline size_t String_findLastOf(const String *this, const String *string);

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
b8 String_substr(String *this, const String *src, size_t pos, size_t len);





#endif
