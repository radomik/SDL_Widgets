#ifndef DIRECTORY_H
#define DIRECTORY_H

#include "StdDefinitions.h"
#include "File.h"

/** Usage - file enumeration:
 * @code	
 * 		Directory 		dir;
 * 		DirFileInfo 	finfo;
 * 
 * 		Directory_new(&dir);
 * 		DirFileInfo_new(&finfo);
 * 
 * 		if (! Directory_open(&dir, path)) { handle error }
 * 		
 * 		// last parfam is true - exec stat on each file 
 * 		// rather than manually call DirFileInfo_stat() in loop body
 * 		while (Directory_getNext(&dir, &finfo, true)) 
 * 		{
 * 			// finfo points to next file/directory in path
 * 			// @note files are not sorted
 * 			// all fields except .ext in DirFileInfo are already set
 * 			// @see DirFileInfo class for details
 * 
 * 	
 * 		}
 * 		delete(&dir); // or _close() then _open
 * 		delete(&finfo);
 * @endcode
 */
 
extern const coClass *Directory_class;
#define DIRECTORY(VTHIS) ((Directory*)VTHIS)

struct Directory {
	coObject		_super;
	DIR 			*d;
	struct dirent 	*dir;
	const char 		*path;
};

Directory* 	Directory_new(Directory *this);
void 		Directory_vdestroy(void *vthis);

b8 			Directory_open(Directory *this, const char *path);

void 		Directory_close(Directory *this);

b8 			Directory_getNext(Directory *this, DirFileInfo *finfo, b8 exec_stat);

inline b8 	Directory_isOpened(const Directory *this);

#endif
