#include "StdDefinitions.h"
#include "Types.h"
#include "Memory.h"
#include "File.h"

#include <dirent.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

/// Pobiera rozszerzenie pliku:
/// Parametry:
/// 		fname - nazwa/ścieżka pliku
/// 		ext   - tablica char[MAX_EXT_SIZE]
/// Wartość zwracana:
///		true(1)  -  	poprawnie rozpoznano rozszerzenie, zostało ono zapisane 
/// 					do tablicy ext[] (BEZ KROPKI)
/// 		false(0) - wystąpił błąd. Co najmniej jeden z parametrów jest NULL-em lub fname=="" lub 
/// 				   długość rozszerzenia przekracza MAX_EXT_LEN, lub plik nie posiada rozszerzenia
///				   Poprzednia zawartość ext[] zostaje ZNISZCZONA.
///
bool File_getExtension(char *fname, char *ext) {
	if (ext)
		memset(ext, 0, MAX_EXT_SIZE*sizeof(char));		// wypełnij tablicę ext[MAX_EXT_SIZE] zerami
	else return false;									// ext to NULL
	if (! fname) return false;							// fname to NULL
	
	char		*sc;									// wskaźnik char*
	size_t		flen	= strlen(fname);				// długość nazwy pliku
	uchar		i		= MAX_EXT_LEN;					// indeks ostatniego znaku w tablicy ext
	uchar		k, j = 0;
	
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

inline bool File_exist(char *path) { 
	if (! path) return false; 
	struct stat st; 
	if (! stat(path, &st)) return true; 
	else return false; 
}
