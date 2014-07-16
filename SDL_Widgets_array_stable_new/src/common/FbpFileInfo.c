#include "FbpFileInfo.h"
#include "Screen.h"
#include "Static.h"
#include "Memory.h"
#include "File.h"


/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = FbpFileInfo_vdestroy,
	.toString = FbpFileInfo_vtoString
};

/** Methods overriden from interface IWidget */
static const IWidget override_IWidget = {
	.mevent 	= Widget_vmevent,
	.draw 		= Widget_vdraw,
	.refresh	= TextBlock_vrefresh,
	.drag		= Widget_vdrag,
	.setVisible	= Widget_vsetVisible
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IWidget
};

static coClass type = {
	.size	= sizeof(FbpFileInfo),
	.name	= "FbpFileInfo",
	.vtable	= vtable
};
const coClass *FbpFileInfo_class = &type;

void FbpFileInfo_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	fprintf(stderr, "%s: Deleting this: %s\n", __FUNCTION__, toString(vthis));
	
	/// delete parent class data
	TextBlock_vdestroy(vthis);
}

const char *FbpFileInfo_vtoString(const void *vthis) {
	static char str_id[PATH_MAX_SIZE+25];
	snprintf(str_id, sizeof(str_id), "%s @ %p: '%s'", type.name, vthis, TextBlock_getText(TEXTBLOCK(vthis)));
	return str_id;
}

inline const char *FbpFileInfo_getFilename(const FbpFileInfo *this) {
	return TextBlock_getText(TEXTBLOCK(this));
}

FbpFileInfo* FbpFileInfo_new(FbpFileInfo *this, 
							const char *name, b8 is_directory,
							TTF_Font *font) 
{
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%s: Within context: name(%s), is_directory(%s), font(%p)\n", __FUNCTION__, name, sbool(is_directory), font);
		return NULL;
	}
	TextBlock_newText(TEXTBLOCK(this), name);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	if (font) TextBlock_setFont(TEXTBLOCK(this), font);
	TextBlock_setBackgroundColor(TEXTBLOCK(this), FBP_FILE_INFO_BGCOLOR_UNSEL);
	TextBlock_setForegroundColor(TEXTBLOCK(this), FBP_FILE_INFO_FGCOLOR);
	Widget_refresh(WIDGET(this));
	this->is_selected = false;
	this->is_directory = is_directory;
	this->is_image = false;
	return this;
}

inline void FbpFileInfo_setClickHandler(FbpFileInfo *this, void (*func)(Widget*, Screen*), void *param) {
	WIDGET(this)->click_handler = func;
	WIDGET(this)->void_parameter = param;
}

inline void FbpFileInfo_setBackgroundColor(FbpFileInfo *this, u32 bgcolor) {
	TextBlock_setBackgroundColor(TEXTBLOCK(this), bgcolor);
}

void FbpFileInfo_select(FbpFileInfo *this) {
	if (this->is_selected) return;
	this->is_selected = true;
	FbpFileInfo_setBackgroundColor(this, FBP_FILE_INFO_BGCOLOR_SEL);
	Widget_refresh(WIDGET(this));
}

void FbpFileInfo_unselect(FbpFileInfo *this) {
	if (! this->is_selected) return;
	this->is_selected = false;
	FbpFileInfo_setBackgroundColor(this, FBP_FILE_INFO_BGCOLOR_UNSEL);
	Widget_refresh(WIDGET(this));
}

static int FbpFileInfo_cmpIsDir(const void *a, const void *b) {
	return (int)( FBP_FILE_INFO(b)->is_directory - FBP_FILE_INFO(a)->is_directory );
}
// prywatne
static int FbpFileInfo_cmpName(const void *a, const void *b) {
	return strcmp( TextBlock_getText(TEXTBLOCK(a)), TextBlock_getText(TEXTBLOCK(b)));
}

/** Sort array alphabeticaly with folders first */
void FbpFileInfo_arraySort(FbpFileInfo *fileInfoArray, u32 fsize) {
	u32 fcount = fsize - 1, i;
	
	/// Sort - folders first (start from address of [1] item of fileInfoArray array)
	qsort(&fileInfoArray[1], fcount, sizeof(FbpFileInfo), FbpFileInfo_cmpIsDir);

	/// Sort by names, independently folders and files
	/// find first file index
	for (i = 1; (i < fsize) && (fileInfoArray[i].is_directory); i++);
	/// i is first index of this->fileInfoArraySize.is_directory == false

	if ((i==1) || (i==fsize)) { // only files || only directories
		qsort(&fileInfoArray[1], fcount, sizeof(FbpFileInfo), FbpFileInfo_cmpName);
	}
	else { // both
		const u32 dir_count = i - 1;
		const u32 file_count = fcount - dir_count;
		
		qsort(&fileInfoArray[1], dir_count, sizeof(FbpFileInfo), FbpFileInfo_cmpName); 			// first part - folders
		qsort(&fileInfoArray[i], file_count, sizeof(FbpFileInfo), FbpFileInfo_cmpName); 		// second part - files
	}
}

void FbpFileInfo_arrayUpdateIds(FbpFileInfo *fileInfoArray, const u32 fsize) {
	u32 i; for (i = 0; i < fsize; i++) {
		WIDGET(&fileInfoArray[i])->id = i;
	}
}

void FbpFileInfo_arrayShow(const FbpFileInfo *fileInfoArray, const u32 fsize, FILE *file) {
	const Widget *wt;
	u32 i;
	
	fprintf(file, "%s: Debug list:\n", __FUNCTION__);
	for (i = 0; i < fsize; i++) {
		wt = WIDGET(&fileInfoArray[i]);
		fprintf(file, "   Widget(%s) @ %p [%u/%u] id=%u filename=%s\n",
			classname(wt), wt, i, fsize, wt->id, FbpFileInfo_getFilename(FBP_FILE_INFO(wt)));
	}
}

FbpFileInfo* FbpFileInfo_arrayRealloc(FbpFileInfo *fileInfoArray, const u32 fsize) {
	FbpFileInfo* newFileInfoArray = realloc(fileInfoArray, fsize * sizeof(FbpFileInfo));
	if (! newFileInfoArray) {
		fprintf(stderr, "%s: Failed to reallocate array(%p) to size %u items [%s]\n", 
			__FUNCTION__, fileInfoArray, fsize, sys_getError());
	}
	return newFileInfoArray;
}

void FbpFileInfo_arrayDelete(FbpFileInfo **p_fileInfoArray, const u32 fsize, b8 del_array) {
	FbpFileInfo *fileInfoArray = *p_fileInfoArray;
	u32 i;
	
	for (i = 0; i < fsize; i++) {
		//fprintf(stderr, "%s: Deleting %u item\n", __FUNCTION__, i);
		delete(&fileInfoArray[i]);
	}

	if (del_array) {
		free(fileInfoArray);
		*p_fileInfoArray = NULL;
	}
}
