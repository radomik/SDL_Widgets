#include "StdDefinitions.h"
#include "Types.h"
#include "Memory.h"
#include "String.h"
#include "Object.h"
#include "Static.h"
#include "List1D.h"
#include "File.h"

#include <unistd.h>
#include <dirent.h>

typedef struct cache_item cache_item;
struct cache_item {
	char 	*path;
	char 	*name;
	usint	 path_size;
	usint 	 name_size;
};


static char 		*FONT_DIR = W_FONT_DIR;
static String 		*stack;
static List1D 		*list;
static cache_item 	**font_array;
static size_t		font_array_size;
static size_t 		_off;

static void *p = (void*) 0;
static size_t ii=0;

static void FontCache_scan(char *folder_name) {
	int not_base_dir = strcmp(folder_name, ".");
	//_error2("\nFontCache_scan", "folder_name=%s, stack.buf=%s, not_base_dir=%d\n", 
	//	folder_name, String_getText(stack), not_base_dir);
	if (not_base_dir) {
		if (chdir(folder_name)) {
			_error2("FontCache_scan", "Failed to enter directory %s [current directory is %s]\n", 
				folder_name, String_getText(stack));
			return;
		}
		String_appendText(stack, "/");
		String_appendText(stack, folder_name);
		
		//char *cwd = getcwd(NULL, 0);
		//_error2("FontCache_scan", "INTRO @param=%s, cwd=%s, stack.buf=%s\n", folder_name, cwd, String_getText(stack));
		//free(cwd);
	}
	struct dirent 	*dir;
	DIR 			*d = opendir(".");
	
	while ((dir = readdir(d)) != NULL) {
		if ((dir->d_type == DT_DIR) && (dir->d_name[0] != '.')) {
			//_error2("FontCache_scan", "FontCache_scan(%s)\n", dir->d_name);
			FontCache_scan(dir->d_name);
		}
	}
	closedir(d);
	
	TTF_Font 	*font;
	const char	*family_name;
	cache_item  *item;
	char ext[MAX_EXT_SIZE];
	
	d = opendir(".");
	//_error2("FontCache_scan", "Folder %s content [ttf only]:\n", String_getText(stack));
	while ((dir = readdir(d)) != NULL) {
		if (dir->d_type == DT_REG) {
			if ((File_getExtension(dir->d_name, ext)) && (! strcasecmp(ext, "ttf"))) {
				font = TTF_OpenFont(dir->d_name, 20);
				if (font) {
					family_name = TTF_FontFaceFamilyName(font);
					if (family_name) {
						item = malloc(sizeof(cache_item));
						if (item) {
							item->path_size = String_getLen(stack) - _off + strlen(dir->d_name) + 1;
							item->name_size = strlen(family_name)+1;
							item->path = malloc(item->path_size);
							strncpy(item->path, String_getText(stack)+_off+1, item->path_size);
							strcat(item->path, "/");
							strcat(item->path, dir->d_name);
							item->name = malloc(item->name_size);
							strncpy(item->name, family_name, item->name_size);
							
							//_error2("FontCache_scan", "\t%s [%s][%s]%hu [%s]%hu ## %d ##\n", dir->d_name, family_name, item->name, 
							//	item->name_size, item->path, item->path_size, List1D_addLast(list, item, true) == item);
							List1D_addLast(list, item, true);
						}
						//_error2("FontCache_scan", "[%lu] item=%p, item->path=%p, item->name=%p\n", ii++, item, item->path, item->name);
					}
					TTF_CloseFont(font);
				}
				else { }
					//_error2("FontCache_scan", "\t%s (NO NAME)\n", dir->d_name);
				
				
			}
		}
	}
	closedir(d);
	
	if (not_base_dir) {
		String_cutLast(stack, '/');
		//_error2("FontCache_scan", "OUTRO stack.buf=%s\n", String_getText(stack));
		if (chdir(String_getText(stack))) {
			_error2("FontCache_scan", "Failed to chdir to previous directory %s\n", String_getText(stack));
			if (chdir("..")) {
				_error2("FontCache_scan", "Failed to chdir to \"..\"");
			}
		}
		//char *cwd = getcwd(NULL, 0);
		//_error2("FontCache_scan", "OUTRO @param=%s, cwd=%s, stack.buf=%s\n", folder_name, cwd, String_getText(stack));
		//free(cwd);
	}
}

static int sort_font_array(const void *a, const void *b) {
	return strcmp((*((cache_item**)a))->name, (*((cache_item**)b))->name);
}

static int find_array(const void *key, const void *a) {
	return strcmp(((cache_item*)key)->name, (*((cache_item**)a))->name);
}

void FontCache_testscan() {
	stack = String_newText(FONT_DIR);
	
	
	
	//_error2("FontCache_testscan", "list is %s @ %p\n", typename(list), list);
	_off  = String_getLen(stack);
	//_error2("FontCache_testscan", "stack=%s, stack.len=%lu\n", String_getText(stack), _off);
	
	char *cwd = getcwd(NULL, 0);
	if (cwd) {
		list  = List1D_new();
		//_error2("FontCache_testscan", "cwd=%s\n", cwd);
		if (chdir(FONT_DIR)) {
			_error2("FontCache_testscan", "Failed to chdir to %s\n", FONT_DIR);
			free(cwd);
			return;
		}
		
		FontCache_scan(".");
		
		//_error2("FontCache_testscan", "list.empty=%s, list.count=%lu\n",
		//	Bool_toString(List1D_isEmpty(list)), List1D_getCount(list));
		if (! List1D_isEmpty(list)) {
			font_array = malloc(List1D_getCount(list) * sizeof(cache_item));
			//_error2("FontCache_testscan", "font_array=%p\n", font_array);
			if (font_array) {
				size_t	i = 0;
				
				//_error2("FontCache_testscan", "font_array_size=%lu\n", font_array_size);
				List1D_enumerate(list);
				font_array_size = List1D_getCount(list);
				cache_item *item;
				while ((List1D_hasNext(list)) && (i < font_array_size)) {
					item = List1D_next(list);
					//_error2("FontCache_testscan", "[%lu]# item=%p, item->path=%p, item->name=%p\n", i, item, item->path, item->name);
					if (item) {
						//~ _error2("FontCache_testscan", "#[%3u] \"%p\" [%2hu] \"%p\" [%3hu]\n",
								//~ i, item->name, item->name_size, item->path, item->path_size);
						font_array[i++] = item;
					}
					else
						_error2("FontCache_testscan", "NULL item\n");
				}
				font_array_size = i;
				
				qsort(font_array, font_array_size, sizeof(cache_item*), sort_font_array);
				//~ for (i = 0; i < font_array_size; i++) {
					//~ item = font_array[i];
					//~ _error2("FontCache_testscan", "[%lu]$ item=%p, item->name=%p[%40s], item->path=%p[%s],\n", i, item, item->name, item->name, item->path, item->path);
				//~ }
			}
		}
		//_error2("FontCache_testscan", "After\n");
		
		if (chdir(cwd)) {
			_error2("FontCache_testscan", "Failed to chdir to previous directory %s\n", cwd);
		}
		
		free(cwd);
		delete(list);
		_off++;
		String_appendText(stack, "/");
	}
}


// called by Static_quit()
void FontCache_quit() {
	if (stack) { delete(stack); stack = NULL; }
	if (font_array) { 
		cache_item *item;
		size_t 		i = 0;
		for (; i < font_array_size; i++) {
			if (item = font_array[i]) {
				//_error2("FontCache_quit", "[%lu] item=%p, item->path=%p, item->name=%p\n", i, item, item->path, item->name);
				free(item->path);
				free(item->name);
				free(item);
			}
		}
		free(font_array);
		font_array = NULL;
	}
}

/**
 * ;; scan(char *folder_name) 
 * 		if (folder_name != ".")
 * 			if (chdir(folder_name)) return; // error chdir
 * 			String_append(stack, "/");
 * 			String_append(stack, folder_name);
 * 
 * 		foreach folder fld in current directory:
 * 			scan(fld);
 * 		foreach file fil in current directory:
 * 			if (fil.extension == "ttf" || fil.extension == "TTF"):
 * 				font = TTF_OpenFont(fil, 20);
 * 				if (font != NULL) 
 * 					const char *family_name = TTF_FontFaceFamilyName(font);
					
					cache_item item = malloc(sizeof(cache_item));
					item->path_size = stack->len - _off;
					item->name_size = strlen(family_name)+1;
					item->path = malloc(item->path_size);
					strncpy(item->path, String_getText(stack)+_off+1, item->path_size);
					item->name = malloc(item->name_size);
					strncpy(item->name, family_name, item->name_size);
					
					
					
 
 * 					size_t index = HASH(family_name)
 * 					APPEND(hash_table, index, {family_name, String_getText(stack)+_off})
 * 					TTF_CloseFont(font);
 * 				|
 * 			|
 * 		|
 * 		if (folder_name != ".")
 * 			String_cutLast(stack, '/');		// e.g. "/usr/share/fonts/corefonts" --> "/usr/share/fonts"
 * 			if (chdir(String_getText(stack))) chdir("..");
 * 		return;
///usr/share/fonts/corefonts
perr FontCache_init(options *op) {
	// [1]check if file W_FONT_CACHE exist
	// [1]yes
		// 
	// [1]no
		cwd = getcwd(NULL, 0);
		chdir(FONT_DIR);
		stack = String_new(FONT_DIR); //"/usr/share/fonts" <-- size_t _off = stack->size == 17 
		_off = stack->len;
		scan(".");
		 * 
		 * serialize(hash_table);
		 * delete(hash_table);
		 * delete(stack);
		chdir(cwd);
		free(cwd);
}*/

String *FontCache_getPath(char *font_name) {
	if ((! font_name) || (! font_array)) return NULL;
	
	cache_item key = {
		.name = font_name
	};
	cache_item **found = bsearch(&key, font_array, font_array_size, sizeof(cache_item*), find_array);
	if (found) {
		_error2("FontCache_getPath", "Found: %s _off=%lu\n", (*found)->path, _off);
		String_printf(stack, _off, "%s", (*found)->path);
		_error2("FontCache_getPath", "stack.buf: %s\n", String_getText(stack));
		return stack;
	}
	else
		return NULL;
}

/*
item=0x1c53470
FontCache_scan: 	arialbd.ttf [Arial][Arial]6 [corefonts]10
FontCache_scan: item=0x1c54a30
FontCache_scan: 	trebucit.ttf [Trebuchet MS][Trebuchet MS]13 [corefonts]10
FontCache_scan: item=0x1c2c220
FontCache_scan: 	courbd.ttf [Courier New][Courier New]12 [corefonts]10
FontCache_scan: item=0x1c54a00
FontCache_scan: 	couri.ttf [Courier New][Courier New]12 [corefonts]10

*/
