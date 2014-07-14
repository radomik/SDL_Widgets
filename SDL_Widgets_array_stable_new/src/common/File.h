#ifndef _FILE_H_
#define _FILE_H_

#include "StdDefinitions.h"
#include <dirent.h>
#include <limits.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/stat.h>
	
#define 	PATH_MAX_SIZE	(PATH_MAX)
#define 	PATH_MAX_LEN	(PATH_MAX_SIZE-1)

#define 	MAX_EXT_LEN		8
#define 	MAX_EXT_SIZE	(MAX_EXT_LEN+1)

b8 File_exists(const char *path);

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
b8 File_onExtMask(const char *ext, const char (*file_mask)[][MAX_EXT_SIZE]);

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
b8 File_getExtension(const char *fname, char *ext);

#endif
