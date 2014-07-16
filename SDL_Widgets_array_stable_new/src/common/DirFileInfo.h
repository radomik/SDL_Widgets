#ifndef FILEINFO_H
#define FILEINFO_H

#include "StdDefinitions.h"
#include "File.h"

extern const coClass *DirFileInfo_class;
#define DIR_FILE_INFO(VTHIS) ((DirFileInfo*)VTHIS)

struct DirFileInfo {
	coObject		_super;
	
	/// this field is valid after call to DirFileInfo_setInfo() 
	struct dirent 	*info;
	
	/// this filed is valid after (in order) calls: DirFileInfo_setInfo(), DirFileInfo_checkExt()
	char			ext[MAX_EXT_SIZE];
	
	/// these fields are only valid after call to DirFileInfo_setInfo()
	b8				is_directory : 1;
	b8				is_file  : 1;
	b8				is_unknown  : 1;
	b8				is_symlink  : 1; // is_symlink=true can be mixed together with
									 // is_directory, is_file, is_unknown set to true
};

DirFileInfo* 		DirFileInfo_new(DirFileInfo *this);

void 				DirFileInfo_vdestroy(void *vthis);

inline b8 			DirFileInfo_isValid(const DirFileInfo *this);

inline void 		DirFileInfo_setInfo(DirFileInfo *this, struct dirent *info, b8 exec_stat);

b8					DirFileInfo_stat(DirFileInfo *this);

inline const char  *DirFileInfo_getName(const DirFileInfo *this);

inline b8 			DirFileInfo_isHidden(const DirFileInfo *this);

/// call this method only after DirFileInfo_stat()
b8 					DirFileInfo_checkExt(DirFileInfo *this, const char (*file_mask)[][MAX_EXT_SIZE]);




#endif
