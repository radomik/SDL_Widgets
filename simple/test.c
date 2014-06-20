#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

//#define DEF
static const char *null_str = "(null)";
#define CSTR(CONST_PCHAR) ((CONST_PCHAR) ? (CONST_PCHAR) : (null_str))

typedef unsigned int uint;
typedef uint perr;
#define E_NO_ERROR	0
#define	E_ARRAY_GROW_INTRO_FAILED 1
#define E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX 2
#define E_ARRAY_GROW_EXCEED_MAX_SIZE 3
#define E_ARRAY_GROW_BAD_ALLOC 4

// Grow any dynamic 1D array
// Parameters:
// e              - optional pointer to perr type variable (for error information)
// array          - dynamic array base pointer, when passed NULL pointer
//                  new array of def_size (filled with zeros) is created
// ext_size       - pointer to external variable with current array size
// new_pos        - position wanted to be covered by array 
//                  (new_pos ought to be not less than current size of array)
// curr_count     - current count of valid items in array to be copied on reallocation
// def_size       - default size of array (allocated first time)
// max_size       - maximal size of array
// item_size      - sizeof single item of array
//
// On success:
// Function returns pointer to newly created/reallocated array
// 1st parameter (if not NULL) is set to E_NO_ERROR
// 3rd parameter is changed to new size of array
// All of items up to curr_count-1 index are copied, new space is filled with zeros.
// 
// 
// On error:
// Third parameter (ext_size) is unchanged.
// Function returns NULL pointer and appropiate error is stored in first parameter (e) if it isn't NULL.
// Returned errors:
//	E_ARRAY_GROW_INTRO_FAILED        - NULL: ext_size; new_pos below *ext_size; Equal 0: def_size or item_size
//	E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX  - passed def_size > max_size when *ext_size == 0
//	E_ARRAY_GROW_EXCEED_MAX_SIZE     - exceed max_size or exceed size variable numeric range
//	E_ARRAY_GROW_BAD_ALLOC           - failed to allocate new array

void* Static_growArray(	perr *e, void *array, uint *ext_size, 
						uint new_pos, uint curr_count,
						const uint def_size, const uint max_size,
						const size_t item_size) {
	/* Performs some sanity checks */
	if ((! ext_size) 			||			// passed NULL pointer to array size external variable
		(new_pos < *ext_size) 	||			// new position is already covered by current array size
		(! def_size) 			||			// default size of array cannot be 0
		(! item_size))						// single array item size cannot be 0
	{
		if (e) *e = E_ARRAY_GROW_INTRO_FAILED;
		return NULL;
	}
	uint new_size  = *ext_size;				// local: new size of array = current size
	uint prev_size = *ext_size;				// local: previous size of array = current size
	uint i;
	
	/* Calculate new size of array */
	while (new_size <= new_pos)	{			// increase new_size until it covers new_pos
		if (new_size == 0) {				// new_size==0 (first grow) -->new_size = def_size
			if (def_size > max_size) 		// default size greater than maximum size
			{
				if (e) *e = E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX;
				return NULL;
			}
			new_size = def_size;			// new_size = def_size
		}
		else {								// new_size != 0
			i = new_size;					// store current new_size
			new_size <<= 1;					// multiply new_size by 2
			if ((i >= new_size) || 			// 1. overflow of new_size number variable type, or
				(new_size <= prev_size) ||	// 2. new_size IS NOT greater than previous size, or
					(new_size > max_size)) 	// 3. new_size exceeds maximium size, then
						{
							if (e) *e = E_ARRAY_GROW_EXCEED_MAX_SIZE;
							return NULL;
						}
		}
	}
	
	/* Allocate new array of new_size and item_size*/
	void *_array = calloc(new_size, item_size);
	if (! _array) 
	{
		if (e) *e = E_ARRAY_GROW_BAD_ALLOC;
		return NULL;
	}
	
	/* Copy previous items if such exists */
	if ((curr_count) && (array)) {							// if there are any items in old array, 
		memcpy(_array, array, (curr_count) * item_size);	// rewrite them to new array and 
		free(array);										// delete old array
	}
	
	/* Assign new array size and error info */
	*ext_size = new_size;
	if (e) *e = E_NO_ERROR;
	
	/* Return newly created array pointer */
	return _array;
}

void pr() {
	#ifdef DEF
	printf("Defined\n");
	#else
	printf("Not definied.\n");
	#endif
}

typedef struct String String;
struct String {
	char 	*buffer;
	size_t	size;
	size_t	len;
};

const char *String_getText(String *this) {
	return ((this->buffer) ? ((const char*)this->buffer) : "");
}

void String_setText(String *this, char *text) {
	if (text) {
		size_t text_len = strlen(text);
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
				fprintf(stderr, "String_setText[this=%p]: Failed to allocate new buffer of size %lu for text %s.\n",
					this, text_len, text);
				return;
			}
		}
		else {
			this->len = text_len;
		}
		strncpy(this->buffer, text, this->size);
	}
}

static void String_destroy(String *this) {
	if (this->buffer) {
		memset(this, 0, sizeof(String));
	}
}

String *String_newText(String *this, char *text) {
	if (! this) {
		fprintf(stderr, "String_newText: Passed NULL this pointer, text=%s\n", CSTR(text));
		return this;
	}
	//Object_init_type(OBJECT(this), String_t, String_vdestroy);
	if (text) String_setText(this, text);
	
	return this;
}

String *String_newLen(String *this, size_t len) {
	if (! this) {
		fprintf(stderr, "String_newText: Passed NULL this pointer, len=%lu\n", len);
		return this;
	}
	//Object_init_type(OBJECT(this), String_t, String_vdestroy);
	if (len) {
		size_t new_len = len++;
		if (this->buffer = calloc(len, sizeof(char))) {
			this->size = len;
			this->len  = new_len;
		}
	}
	
	return this;
}

String *String_new(String *this) {
	if (! this) {
		fprintf(stderr, "String_newText: Passed NULL this pointer\n");
		return this;
	}
	//Object_init_type(OBJECT(this), String_t, String_vdestroy);
	return this;
}

String *String_copy(String *this, String *src) {
	if (! this) {
		fprintf(stderr, "String_copy: Passed NULL this pointer, src=%p[%s]\n", src, (src)?(String_getText(src)):(null_str));
		return this;
	}
	//Object_init_copy(OBJECT(this), (Object*)src, String_t, String_vdestroy);
	if (! src) {
		fprintf(stderr, "String_copy[this=%p]: Passed NULL src pointer\n", this);
		return this;
	}
	this->size = src->size;
	this->len  = src->len;
	if (src->buffer) {
		this->buffer = malloc(this->size);
		if (this->buffer) strncpy(this->buffer, src->buffer, this->size);
	}
	
	return this;
}

inline String* String_new2() { return String_new(malloc(sizeof(String))); }
inline String* String_new2Text(char *text) { return String_newText(malloc(sizeof(String)), text); }
inline String* String_new2Len(size_t len) { return String_newLen(malloc(sizeof(String)), len); }
inline String* String_copy2(String *src) { return String_copy(malloc(sizeof(String)), src); }

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
		str  = this->buffer + _offset;
		size = this->size   - _offset;
	}
	else {
		str  = this->buffer;
		size = 0;
	}
	
	//fprintf(stderr, "String_printf: [1] @offset=%lu, @format=%s, .buffer=%p[%s], .size=%lu, .len=%lu, str=%p, size=%lu\n",
	//	_offset, format, this->buffer, CSTR(this->buffer), this->size, this->len, str, size);
	
	//va_start(ap, format);
	
	//fprintf(stderr, "FIRST [0] vsprintf str[%p][%s], size[%lu]\n", str, str, size);
	ret_val = vsnprintf(str, size, format, ap);
	//fprintf(stderr, "FIRST [1] vsprintf str[%p][%s], size[%lu], ret_val[%d]\n", str, str, size, ret_val);
	//va_end(ap);
	
	if ((ret_val > 0) && ((size = ret_val+_offset) >= this->size)) {
		size++;
		
		//fprintf(stderr, "String_printf: New size: %lu\n", size);
		str = realloc(this->buffer, size);
		if (str) {
			//fprintf(stderr, "Allocated new buffer[%p] of size %lu\n", str, size);
			this->size = size;
			this->buffer = str;
			
			size -= _offset;
			str  += _offset;
			//fprintf(stderr, "for new print str=%p[%s], size=%lu\n", str, str, size);
			
			//va_start(ap, format);
			ret_val = vsnprintf(str, size, format, ap2);
			//va_end(ap);
		}
	}
	
	
	
	//fprintf(stderr, "String_printf: [2] str[%s], ret_val=%d\n",
	//	CSTR(str), ret_val);
	
	return ret_val;
}

// printf formatted string onto this->text
// method resizes this->buffer if needed
// _offset is position of printing relative to current text start
// _offset can cover only characters up to and including terminating '\0'
int String_printf(String *this, size_t _offset, const char *format, ...) {
	fprintf(stderr, "String_printf[this=%p]1\n", this);
	if (_offset > this->len) return 0; // if first byte of write lays after '\0'
	fprintf(stderr, "String_printf[this=%p]2\n", this);
	va_list ap;
	fprintf(stderr, "String_printf[this=%p]3\n", this);
	int		ret_val;
	fprintf(stderr, "String_printf[this=%p]4\n", this);
	va_start(ap, format);
	fprintf(stderr, "String_printf[this=%p]5\n", this);
	ret_val = String_vprintf(this, _offset, format, ap);
	fprintf(stderr, "String_printf[this=%p]6\n", this);
	va_end(ap);
	fprintf(stderr, "String_printf[this=%p]7\n", this);
	return ret_val;
}

struct Type {
	struct Type		*super;
	void			(*vprint)(void *vthis);		
	void			(*vdestroy)(void *vthis);
	const char 		*name;
	size_t	size;
	void			*inited; // works as boolean
};

static struct Type type = {
	.super = NULL,
	.vprint = NULL,
	.vdestroy = NULL,
	.name = "any",
	.size = 1
};
typedef unsigned short usint;
struct Spacing {
	usint 	top, left, bottom, right;
};

int main() {
	struct Type t;
	struct Type *tp = &t;
	struct Spacing s1 = {
		1, 2, 3, 4
	};
	struct Spacing s2 = {
		1, 2, 3, 4
	};
	//fprintf(stderr, "s1 == s2 [%d]\n", s1 == s2); // error: invalid operands to binary == (have ‘struct Spacing’ and ‘struct Spacing’)

	
	tp->size = sizeof(int);
	fprintf(stderr, "sizeof(struct Type)=%lu\n", sizeof(struct Type));
	fprintf(stderr, "type.inited = %p, type.size = %lu, type.name=%s\n", type.inited, type.size, type.name);
	String *str = String_new2Text("ABC");
	printf("[START] str = %s\n", String_getText(str));
	String_printf(str, 1, "XYZ_%d", 23);
	printf("[END  ] str = %s\n", String_getText(str));
	String_destroy(str);
	free(str);
}
