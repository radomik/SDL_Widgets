/*
 * File:   coMemory.h
 * Author: darek
 *
 * Created on 28 październik 2013, 22:50
 */

#ifndef COMEMORY_H
#define	COMEMORY_H

#ifdef	__cplusplus
extern "C" {
#endif

	#include "coCommon.h"
	/** @WARNING: This header file overrides standard functions
	 like: malloc(), calloc(), realloc(), free(), getcwd()
	 use with caution. **/

	/** Comment CO_CHECK_MEMORY_LEAKS in coCommon.h to disable management **/
	/** @TODO: Enable/disable memory managment by client code          **/

	// by main thread at the program beginning before coObjectMemoryInit();
	co_error coMemoryInit();

	// by main thread (after all other threads finished)
	// at program end after coObjectMemoryEnd()
	co_error coMemoryEnd();

	// print memory usage summary (approximation)
	void coMemoryPrintUsage();

	// print all of allocated memory areas (huge)
	void coMemoryPrintAll();

	// Wrapper for getcwd available when memory leaks detection enabled or not
	char*   _coGetcwd(char *buf, size_t size, const char *_file_, u32 _line_);
	#define coGetcwd(buf, size) _coGetcwd(buf, size, __FILE__, __LINE__)

	#ifdef CO_CHECK_MEMORY_LEAKS
	/** Simple interface which can be used by programs using coMemory
	 ** to add own allocated areas, delete them, and find already
	 ** allocated pointers **/
	// useful in custom alloc() methods
	co_error coMemoryAddInfo(char *const		mem_fun_nam,  // alloc() name
							const char *const	alloc_fun_nam,// function name which called alloc()
							void *const			alloc_ptr,	 // newly allocated pointer (no check for NULL)
							const char *const	alloc_file_nam, // name of file which called alloc()
							u32					alloc_file_line, // line from which alloc() was called
							size_t				alloc_size // size of allocated memory (informative)
						);
	// searches for already allocated area pointed by @param alloc_ptr
	// returns area info if found, NULL otherwise
	coMemoryInfo* coMemorySeekInfo(const void *alloc_ptr);

	// replace already existing allocated area info with new info
	co_error coMemoryReplaceInfo(coMemoryInfo *const	old_info, // existing info pointer (does nothing if NULL)
								const char *const		mem_fun_nam,  // alloc() name
								const char *const		alloc_fun_nam,// function name which called alloc()
								void *const				alloc_ptr,	 // newly allocated pointer (no check for NULL)
								const char *const		alloc_file_nam, // name of file which called alloc()
								u32						alloc_file_line, // line from which alloc() was called
								size_t					alloc_size // size of allocated memory (informative)
							);
	// Deletes info of allocated pointer (caller should free memory by itself)
	// returns CO_ERR_NO_ERR if ptr was found and deleted from database
	// returns CO_ERR_DELETED if ptr didn't find in database (already removed)
	// @params: fname, _file, _line describes call position to coMemoryDelInfo
	co_error coMemoryDelInfo(void *ptr, const char *fname, const char *_file, u32 _line);

	// Print content of memory info (idx is optional)
	void coMemoryPrintInfo(const coMemoryInfo *info, size_t idx);


	// From stdlib.h
	void *coMalloc(size_t __size, const char *_file_, u32 _line_);
	void *coCalloc(size_t __nmemb, size_t __size, const char *_file_, u32 _line_);
	void *coRealloc(void *__ptr, size_t __size, const char *_file_, u32 _line_);
	void  coFree(void *__ptr, const char *_file_, u32 _line_);

	#define malloc(__size) coMalloc(__size, __FILE__, __LINE__)
	#define calloc(__nmemb, __size) coCalloc(__nmemb, __size, __FILE__, __LINE__)
	#define realloc(__ptr, __size) coRealloc(__ptr, __size, __FILE__, __LINE__)
	#define free(__ptr) coFree(__ptr, __FILE__, __LINE__)

	#endif



#ifdef	__cplusplus
}
#endif

#endif	/* COMEMORY_H */

