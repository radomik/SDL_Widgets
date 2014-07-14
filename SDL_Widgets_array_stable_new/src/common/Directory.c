#include "Directory.h"
#include "DirFileInfo.h"
#include "Memory.h"
#include "Static.h"



/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = Directory_vdestroy,
	.toString = coObject_coIObject_vtoString
};

static const void *vtable[] = {
	&override_coIObject
};

static coClass type = {
	.size	= sizeof(Directory),
	.name	= "Directory",
	.vtable	= vtable
};
const coClass *Directory_class = &type;



Directory* Directory_new(Directory *this) {
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
	this->d			= NULL;
	this->dir		= NULL;
	this->path		= NULL;
	
	return this;
}

void Directory_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	if (Directory_isOpened(DIRECTORY(vthis)))
		Directory_close(DIRECTORY(vthis));
	
	/*! Delete parent object !*/
	coObject_vdestroy(vthis);
}

inline b8 Directory_isOpened(const Directory *this) {
	return this->d != NULL;
}

void Directory_close(Directory *this) {
	closedir(this->d);
	this->d = NULL;
}

b8 Directory_open(Directory *this, const char *path) {
	if (! path) {
		fprintf(stderr, "%20s: path is NULL\n", __FUNCTION__);
		return false;
	}
	
	this->path = path;
	
	if (Directory_isOpened(this)) 
		Directory_close(this);
	
	if (! (this->d = opendir(this->path)) ) {
		fprintf(stderr, "%20s: Failed to open directory [%s]\n", __FUNCTION__, sys_getError());
		return false;
	}
	
	return true;
}

b8 Directory_getNext(Directory *this, DirFileInfo *finfo, b8 exec_stat) {
	if (! Directory_isOpened(this)) {
		fprintf(stderr, "%20s: Directory is not opened\n", __FUNCTION__);
		return false;
	}
	
	this->dir = readdir(this->d);
	
	if (this->dir) {
		DirFileInfo_setInfo(finfo, this->dir, exec_stat);
		return true; // keep enumeration
	}
	else { // end of enumeration, keep finfo unchanged (last file info)
		return false;
	}
}
