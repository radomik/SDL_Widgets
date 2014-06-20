#ifndef _File_h_
	#define _File_h_
	#include "StdDefinitions.h"
	#include "Types.h"
	
	/** ####################################################### **/
	/**  					class File							**/
	/** Attributes: static class								**/
	
	#define 	PATH_MAX_SIZE	(NAME_MAX)
	#define 	PATH_MAX_LEN	(PATH_MAX_SIZE-1)
	
	#define 	MAX_EXT_LEN		8
	#define 	MAX_EXT_SIZE	(MAX_EXT_LEN+1)
	
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
	bool File_getExtension(char *fname, char *ext);
	
	/// check whether file path points to existing file or directory
	inline bool File_exist(char *path);
	
	/** ####################################################### **/
#endif
