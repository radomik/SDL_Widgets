#include "DirFileInfo.h"
#include "Memory.h"
#include "Static.h"

#include <sys/stat.h>

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = DirFileInfo_vdestroy,
	.toString = coObject_coIObject_vtoString
};

static const void *vtable[] = {
	&override_coIObject
};

static coClass type = {
	.size	= sizeof(DirFileInfo),
	.name	= "DirFileInfo",
	.vtable	= vtable
};
const coClass *DirFileInfo_class = &type;



b8 DirFileInfo_stat(DirFileInfo *this) {
	struct stat st;
	
	if (! DirFileInfo_isValid(this)) return false;
	this->is_directory 	= false;
	this->is_file 		= false;
	this->is_symlink 	= false;
	this->ext[0] 		= '\0';
	
	if (! stat( DirFileInfo_getName(this), &st)) {
		if (S_ISDIR(st.st_mode)) {	// is a direct folder
			this->is_directory = true;
			return true;
		}
		else { // is not a folder
			if (S_ISREG(st.st_mode)) {	// is a direct regular file
				this->is_file = true;
				return true;
			}
			else { // is not a folder nor regular file
				if (S_ISLNK(st.st_mode)) {
					char path_res[PATH_MAX_SIZE]; 
					
					this->is_symlink = true; // is a symlink
					
					if (! realpath(DirFileInfo_getName(this), path_res)) { // get real path of file
						fprintf(stderr, "%20s: Failed to get real path of file: '%s' [%s]\n", 
							__FUNCTION__, DirFileInfo_getName(this), sys_getError());
						return false;
					}
					
					if (! stat(path_res, &st)) { // execute stat on symlink target
						if (S_ISDIR(st.st_mode)) {	// is an in-direct folder
							this->is_directory = true;
							return true;
						}
						else {
							if (S_ISREG(st.st_mode)) {	// is an in-direct regular file
								this->is_file = true;
								return true;
							}
							else { // unknown in-direct file
								this->is_unknown = true;
								return true;
							}
						}
					}
					else { // failed to stat
						fprintf(stderr, "%20s: Failed to stat on symlink target: symlink='%s' target='%s' [%s]\n", 
							__FUNCTION__, DirFileInfo_getName(this), path_res, sys_getError());
						return false;
					}
				}
				else {
					this->is_unknown = true;
					return true;
				}
			}
		}
	}
	else {  // failed to stat
		fprintf(stderr, "%20s: Failed to execute stat on file: '%s' [%s]\n", 
			__FUNCTION__, DirFileInfo_getName(this), sys_getError());
		return false;
	}
}


DirFileInfo* DirFileInfo_new(DirFileInfo *this) {
	if (! this) {
		Static_nullThis();
		return NULL;
	}
	coObject_new(CO_OBJECT(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	/* Default fields values */
	this->info 				= NULL;
	this->ext[0] 			= '\0';
	this->is_directory 		= false;
	this->is_file 			= false;
	this->is_symlink 		= false;
	
	return this;
}

void DirFileInfo_vdestroy(void *vthis)  {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	DIR_FILE_INFO(vthis)->info = NULL;
	
	
	/*! Delete parent object !*/
	coObject_vdestroy(vthis);
}

inline b8 DirFileInfo_isValid(const DirFileInfo *this) {
	return this->info != NULL;
}

inline void DirFileInfo_setInfo(DirFileInfo *this, struct dirent *info, b8 exec_stat) {
	this->info = info;
	if (exec_stat) DirFileInfo_stat(this);
}

inline const char *DirFileInfo_getName(const DirFileInfo *this) {
	return (this->info) ? this->info->d_name : NULL;
}

inline b8 DirFileInfo_isHidden(const DirFileInfo *this) {
	return (this->info) ? (this->info->d_name[0] == '.') : false;
}

/// call this method only after DirFileInfo_stat()
b8 DirFileInfo_checkExt(DirFileInfo *this, const char (*file_mask)[][MAX_EXT_SIZE]) {
	if ((! this->is_file) || (! DirFileInfo_isValid(this))) return false; 
	
	if (! File_getExtension(DirFileInfo_getName(this), this->ext)) {
		fprintf(stderr, "%20s: Failed to get extension of file: '%s'\n", 
			__FUNCTION__, DirFileInfo_getName(this));
		return false;
	}
	
	if (! file_mask) return false;
	
	return File_onExtMask(this->ext, file_mask);
}
