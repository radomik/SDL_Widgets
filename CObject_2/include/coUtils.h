/*
 * File:   coUtils.h
 * Author: darek
 *
 * Created on 28 październik 2013, 22:07
 */

#ifndef COUTILS_H
#define	COUTILS_H

#ifdef	__cplusplus
extern "C" {
#endif
	#include "coCommon.h"
	#include "coError.h"
	
	#ifdef _WIN32
		#include <winbase.h>
		#include <windows.h>
	#elif __unix__
		#include <sys/stat.h>
		#include <unistd.h>
	#else
		#error "Operating system not supported"
	#endif

	extern const char *CO_TRUE_STR, *CO_FALSE_STR, *C_NULL_STR;

	#define coSbool(VAL) ( (VAL) ?( CO_TRUE_STR ):( CO_FALSE_STR ) )
	#define coCstr(CONST_PCHAR) ( ( CONST_PCHAR )?( CONST_PCHAR ):( CO_NULL_STR ) )

	void 		__coError(const char *fname, const void *this, const char *file, int line, const char *format, ...);
	void 		__coError2(const char *fname, const char *file, int line, const char *format, ...);

	/*#define		coError(fname, this, format, ...) __coError(#fname, this, __FILE__, __LINE__, format, ##__VA_ARGS__)
	#define		coError2(fname, format, ...) __coError2(#fname, __FILE__, __LINE__, format, ##__VA_ARGS__)*/

	b8 coFileExist(const char *path);

	/** Sleep given amount of miliseconds */
	#ifdef WIN32
	#define coSleep(MILIS) (Sleep(MILIS))
	#elif unix
	#define coSleep(MILIS) (usleep((MILIS)*1000))
	#endif

	/** get random number modulo max other than previously
	 * returned by this function */
	int coRandUnique(int max);

	/* load content of file pointed by path to newly allocated char* buffer
	 * caller have to free it after use.
	 * On success function returns pointer to buffer witch file content (binary read)
	 * On error NULL is returned and, if @param e is not NULL it is filled with error code:
	 *	CO_ERR_BAD_PATH 			- NULL or non-existing path
	 *	CO_ERR_CANNOT_OPEN_FILE		- fopen() failed
	 *	CO_ERR_CANNOT_SEEK_FILE		- fseek(file, 0, SEEK_END) failed
	 *	CO_ERR_CANNOT_GET_FILE_SIZE	- ftell() failed
	 *	CO_ERR_BAD_ALLOC			- failed to allocate buffer malloc()
	 *	CO_ERR_FILE_READ_FAILED		- read error (including incomplete content error) */
	char* coLoadFileIntoArray(const char *path, co_error *e);

	/* Grow any dynamic 1D array
	 * Parameters:
	 * e              - optional pointer to perr type variable (for error information)
	 * array          - dynamic array base pointer, when passed NULL pointer
	 *                  new array of def_size (filled with zeros) is created
	 * ext_size       - pointer to external variable with current array size
	 * new_pos        - position wanted to be covered by array
	 *                  (new_pos ought to be not less than current size of array)
	 * curr_count     - current count of valid items in array to be copied on reallocation
	 * def_size       - default size of array (allocated first time)
	 * max_size       - maximal size of array
	 * item_size      - sizeof single item of array
	 * flag			  - bitwise alternative of following:
	 *					GROW_NOFLAG == 0 -- use realloc to grow array, do not
	 *										fill with zeros newly created space
	 *					GROW_REALLOC     -- same as GROW_NOFLAG
	 *					GROW_MEMSET_ZERO -- fill with zeros newly created space
	 *										only useful as GROW_REALLOC|GROW_MEMSET_ZERO
	 *										or GROW_MEMSET_ZERO
	 *					GROW_CALLOC		 -- create new array with calloc, then copy
	 *										existing items and free old array
	 *
	 * On success:
	 * Function returns pointer to newly created/reallocated array
	 * 1st parameter (if not NULL) is set to E_NO_ERROR
	 * 3rd parameter is changed to new size of array
	 * All of items up to curr_count-1 index are copied, new space is filled with zeros.
	 *
	 *
	 * On error:
	 * Third parameter (ext_size) is unchanged.
	 * Function returns NULL pointer and appropiate error is stored in first parameter (e) if it isn't NULL.
	 * Returned errors:
	 *	CO_ERR_ARRAY_GROW_INTRO_FAILED        - NULL: ext_size; new_pos below *ext_size; Equal 0: def_size or item_size
	 *	CO_ERR_ARRAY_GROW_DEF_SIZE_ABOVE_MAX  - passed def_size > max_size when *ext_size == 0
	 *	CO_ERR_ARRAY_GROW_EXCEED_MAX_SIZE     - exceed max_size or exceed size variable numeric range
	 *	CO_ERR_ARRAY_GROW_BAD_REALLOC or
         *      CO_ERR_ARRAY_GROW_BAD_CALLOC	  - failed to allocate new array
	 *  CO_ERR_ARRAY_GROW_BAD_FLAG            - flag is not valid */
	#define GROW_NOFLAG 		0x00
	#define GROW_REALLOC		0x01
	#define GROW_CALLOC			0x02
	#define GROW_MEMSET_ZERO	0x04
	void* coGrowArray(	co_error *e, void *array, u32 *ext_size,
							u32 new_pos, u32 curr_count,
							const u32 def_size, const u32 max_size,
							const size_t item_size, u8 flag);

	void* coResizeArray(	co_error *e, void *array, u32 *ext_size,
							u32 new_size, u32 curr_count,
							const u32 def_size, const u32 max_size,
							const size_t item_size,
							u8 flag);

	void coFill4fv(float *tab, float v0, float v1, float v2, float v3);
	void coFill3fv(float *tab, float v0, float v1, float v2);

	void coRgbaToArray(u32 rgba, u8 *v);

#ifdef	__cplusplus
}
#endif

#endif	/* COUTILS_H */

