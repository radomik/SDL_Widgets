#include "coUtils.h"

const char *CO_TRUE_STR  = "true";
const char *CO_FALSE_STR = "false";
const char *CO_NULL_STR  = "(null)";

b8 coFileExist(const char *path) {
#ifdef _WIN32
	if (! path) return false;
	else {
		DWORD dwAttrib = GetFileAttributes((LPCTSTR)path );
		return (dwAttrib != INVALID_FILE_ATTRIBUTES);
	}
#elif __unix__
	struct stat st;
	if ((path) && (! stat(path, &st))) return true;
	else return false;
#endif
}

/**/

void __coError(const char *fname, const void *this, const char *file, int line, const char *format, ...) {
	va_list va;
	fprintf(stderr, "%s#%d,%s()[this=%p]: ", file, line, fname, this); fflush(stderr);
	va_start(va, format);
	vfprintf(stderr, format, va);
	va_end(va);
}
void __coError2(const char *fname, const char *file, int line, const char *format, ...) {
	va_list va;
	fprintf(stderr, "%s: ", fname);  fflush(stderr);
	va_start(va, format);
	vfprintf(stderr, format, va);
	va_end(va);
}

/** get random number modulo max other than previously
 * returned by this function */
int coRandUnique(int max) {
	static 	 int r2 = INT_MAX;
	register int r;
	while ((r = rand()%max) == r2);
	r2 = r;
	return r;
}

/*  load content of file pointed by path to newly allocated char* buffer
*  caller have to free it after use.
*  On success function returns pointer to buffer witch file content (binary read)
*  On error NULL is returned and, if @param e is not NULL it is filled with error code:
* 	CO_ERR_BAD_PATH 			- NULL or non-existing path
* 	CO_ERR_CANNOT_OPEN_FILE		- fopen() failed
* 	CO_ERR_CANNOT_SEEK_FILE		- fseek(file, 0, SEEK_END) failed
* 	CO_ERR_CANNOT_GET_FILE_SIZE	- ftell() failed
* 	CO_ERR_BAD_ALLOC			- failed to allocate buffer malloc()
* 	CO_ERR_FILE_READ_FAILED		- read error (including incomplete content error) */
char* coLoadFileIntoArray(const char *path, co_error *e) {
	if ((! path) || (! coFileExist(path))) {
		if (e) *e = CO_ERR_BAD_PATH;
		return NULL;
	}
	else {
		FILE *file = fopen(path, "rb");
		if (! file) {
			if (e) *e = CO_ERR_CANNOT_OPEN_FILE;
			return NULL;
		}

		if (fseek(file, 0, SEEK_END)) {
			if (e) *e = CO_ERR_CANNOT_SEEK_FILE;
			fclose(file);
			return NULL;
		}
		else {
			long len = ftell(file);
			if (len <= 0) {
				if (e) *e = CO_ERR_CANNOT_GET_FILE_SIZE;
				fclose(file);
				return NULL;
			}
			else {
				char *buf = malloc(len);
				if (! buf) {
					if (e) *e = CO_ERR_BAD_ALLOC;
					fclose(file);
					return NULL;
				}
				else {
					if (fread(buf, len, 1, file) != 1) { /* count of read elements (not bytes) */
						if (e) *e = CO_ERR_FILE_READ_FAILED;
						fclose(file);
						free(buf);
						return NULL;
					}
					else {
						fclose(file);
						return buf;
					}
				}
			}
		}
	}
}

/*  Grow any dynamic 1D array
*  Parameters:
*  e              - optional pointer to perr type variable (for error information)
*  array          - dynamic array base pointer, when passed NULL pointer
*                   new array of def_size (filled with zeros) is created
*  ext_size       - pointer to external variable with current array size
*  new_pos        - position wanted to be covered by array
*                   (new_pos ought to be not less than current size of array)
*  curr_count     - current count of valid items in array to be copied on reallocation
*  def_size       - default size of array (allocated first time)
*  max_size       - maximal size of array
*  item_size      - sizeof single item of array
*  flag			  - bitwise alternative of following:
* 					GROW_NOFLAG == 0 -- use realloc to grow array, do not
* 										fill with zeros newly created space
* 					GROW_REALLOC     -- same as GROW_NOFLAG
* 					GROW_MEMSET_ZERO -- fill with zeros newly created space
* 										only useful as GROW_REALLOC|GROW_MEMSET_ZERO
* 										or GROW_MEMSET_ZERO
* 					GROW_CALLOC		 -- create new array with calloc, then copy
* 										existing items and free old array
* 
*  On success:
*  Function returns pointer to newly created/reallocated array
*  1st parameter (if not NULL) is set to E_NO_ERROR
*  3rd parameter is changed to new size of array
*  All of items up to curr_count-1 index are copied, new space is filled with zeros.
* 
* 
*  On error:
*  Third parameter (ext_size) is unchanged.
*  Function returns NULL pointer and appropiate error is stored in first parameter (e) if it isn't NULL.
*  Returned errors:
* 	CO_ERR_ARRAY_GROW_INTRO_FAILED        - NULL: ext_size; new_pos below *ext_size; Equal 0: def_size or item_size
* 	CO_ERR_ARRAY_GROW_DEF_SIZE_ABOVE_MAX  - passed def_size > max_size when *ext_size == 0
* 	CO_ERR_ARRAY_GROW_EXCEED_MAX_SIZE     - exceed max_size or exceed size variable numeric range
* 	CO_ERR_ARRAY_GROW_BAD_REALLOC or
* 		CO_ERR_ARRAY_GROW_BAD_CALLOC	  - failed to allocate new array
*   CO_ERR_ARRAY_GROW_BAD_FLAG            - flag is not valid */
void* coGrowArray(	co_error *e, void *array, u32 *ext_size,
						u32 new_pos, u32 curr_count,
						const u32 def_size, const u32 max_size,
						const size_t item_size, u8 flag) {
	/* Performs some sanity checks */
	if ((! ext_size) 			||			/* passed NULL pointer to array size external variable */
		(new_pos < *ext_size) 	||			/* new position is already covered by current array size */
		(! def_size) 			||			/* default size of array cannot be 0 */
		(! item_size))						/* single array item size cannot be 0 */
	{
		if (e) *e = CO_ERR_ARRAY_GROW_INTRO_FAILED;
		return NULL;
	}
  {
	void *_array;
	u32 new_size  = *ext_size;				/* local: new size of array = current size */
	u32 prev_size = *ext_size;				/* local: previous size of array = current size */
	u32 i;

	/* Calculate new size of array */
	while (new_size <= new_pos)	{			/* increase new_size until it covers new_pos */
		if (new_size == 0) {				/* new_size==0 (first grow) -->new_size = def_size */
			if (def_size > max_size) 		/* default size greater than maximum size */
			{
				if (e) *e = CO_ERR_ARRAY_GROW_DEF_SIZE_ABOVE_MAX;
				return NULL;
			}
			new_size = def_size;			/* new_size = def_size */
		}
		else {								/* new_size != 0 */
			i = new_size;					/* store current new_size */
			new_size <<= 1;					/* multiply new_size by 2 */
			if ((i >= new_size) || 			/* 1. overflow of new_size number variable type, or */
				(new_size <= prev_size) ||	/* 2. new_size IS NOT greater than previous size, or */
					(new_size > max_size)) 	/* 3. new_size exceeds maximium size, then */
						{
							if (e) *e = CO_ERR_ARRAY_GROW_EXCEED_MAX_SIZE;
							return NULL;
						}
		}
	}

	/* Allocate new array of new_size and item_size*/
	if ((! flag) || (flag == GROW_MEMSET_ZERO) || (flag & GROW_REALLOC)) {
		_array = realloc(array, new_size*item_size);
		if (! _array) {
			if (e) *e = CO_ERR_ARRAY_GROW_BAD_REALLOC;
			return NULL;
		}
		if (flag & GROW_MEMSET_ZERO) {
			memset((u8*)_array + curr_count*item_size, 0, (new_size-curr_count)*item_size);
		}
	}
	else { /* flag != 0 && (! flag & GROW_REALLOC) */
		if (flag & GROW_CALLOC) {
			_array = calloc(new_size, item_size);
			if (! _array) {
				if (e) *e = CO_ERR_ARRAY_GROW_BAD_CALLOC;
				return NULL;
			}

			/* Copy previous items if such exists */
			if ((curr_count) && (array)) {							/* if there are any items in old array, */
				memcpy(_array, array, (curr_count) * item_size);	/* rewrite them to new array and */
				free(array);										/* delete old array */
			}
		}
		else
			if (e) *e = CO_ERR_ARRAY_GROW_BAD_FLAG;
			return NULL;
	}

	/* Assign new array size and error info */
	*ext_size = new_size;
	if (e) *e = CO_ERR_NO_ERROR;

	/* Return newly created array pointer */
	return _array;
  }
}

void* coResizeArray(	co_error *e, void *array, u32 *ext_size,
						u32 new_size, u32 curr_count,
						const u32 def_size, const u32 max_size,
						const size_t item_size,
						u8 flag) {
	/* Performs some sanity checks */
	if ((! ext_size) 			||			/* passed NULL pointer to array size external variable */
		(! def_size) 			||			/* default size of array cannot be 0 */
		(! item_size))						/* single array item size cannot be 0 */
	{
		if (e) *e = CO_ERR_ARRAY_GROW_INTRO_FAILED;
		return NULL;
	}
	else {
		if (new_size == *ext_size) {
			if (e) *e = CO_ERR_NO_ERROR;
			return array;
		}
		else {
			if (new_size > *ext_size) {
				void *new_array = coGrowArray(
					e, array, ext_size,
					new_size-1, curr_count,
					def_size, max_size,
					item_size, flag);
				return new_array;
			}
			else { /* new_size < *ext_size */
				void *new_array = realloc(array, new_size * item_size);
				if ((! new_array) && (new_size > 0)) {
					if (e) *e = CO_ERR_ARRAY_GROW_BAD_REALLOC;
					return new_array;
				}
				*ext_size = new_size;
				return new_array;
			}
		}
	}
}

void coFill4fv(float *tab, float v0, float v1, float v2, float v3) {
	if (tab) {
		tab[0] = v0;
		tab[1] = v1;
		tab[2] = v2;
		tab[3] = v3;
	}
}

void coFill3fv(float *tab, float v0, float v1, float v2) {
	if (tab) {
		tab[0] = v0;
		tab[1] = v1;
		tab[2] = v2;
	}
}

void coRgbaToArray(u32 rgba, u8 *v) {
	if (v) {
		v[0] = (u8)((rgba & 0xFF000000) >> 24);
		v[1] = (u8)((rgba & 0x00FF0000) >> 16);
		v[2] = (u8)((rgba & 0x0000FF00) >> 8);
		v[3] = (u8)(rgba & 0x000000FF);
	}
}

