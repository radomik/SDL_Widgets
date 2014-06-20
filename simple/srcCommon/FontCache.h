#ifndef _FontCache_h_
	#define _FontCache_h_
	#include "StdDefinitions.h"
	#include "Types.h"
	
	/** ####################################################### 					**/
	/**  					class FontCache											**/
	/** Attributes: static class, NOT thread safe (global variables with no mutex)	**/
	
	void 	FontCache_testscan();
	
	String *FontCache_getPath(char *font_name);
	
	void 	FontCache_quit();
	
	/** ####################################################### **/
#endif
