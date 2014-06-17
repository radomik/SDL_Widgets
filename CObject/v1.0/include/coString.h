/*
 * File:   coString.h
 * Author: darek
 *
 * Created on 29 październik 2013, 01:33
 */

#ifndef COSTRING_H
#define	COSTRING_H

#ifdef	__cplusplus
extern "C" {
#endif
	#include "coObjectModel.h"

	//
	extern const u64 CO_STRING_NPOS;

	/**** Class coString ****/
	extern const coClass *coString_class;
	#define CO_STRING(VTHIS) ((coString*)VTHIS)
	struct coString {
		coObject	_super;		// extends from coObject
		char 		*buffer;
		size_t		size;
		size_t		len;
	};
	
	/// construct by empty string
	coString *coString_new(coString *this);

	/// construct by text
	coString *coString_newText(coString *this, const char *text);

	/// construct by string max length (initialized to "")
	coString *coString_newLen(coString *this, size_t len);

	/// copy constructor
	coString *coString_copy(coString *this, const coString *src);

	/// destructor called by inheriting classes destructors
	void coString_vdestroy(void *this);

	// return read-only c-string of coString
	inline const char *coString_getText(const coString *this);

	// return text length
	inline size_t coString_getLen(const coString *this);

	// set content of coString to given c-string or coString
	void coString_setText(coString *this, const char *text);
	void coString_setString(coString *this, const coString *src);

	// vprintf formatted string onto this->text
	// method resizes this->buffer if needed
	// _offset is position of printing relative to current text start
	// _offset can cover only characters up to and including terminating '\0'
	int coString_vprintf(coString *this, size_t _offset, const char *format, va_list ap);

	// printf formatted string onto this->text
	// method resizes this->buffer if needed
	// _offset is position of printing relative to current text start
	// _offset can cover only characters up to and including terminating '\0'
	int coString_printf(coString *this, size_t _offset, const char *format, ...);

	// strcat, returns this
	coString* coString_append(coString *this, const char *text);

	// set '\0' on last occurence of ch
	// return new length of string
	size_t coString_cutLast(coString *this, char ch);

	// sets '\0' on given index (if index >= this->len does nothing)
	// returns new length of string
	size_t coString_cutAtIndex(coString *this, size_t index);

	// last occurence of char *text in string or STRING_NPOS if not found
	size_t coString_findLastOf(const coString *this, const char *text);

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
	int coString_substr(coString *this, const coString *src, size_t pos, size_t len);


#ifdef	__cplusplus
}
#endif

#endif	/* COSTRING_H */

