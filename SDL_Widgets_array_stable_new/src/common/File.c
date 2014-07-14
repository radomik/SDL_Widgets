#include "File.h"
#include "Memory.h"

b8 File_exists(const char *path) { 
	if (! path) return false; 
	else {
		struct stat st; 
		return (stat(path, &st) == 0);
	}
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
b8 File_onExtMask(const char *ext, const char (*file_mask)[][MAX_EXT_SIZE]) 
{
	if ((! ext) || (! file_mask)) return false;
	else {
		u32 i = 0;
		
		for (; (*file_mask)[i][0] != '\0'; i++)
			if (! strcmp(ext, (*file_mask)[i])) return true;
		return false;
	}
}

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
b8 File_getExtension(const char *fname, char *ext) 
{
	if ((! ext) || (! fname)) return false;
	memset(ext, 0, MAX_EXT_SIZE*sizeof(char));		// wypełnij tablicę ext[MAX_EXT_SIZE] zerami
	
	const char		*sc;								// wskaźnik const char*
	size_t	flen	= strlen(fname);					// długość nazwy pliku
	u8		i		= MAX_EXT_LEN;						// indeks ostatniego znaku w tablicy ext
	u8		k, j 	= 0;
	
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
	for (k = i; k < MAX_EXT_SIZE; k++) { 		// wyrównaj ext do początku tablicy
		if ((ext[k]<='Z') && (ext[k] >= 'A'))	// oraz zmniejsz duże znaki na małe
			ext[j++] = ext[k] + 32;
		else
			ext[j++] = ext[k];
	}
	return true;
}
