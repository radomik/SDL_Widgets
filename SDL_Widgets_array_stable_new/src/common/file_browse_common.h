/*
 *      file_browse_common.h - this file is part of SDL_Widgets
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

#ifndef _file_browse_common_h
	#define _file_browse_common_h
	#include "StdDefinitions.h"
	#include "TextBlock.h"
	#include "dirent.h"
	
	#define 	PATH_MAX_SIZE	(NAME_MAX)
	#define 	PATH_MAX_LEN	(PATH_MAX_SIZE-1)
	
	#define 	MAX_EXT_LEN		8
	#define 	MAX_EXT_SIZE	(MAX_EXT_LEN+1)
	
	struct fileInfo {
		TextBlock	text_block;				// TextBlock with filename (basename)
		b8		is_selected;			// whether file is selected (by file manager - initialized to false)
		b8		is_directory;			// whether file is a directory
		b8		is_image;				// whether file is an image supported by Image class
		b8		is_audio;				// whether file is an audio supported by CMPlayer class
	};
	typedef struct fileInfo fileInfo;
	
	#include "Screen.h"
	#include "Widget.h"
	
	
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
	b8 getFileExtension(char *fname, char *ext);

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
	 * @TODO need to implement faster search alghoritm searching char* in char** array
	 */
	inline b8 fileOnMask(char *ext, char (*file_mask)[][MAX_EXT_SIZE]);

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
	int validFile(fileInfo *finfo, char *path, char (*file_mask)[][MAX_EXT_SIZE]);

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
								);
#endif
