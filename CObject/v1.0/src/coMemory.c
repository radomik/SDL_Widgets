#include "coCommon.h"
#include "coError.h"
#include "coThreads.h"

#ifdef CO_CHECK_MEMORY_LEAKS
struct coMemoryInfo {
	void			*alloc_ptr;
	const char		*alloc_file_nam;
	const char  	*alloc_fun_nam;
	size_t			alloc_size;
	u32				alloc_file_line;
	coMemoryInfo 	*next;
};

static coMemoryInfo 	*first_mm;
static coMemoryInfo 	*last_mm;
static coMutex			mutex;
static size_t			size_alloc;
static size_t			cnt_alloc;
static b8				inited;
static const char *notinitstr =
	"%24s: Attempt to use memory management without first call to coMemoryInit()\n";
#else
static const char *undefstr = "%24s: CO_CHECK_MEMORY_LEAKS preprocessing directive undefinied.\n";
#endif

// by main thread at the program beginning before Object_init();
co_error coMemoryInit() {
	#ifdef CO_CHECK_MEMORY_LEAKS
	if (coMutexInit(&mutex)) return CO_ERR_MUTEX_FAILED;
	else { inited = true; return 0; }
	#else
	fprintf(stderr, undefstr, "coMemoryInit()");
	return CO_ERR_NO_ERROR;
	#endif
}

#ifdef CO_CHECK_MEMORY_LEAKS
// Print content of memory info (idx is optional)
void coMemoryPrintInfo(const coMemoryInfo *info, size_t idx) {
	if (! info)
		fprintf(stderr, "coMemoryPrintInfo: Passed NULL info\n");
	else {
		fprintf(stderr,
		"coMemoryInfo[%3lu]: ptr[%p], call[%20s@%5d], create[%25s], size[%8lu], next[%p]\n",
		idx, info->alloc_ptr, info->alloc_file_nam, info->alloc_file_line, info->alloc_fun_nam,
		info->alloc_size, info->next);
	}
}
#endif

// by main thread (after all other threads finished) at program end after Object_end()
co_error coMemoryEnd() {
	#ifdef CO_CHECK_MEMORY_LEAKS
	if (first_mm) {
		coMemoryInfo	*info = first_mm, *t;
		size_t			i = 0;
		fprintf(stderr, "\n##########\nmemory_end: Memory leaks detected, still \
have %lu allocated memory areas of total size %lu bytes ::\n",
			cnt_alloc, size_alloc);
		while (info) {
			t = info->next;
			coMemoryPrintInfo(info, i++);
			free(info);
			info = t;
		}
		fprintf(stderr, "\ncoMemoryEnd: Memory leaks detected, still \
have %lu allocated memory areas of total size %lu bytes\n##########\n\n",
			cnt_alloc, size_alloc);
		coMutexClear(&mutex);
		inited = false;
		return CO_ERR_MEMORY_LEAKS_DETECTED;
	}
	else {
		fprintf(stderr, "coMemoryEnd: Memory is clean :)\n");
		coMutexClear(&mutex);
		inited = false;
		return 0;
	}
	#else
	fprintf(stderr, undefstr, "coMemoryEnd()");
	return CO_ERR_NO_ERROR;
	#endif
}

// print memory usage summary (approximation)
void coMemoryPrintUsage() {
	#ifdef CO_CHECK_MEMORY_LEAKS
	if (! inited)
		{ fprintf(stderr, notinitstr, "coMemoryPrintUsage()"); return; }
	coMutexLock(&mutex);
	fprintf(stderr, "@@@ Allocated %lu bytes ", size_alloc);
	if (size_alloc >= 1024) {
		if (size_alloc < 1048576)
			fprintf(stderr, "(%3.2f KB) ", (float)size_alloc / 1024.0f);
		else
			fprintf(stderr, "(%3.2f MB) ", (float)size_alloc / 1048576.0f);
	}
	fprintf(stderr, "in %lu memory areas.\n", cnt_alloc);
	coMutexUnlock(&mutex);
	#else
	fprintf(stderr, undefstr, "coMemoryPrintUsage()");
	#endif
}

// print all of allocated memory areas (huge)
void coMemoryPrintAll() {
	#ifdef CO_CHECK_MEMORY_LEAKS
	if (! inited)
		{ fprintf(stderr, notinitstr, "coMemoryPrintAll()"); return; }
	fprintf(stderr, "coMemoryPrintAll: Memory content:\n");
	coMutexLock(&mutex);
	const coMemoryInfo *info = first_mm;
	size_t  i = 0;
	while (info) {
		coMemoryPrintInfo(info, i++);
		info = info->next;
	}
	coMutexUnlock(&mutex);
	#else
	fprintf(stderr, undefstr, "coMemoryPrintAll()");
	#endif
}

#ifdef CO_CHECK_MEMORY_LEAKS
static const char *malloc_info_failed_str =
	"%s: Failed to allocate MM_Info struct (malloc failed)\n";
/** Simple interface which can be used by programs using coMemory
 ** to add own allocated areas, delete them, and find already
 ** allocated pointers **/
// useful in custom alloc() methods
co_error coMemoryAddInfo(const char *const	mem_fun_nam,  // alloc() name
						 const char *const	alloc_fun_nam,// function name which called alloc()
						 void *const		alloc_ptr,	 // newly allocated pointer (no check for NULL)
						 const char *const	alloc_file_nam, // name of file which called alloc()
						 u32				alloc_file_line, // line from which alloc() was called
						 size_t				alloc_size // size of allocated memory (informative)
) {
	if (! inited)
		{ fprintf(stderr, notinitstr, "coMemoryAddInfo()"); return CO_ERR_NOT_INITED; }
	coMemoryInfo *info = malloc(sizeof(coMemoryInfo));
	if (! info) {/* cannot allocate info */
		fprintf(stderr, malloc_info_failed_str, mem_fun_nam);
		return CO_ERR_FAILED_ALLOC_MEMORY_INFO;
	}
	else {
		info->alloc_ptr = (alloc_ptr);
		info->alloc_file_nam = (alloc_file_nam);
		info->alloc_fun_nam = (alloc_fun_nam);
		info->alloc_size = (alloc_size);
		info->alloc_file_line = (alloc_file_line);
		{
			info->next = NULL;
			coMutexLock(&mutex);
			cnt_alloc++;
			size_alloc += info->alloc_size;
			if (! first_mm) { // first added item
				first_mm = last_mm = info;
			}
			else {
				last_mm->next = info;
				last_mm = info;
			}
			coMutexUnlock(&mutex);
		}
		return CO_ERR_NO_ERROR;
	}
}
// searches for already allocated area pointed by @param alloc_ptr
// returns area info if found, NULL otherwise
coMemoryInfo* coMemorySeekInfo(const void *alloc_ptr) {
	if (alloc_ptr) {
		if (! inited)
			{ fprintf(stderr, notinitstr, "coMemorySeekInfo()"); return NULL; }
		coMutexLock(&mutex);
		coMemoryInfo *temp = first_mm;
		while (temp) {
			if (temp->alloc_ptr == alloc_ptr) break;
			temp = temp->next;
		}
		coMutexUnlock(&mutex);
		return temp;
	}
	else return NULL;
}

// replace already existing allocated area info with new info
co_error coMemoryReplaceInfo(	coMemoryInfo *const		old_info, // existing info pointer (does nothing if NULL)
								const char *const		mem_fun_nam,  // alloc() name
								const char *const		alloc_fun_nam,// function name which called alloc()
								void *const				alloc_ptr,	 // newly allocated pointer (no check for NULL)
								const char *const		alloc_file_nam, // name of file which called alloc()
								u32						alloc_file_line, // line from which alloc() was called
								size_t					alloc_size // size of allocated memory (informative)
) {
	if (! old_info)
		return CO_ERR_MEMORY_PASSED_NULL_INFO;
	else {
		if (! inited)
			{ fprintf(stderr, notinitstr, "coMemoryReplaceInfo()"); return CO_ERR_NOT_INITED; }
		coMutexLock(&mutex);
		size_alloc -= old_info->alloc_size;
		old_info->alloc_ptr = alloc_ptr; // change pointer
		old_info->alloc_file_nam = alloc_file_nam;
		old_info->alloc_fun_nam = alloc_fun_nam;
		old_info->alloc_size = alloc_size;
		old_info->alloc_file_line = alloc_file_line;
		size_alloc += alloc_size;
		coMutexUnlock(&mutex);
		return CO_ERR_NO_ERROR;
	}
}
// Deletes info of allocated pointer (caller should free memory by itself)
// returns CO_ERR_NO_ERR if ptr was found and deleted from database
// returns CO_ERR_DELETED if ptr didn't find in database (already removed)
static const char *del_unallocated =
	"coMemoryDelInfo: Attempt to delete unallocated pointer %p from function %s, [%s@%u]\n";
co_error coMemoryDelInfo(void *ptr, const char *fname, const char *_file, u32 _line) {
	///fprintf(stderr, "mm_del_info: ptr=%p, fname=%s\n", ptr, fname);
	coMemoryInfo *actual = first_mm, *prev = NULL;
	if (! inited)
		{ fprintf(stderr, notinitstr, "coMemoryDelInfo()"); return CO_ERR_NOT_INITED; }
	coMutexLock(&mutex);
	while ((actual) && (actual->alloc_ptr != ptr)) { prev = actual; actual = actual->next; }

	if (! actual) {
		coMutexUnlock(&mutex);
		fprintf(stderr, del_unallocated, ptr, fname, _file, _line);
		return CO_ERR_DELETED;
	}
	else {
		///fprintf(stderr, "mm_del_info: Found info for ptr=%p :\n", ptr); MM_Info_print(actual, cnt_alloc);
		if (prev) {
			prev->next = actual->next;
		}
		else {
			first_mm = actual->next;
		}
		if (! actual->next) last_mm = prev;
		cnt_alloc--;
		size_alloc -= actual->alloc_size;

		free(actual);
		///fprintf(stderr, "mm_del_info: ptr=%p, fname=%s, first_mm=%p END\n", ptr, fname, first_mm);
		coMutexUnlock(&mutex);
		return CO_ERR_NO_ERROR;
	}
}

// From stdlib.h
void *coMalloc(size_t __size, const char *_file_, u32 _line_) {
	void *ptr = malloc(__size);
	co_error err = CO_ERR_NO_ERROR;
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "coMalloc: Failed to allocate memory of size %lu \
(malloc returned NULL), file: %s, line: %u\n",
			__size, _file_, _line_);
		return ptr;
	}

	if ( (err = coMemoryAddInfo("coMalloc", "malloc", ptr, _file_, _line_, __size)) ) {
		fprintf(stderr, "coMalloc(): Failed to add info about: size: %lu, file: %s, line: %u\
Newly allocated pointer: %p. Error: %s\n", __size, _file_, _line_, ptr, coGetStringError(err));
	}

	return ptr;
}
void *coCalloc(size_t __nmemb, size_t __size, const char *_file_, u32 _line_) {
	void *ptr = calloc(__nmemb, __size);
	co_error err = CO_ERR_NO_ERROR;
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "coCalloc: Failed to allocate memory \
__nmemb=%lu, __size=%lu (calloc returned NULL), file: %s, line: %u\n",
			__nmemb, __size, _file_, _line_);
		return ptr;
	}
	if ( (err = coMemoryAddInfo("coCalloc", "calloc", ptr, _file_, _line_, __nmemb * __size)) ) {
		fprintf(stderr, "coCalloc(): Failed to add info about: \
__nmemb=%lu, __size=%lu, file: %s, line: %u\
Newly allocated pointer: %p. Error: %s\n", __nmemb, __size, _file_, _line_, ptr, coGetStringError(err));
	}
	return ptr;
}
void *coRealloc(void *__ptr, size_t __size, const char *_file_, u32 _line_) {
	void *ptr = realloc(__ptr, __size);
	co_error err = CO_ERR_NO_ERROR;
	if ((! ptr) && (__size != 0)) {
		fprintf(stderr, "coRealloc: Failed to reallocate memory \
__ptr=%p, __size=%lu (realloc returned NULL), file: %s, line: %u\n",
			__ptr, __size, _file_, _line_);
		return ptr;
	}
	if ((__ptr == NULL) && (__size > 0)) { // same as malloc
		if ( (err = coMemoryAddInfo("coRealloc", "realloc", ptr, _file_, _line_, __size)) ) // add new pointer to list
		{
			fprintf(stderr, "coRealloc(): Failed to add info about: \
old_ptr=%p, __size=%lu, file: %s, line: %u\
Newly allocated pointer: %p. Error: %s\n", __ptr, __size, _file_, _line_,
					ptr, coGetStringError(err));
		}
	}
	else { // __ptr != NULL || __size == 0
		if (__ptr) {
			if (__size > 0) { // reallocate existing pointer (created with malloc, realloc or calloc)
				coMemoryInfo *info = coMemorySeekInfo(__ptr); // seek for old __ptr in list
				if (info) {
					coMutexLock(&mutex);
					size_alloc -= info->alloc_size;
					info->alloc_ptr = ptr; // change pointer
					info->alloc_file_nam = _file_;
					info->alloc_fun_nam = "realloc";
					info->alloc_size = __size;
					info->alloc_file_line = _line_;
					size_alloc += __size;
					coMutexUnlock(&mutex);
				}
				else
					fprintf(stderr,
"coRealloc: Failed to find old info for __ptr=%p of NEW size %lu, NEW ptr: %p, \
file: %s, line: %u. Error: %s\n",
						__ptr, __size, ptr, _file_, _line_, coGetStringError(err));
			}
			else { // __size == 0, free existing pointer __ptr
				err = coMemoryDelInfo(__ptr, "coRealloc", _file_, _line_);
				if (err == CO_ERR_NO_ERROR) { if (ptr) free(ptr); } // if realloc doesn't call free() itself
				else
					fprintf(stderr,
"coRealloc: Failed to delete info of old __ptr=%p of \
NEW size %lu, NEW ptr %p, file: %s, line: %u. Error: %s\n",
						__ptr, __size, ptr, _file_, _line_, coGetStringError(err));
				return NULL;
			}
		}
	}
	return ptr;
}
void coFree(void *__ptr, const char *_file_, u32 _line_) {
	if (! __ptr) return;
	else {
		co_error err = CO_ERR_NO_ERROR;
		if ((err = coMemoryDelInfo(__ptr, "coFree", _file_, _line_)) == CO_ERR_NO_ERROR) {
			free(__ptr);
		}
		else {
			fprintf(stderr, "coFree: Failed to delete info of ptr: %p, file: %s, line: %u.\
Error: %s\n", __ptr, _file_, _line_, coGetStringError(err));
			if (err == CO_ERR_NOT_INITED) free(__ptr);
		}
	}
}
#endif

#ifdef WIN32
	#include <direct.h>
	#define getcwd_intern	_getcwd
#elif unix
	#include <unistd.h>
	#define getcwd_intern	getcwd
#endif
char *_coGetcwd(char *buf, size_t size, const char *_file_, u32 _line_) {
	char *ptr = getcwd_intern(buf, size);
	if (! ptr) { // cannot allocate desired memory
		fprintf(stderr, "coGetcwd: Failed to get current working directory \
buf=%p, size=%lu (getcwd returned NULL), file: %s, line: %u\n",
			buf, size, _file_, _line_);
		return ptr;
	}
	else { // array is allocated only when @param buf is NULL
		#ifdef CO_CHECK_MEMORY_LEAKS
		if (! buf) {
			co_error err = coMemoryAddInfo("coGetcwd", "getcwd", ptr, _file_, _line_, strlen(ptr)+1);
			if (err)
				fprintf(stderr, "coGetcwd: add info about allocated area \
buf=%p, NEW buf=%p, size=%lu, file: %s, line: %u. Error: %s\n",
			buf, ptr, size, _file_, _line_, coGetStringError(err));
		}
		#endif
	}
	return ptr;
}


