/*
 *      file_browse_common.c - this file is part of SDL_Widgets
 *
 *      Copyright (C) 2013 Dariusz Mikołajczuk <radomik(at)gmail(dot)com>
 *
 *      This program is free software; you can redistribute it and/or modify
 *      it under the terms of the GNU General Public License as published by
 *      the Free Software Foundation; either version 2 of the License, or
 *      (at your option) any later version.
 *
 *      This program is distributed in the hope that it will be useful,
 *      but WITHOUT ANY WARRANTY; without even the implied warranty of
 *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *      GNU General Public License for more details.
 *
 *      You should have received a copy of the GNU General Public License along
 *      with this program; if not, write to the Free Software Foundation, Inc.,
 *      51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#include "StdDefinitions.h"
#include "Screen.h"
#include "Memory.h"
#include "file_browse_common.h"
#include "CMPlayer.h"
#include "TextBlock.h"
#include "Image.h"
#include "Widget.h"
#include <dirent.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

/** Pobiera rozszerzenie pliku:
 * Parametry:
 * 		fname - nazwa/ścieżka pliku
 * 		ext   - tablica char[MAX_EXT_SIZE]
 * Wartość zwracana:
 * 		true(1)  -  poprawnie rozpoznano rozszerzenie, zostało ono zapisane 
 * 					do tablicy ext[] (BEZ KROPKI)
 * 		false(0) - wystąpił błąd. Co najmniej jeden z parametrów jest NULL-em lub fname=="" lub 
 * 				   długość rozszerzenia przekracza MAX_EXT_LEN, lub plik nie posiada rozszerzenia
 * 				   Poprzednia zawartość ext[] zostaje ZNISZCZONA.
 */
b8 getFileExtension(char *fname, char *ext) {
	if (ext)
		memset(ext, 0, MAX_EXT_SIZE*sizeof(char));		// wypełnij tablicę ext[MAX_EXT_SIZE] zerami
	else return false;									// ext to NULL
	if (! fname) return false;							// fname to NULL
	
	char		*sc;									// wskaźnik char*
	size_t		flen	= strlen(fname);				// długość nazwy pliku
	u8		i		= MAX_EXT_LEN;					// indeks ostatniego znaku w tablicy ext
	u8		k, j = 0;
	
	if (! flen) return false;							// zerowa długość nazwy pliku (fname == "")
	
	sc = fname + flen - 1;								// wskaźnik na ostatni znak nazwy pliku
	
	while ((*sc == 32) || (*sc == 9)) {					// pomiń końcowe spacje i tabulatory
		if (sc == fname) break;							// zakończ jeżeli sc == fname[0] 
		sc--;											// kolejny znak
	}
	// W *sc pierwszy od końca nie-biały znak lub pierwszy znak nazwy pliku
	while ((*sc != '.') && (i > 0)) {					// przepisuj znaki do ext[] dopóki nie napotka '.'
		ext[i-1] = *sc; 
		if (sc == fname) break;							// zakończ jeżeli sc == fname[0] 
		sc--; 											// kolejny znak
		i--;											// kolejny indeks
	} // przepisuje od końca rozszerzenia aż napotka '.'
	
	if (*sc != '.') 	// nie osiągnięto kropki, w ext niepełne rozszerzenie, to na pewno nie jest znany plik
		return false;	// w ext[] śmieci - sprawdzaj wartość zwracaną przez funkcję
	
	// W ext poprawne rozszerzenie
	for(k = i; k < MAX_EXT_SIZE; k++) { 		// wyrównaj ext do początku tablicy
		if ((ext[k]<='Z') && (ext[k] >= 'A'))	// oraz zmniejsz duże znaki na małe
			ext[j++] = ext[k] + 32;
		else
			ext[j++] = ext[k];
	}
	return true;
}

/** Sprawdza czy rozszerzenie pliku znajduje się w masce.
 * Parametry:
 * 		ext   		- Rozszerzenie pliku (bez kropki)
 * 		file_mask	- Adres tablicy postaci [ wywołanie: fileOnMask(ext, &mask); ]
 * 						u8 	mask[][MAX_EXT_SIZE] = 
 * 							{"mp3", "ogg", "flac", "wav", "acc", "wma", "flv", "mp4", "avi", "wmv", "rmvb","\0"};
 * Wartość zwracana:
 * 		true(1)  -  Rozszerzenie pliku znajduje się w masce
 * 		false(0) -  Rozszerzenie nie znajduje się w masce, lub 
 * 					co najmniej jeden z parametrów jest NULL-em
 */
inline b8 fileOnMask(char *ext, char (*file_mask)[][MAX_EXT_SIZE]) {
	if (! ext) return false;
	u8 i = 0;
	for (; (*file_mask)[i][0] != '\0'; i++)
		if (! strcmp(ext, (*file_mask)[i])) return true;
	return false;
}

/** Funkcja określająca czy plik spełnia podaną maskę, czy jest poprawny 
 * 		oraz dodatkowo jego typ: katalog, obraz obsługiwany przez klasę Image, 
 * 								 dźwięk obsługiwany przez klasę CMPlayer
 * Parametry:
 * 		finfo		- wskaźnik do istniejącej struktury typu fileInfo
 * 					  parametr ten może być równy NULL, wtedy funkcja nadal działa tak samo,
 * 					  z pominięciem działań na strukturze (poniżej), takie działanie jest szybsze
 * 		path 		- ścieżka względna/bezwzględna do pliku/dowiązania symbolicznego
 * 					  Podanie path==NULL powoduje zakończenie funkcji ze zwróceniem -1
 * 		file_mask	- Adres tablicy postaci [ wywołanie: fileOnMask(ext, &mask); ]
 * 						u8 	mask[][MAX_EXT_SIZE] = 
 * 							{"mp3", "ogg", "flac", "wav", "acc", "wma", "flv", "mp4", "avi", "wmv", "rmvb","\0"};
 * 					  Jeśli file_mask==NULL każde rozszerzenie/jego brak jest poprawne
 * Wartość zwracana:
 * 	-99		- nieznany błąd
 * 	-7		- nie udało się pobrać rozszerzenia pliku dowiązanego
 * 	-6		- nie udało się pobrać rozszerzenia pliku bezpośredniego
 * 	-5		- plik dowiązany   nie jest zwykłym plikiem/katalogiem
 * 	-4		- plik bezpośredni nie jest zwykłym plikiem/katalogiem/dowiązaniem symbolicznym
 * 	-3		- błąd drugiego wywołania stat (path jest dowiązaniem symbolicznym)
 * 	-2		- błąd pierwszego wywołania stat
 * 	-1		- path == NULL
 * 	 0 		- plik nie jest katalogiem ani plikiem spełniającym podaną maskę
 * 	 1		- plik jest katalogiem
 * 	 2		- plik jest dowiązaniem do katalogu
 * 	 3		- plik jest plikiem spełniającym maskę
 * 	 4		- plik jest dowiązaniem do pliku spełniającego maskę
 * 
 * 
 * 	Ponadto, jeżeli poprawnie rozpoznano plik/katalog, 
 *  oraz path prowadzi do poprawnego pliku/katalogu, a finfo != NULL:
 * 		PLIK:
 * 			* rozszerzenie pliku znajduje sie w tablicy file_mask
 * 				Ponadto w strukturze finfo wypełniane są pola:
 * 				 .is_selected = .is_directory = false,
 * 					Jeżeli plik jest poprawnym obrazem klasy Image: .is_image = true;
 * 					Jeżeli jest poprawnym plikiem dźwiękowym klasy CMPlayer: .is_audio = true;
 *		KATALOG:
 * 				.is_selected = .is_image = .is_audio = false;
 * 				.is_directory = true;
 * 
 * Funkcja poprawnie rozwiązuje dowiązania symboliczne do plików oraz folderów. 
 **/

/* (private) Plik jest plikiem spełniającym maskę */
#define validFile_IS_FILE(FINFO, EXT, RET_VAL)						\
{																	\
	if (FINFO) {	/* jeśli finfo != NULL */						\
		if (Image_isExtSupported(EXT)) {							\
			FINFO->is_image = true; /* --> czy obraz */				\
		}															\
		if (CMPlayer_isExtSupported(ext)) {							\
			FINFO->is_audio = true; /* --> czy dźwięk */			\
		}															\
	}																\
	return RET_VAL;	/* plik jest plikiem spełniącym maskę */		\
}

/* (private) Plik jest katalogiem */
#define validFile_IS_DIR(FINFO, RET_VAL)										\
{																				\
	if (FINFO) {						/* jeśli finfo != NULL			 */		\
		finfo->is_directory = true;		/* ustaw flagę is_directory=true */		\
	}																			\
	return RET_VAL;						/* plik jest katalogiem			 */		\
}

int validFile(fileInfo *finfo, char *path, char (*file_mask)[][MAX_EXT_SIZE]) {
	if (! path) return -1; // ścieżka path==NULL
	if (finfo) { 
		// jeśli finfo != NULL --  wartości domyślne flag
		finfo->is_selected = finfo->is_directory = finfo->is_image = finfo->is_audio = false;
	}
	struct stat st;
	char ext[MAX_EXT_SIZE];
	if (! stat(path, &st)) { 					// wykonaj pierwszy stat na podanej ścieżce; jeśli się udało
		if (S_ISDIR(st.st_mode)) {				// jeśli plik jest bezpośrednim folderem
			validFile_IS_DIR(finfo, 1);			// RETURN: bezpośredni folder(1)
		}
		else {									// plik nie jest katalogiem
			if (S_ISREG(st.st_mode)) {							// plik jest zwykłym plikiem
				if (! file_mask) {								// jeśli file_mask == NULL
					validFile_IS_FILE(finfo, ext, 3);			// wypełnij finfo; RETURN: bezpośredni plik(3)
				}
				else {											// jeśli file_mask != NULL
					if (getFileExtension(path, ext)) {			// pobierz rozszerzenie pliku
						if (fileOnMask(ext, file_mask)) {		// jeżeli rozszerzenie spełnia maskę file_mask
							validFile_IS_FILE(finfo, ext, 3);	// wypełnij finfo; RETURN: bezpośredni plik(3)
						}
						else 									// rozszerzenie nie spełnia file_mask
							return 0;							// RETURN: nieprawidłowy plik(0)
					}
					else 										// nie udało się pobrać rozszerzenia pliku bezpośredniego
						return -6;								// RETURN -6;
				}
			}
			else {										// plik nie jest zwykłym plikiem
				if (S_ISLNK(st.st_mode)) {				// plik jest dowiązaniem symbolicznym
					char path_res[PATH_MAX_SIZE];		// określ rzeczywistą ścieżkę do pliku
					if (! realpath(path, path_res)) {	// --//--
						fprintf(stderr, "%s::%s@%d realpath() returned NULL [%s]\n",
							__FILE__, __FUNCTION__, __LINE__, sys_getError());
					}
					if (! stat(path_res, &st)) {		// wykonaj stat na pliku dowiązanym; jeśli się udało...
						if (S_ISDIR(st.st_mode)) {		// jeśli plik jest dowiązaniem do folderu
							validFile_IS_DIR(finfo, 2);	// RETURN: dowiązanie do katalogu(2)
						}
						else {
							if (S_ISREG(st.st_mode)) {							// plik jest dowiązaniem do zwykłego pliku
								if (! file_mask) {								// jeśli file_mask == NULL
									validFile_IS_FILE(finfo, ext, 4);			// wypełnij finfo; RETURN: dowiązanie do pliku(4)
								}
								else {											// jeśli file_mask != NULL
									if (getFileExtension(path_res, ext)) {		// pobierz rozszerzenie pliku
										if (fileOnMask(ext, file_mask)) {		// jeżeli rozszerzenie spełnia maskę file_mask
											validFile_IS_FILE(finfo, ext, 4);	// wypełnij finfo; RETURN: dowiązanie do pliku(4)
										}
										else 									// rozszerzenie nie spełnia file_mask
											return 0;							// RETURN: nieprawidłowy plik(0)
									}
									else 										// nie udało się pobrać rozszerzenia pliku dowiązanego
										return -7;								// RETURN -7;
								}
							}
							else 												// plik dowiązany nie jest zwykłym plikiem/katalogiem
								return -5;										// RETURN: -5
						}
					}
					else 			// błąd drugiego wywołania stat
						return -3;	// RETURN: -3
				}
				else 				// plik bezpośredni nie jest zwykłym plikiem/katalogiem/dowiązaniem symbolicznym
					return -4;		// RETURN: -4
			}
		}
	}
	else 			// błąd pierwszego wywołania stat
		return -2;	// RETURN: -2
	fprintf(stderr, "validFile: WARNING: Reached end of function.\n");
	return -99;		// nieznany błąd (żadna ścieżka kodu nie powinna tu prowadzić)
}

// prywatne
int cmpDir(const void *a, const void *b) {
	return (int)(((fileInfo*)b)->is_directory - ((fileInfo*)a)->is_directory);
}
// prywatne
int cmpName(const void *a, const void *b) {
	return strcmp(((fileInfo*)a)->text_block.text, ((fileInfo*)b)->text_block.text);
}

/** Gets current folder content and stores it in fileInfo array
 * Parameters:
 * 		content							...Pointer to dynamic array with folder file info.
 * 										If *content is not NULL function DELETES TextBlocks up to 
 * 										(*contentLength)-1 index then frees array.
 * 
 * 										On the end function creates new array filled with data.
 * 		contentLength					...Size of *content array used to iterate on array and delete textblocks
 * 										on the beginning, finally there is stored new array size
 * 
 * 		screen							...Base SDL screen surface pointer (needed to create TextBlocks (so far))
 * 
 * 		font							...TextBlock-s font pointer
 * 
 * 		bgcolor							...background color of TextBlock-s
 * 
 * 		fgcolor							...text color of TextBlock-s
 * 
 * 		file_mask						...Array of file extensions to be shown 
 * 
 * 										e.g.: char types[][MAX_EXT_SIZE] = {"bmp", "jpeg", "\0"};
 * 										pass an address: getCurrentFolderContent(..., &types, ...);
 * 										NOTE: if file_mask==NULL all file types are fetched
 * 
 * 		nameHeight						...External variable, function stores here max height of 
 * 										filename TextBlock-s
 * 
 * 		filename_textblock_click_handle	Handler method for TextBlock mouse click
 * 
 * 		click_parameter					...pointer to parameter for click handler method
 */
void getCurrentFolderContent(	fileInfo 		**content, 
								u32 			*contentLength, 
								SDL_Surface 	*screen, 
								TTF_Font 		*font, 
								u32 			bgcolor, 
								u32 			fgcolor,
								char 			(*file_mask)[][MAX_EXT_SIZE],
								u8 			*nameHeight,
								void 			(*filename_textblock_click_handle) (Widget*, Screen*),
								void			*click_parameter
							) 
{
	TextBlock		*tb;
	fileInfo		*finfo, 
					*local_content = *content; 	// get array pointed by content
	DIR 			*d = opendir("."); 			// OPEN CURRENT DIRECTORY
	struct dirent 	*dir;
	int 			t;
	u32 			fcount = 0,					// count of subfiles(subfolders) in current folder
					i, 
					fsize = *contentLength; 	// get size of *content array
	u8 			h;
	
	/* Delete old fileInfo array */
	if (local_content) {
		for (i = 0; i < fsize; i++) {
			tb = &(local_content[i].text_block);
			fprintf(stderr, "getCurrentFolderContent: Delete TextBlock %u, %s\n", i, tb->text);
			delete(tb);
		}
		free(local_content);
	}
	
	/* Calculate count of folders and files (according to file_mask) existing in current working directory*/
	while ( (dir = readdir(d)) ) { 			// for each file in directory
		if (dir->d_name[0] != '.') { 	// skip ".", ".." and hidden files
			t = validFile(NULL, dir->d_name, file_mask);
			fprintf(stderr, "getCurrentFolderContent: [1] %40s, validFile: %d\n", dir->d_name, t);
			if (t > 0) fcount++;
		}
	}
	closedir(d);								// CLOSE CURRENT DIRECTORY
	
	/* count of folders/files + ".." */ 
	fsize = *contentLength = fcount+1;	
	
	/* Create fileInfo *content array */
	local_content = *content = calloc(fsize, sizeof(fileInfo));
	
	/* Create ".." TextBlock */
	tb = &(local_content[0].text_block);
	TextBlock_new(tb, "..");
	TextBlock_setFont(tb, font);
	TextBlock_setBackgroundColor(tb, bgcolor);
	TextBlock_setForegroundColor(tb, fgcolor);
	Widget_refresh(WIDGET(tb));
	WIDGET(tb)->click_handler = filename_textblock_click_handle;
	WIDGET(tb)->void_parameter = click_parameter;
	WIDGET(tb)->mevent = true;
	WIDGET(tb)->id = 0;
	*nameHeight = WIDGET(tb)->pos.h;	// nameHeight will be the maximum of heights of all filenames
	
	/* No subfolders/subfiles */
	if (! fcount) return;
	
	/* scan folder again and fill array with data */
	d = opendir(".");
	i = 1; // start with index 1 in fileInfo array (0 is "..")
	while (((dir = readdir(d)) != NULL) && (i < fsize)) {   // for each file in directory
		if (dir->d_name[0] != '.') { 						// skip ".", ".." and hidden files
			finfo = &(local_content[i]);					// get ptr to current fileInfo array item
			t = validFile(finfo, dir->d_name, file_mask);
			fprintf(stderr, "getCurrentFolderContent: [2] %40s, validFile: %d, is_dir=%d, is_image=%d, is_audio=%d\n", dir->d_name, t, finfo->is_directory, finfo->is_image, finfo->is_audio);
			if (t > 0) {
				/* Create new TextBlock with file/folder-name */
				tb = &(finfo->text_block);
				TextBlock_new(tb, dir->d_name);
				TextBlock_setFont(tb, font);
				TextBlock_setBackgroundColor(tb, bgcolor);
				TextBlock_setForegroundColor(tb, fgcolor);
				Widget_refresh(WIDGET(tb));
				fprintf(stderr, "getCurrentFolderContent:        [i=%2u] dir->d_name=%s[%p], text_block=%p, text=%s[%p]\n", i, dir->d_name, dir->d_name, tb, tb->text, tb->text);
				WIDGET(tb)->click_handler  = filename_textblock_click_handle;
				WIDGET(tb)->void_parameter = click_parameter;
				WIDGET(tb)->mevent = true;
				h = WIDGET(tb)->pos.h;
				if (h > *nameHeight) *nameHeight = h;	// find max height of filename
				i++;
			}
		}
	}
	closedir(d);
	
	/* Sort - folder first (start from address of [1] item of *content array) */
	qsort(&(local_content[1]), fcount, sizeof(fileInfo), cmpDir);
	
	/* Sort by names, independently folders and files */
	// find first file index
	for (i = 1; (i < fsize) && (local_content[i].is_directory); i++);
	// i is first index of contnent.dir == 0
	
	if ((i==1) || (i==fsize)) { // only files || only directories
		qsort(&(local_content[1]), fcount, sizeof(fileInfo), cmpName);
	}
	else { // both
		qsort(&(local_content[1]), i-1, sizeof(fileInfo), cmpName); 			// first part - folders
		qsort(&(local_content[i]), fcount-i+1, sizeof(fileInfo), cmpName); 		// second part - files
	}
	
	// update id-s
	for (i = 1; i < fsize; i++) {
		tb = &(local_content[i].text_block);
		WIDGET(tb)->id = i;
		fprintf(stderr, "getCurrentFolderContent() After sort id=%u, text_block=%p, text=%s[%p]\n", WIDGET(tb)->id , tb, tb->text, tb->text);
	}
}
