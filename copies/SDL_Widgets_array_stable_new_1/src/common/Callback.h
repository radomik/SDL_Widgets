/*
 *      CallBack.h - this file is part of SDL_Widgets
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

#ifndef	_Callback_h_
	#define	_Callback_h_
	#include "StdDefinitions.h"
	#include "perr.h"
	
	/* Callback jest klasą pozwalającą na dodawanie parametrów przypisanych do 
	 * handlerów kliknięć, przy czym parametry te nie mogą zależeć od obiektu
	 * wywołującego dany callback
	 * 
	 * Z założenia ma to pozwalać na uniezależnienie przypisywania handlerów do 
	 * obiektu od przypisywania parametrów wywołania handlera.
	 * 
	 * Nowe podejście ma zakładać współdziałanie dwóch rodzajów parametrów
	 * callbacków różniących się sposobem ich dodawania i przynależnością do 
	 * innego obiektu:
	 * a) parametry typu [C] (cparam)
	 *    * przypisane są na stałe do danej funkcji callback
	 *    * dodawane są do danego obiektu klasy Screen w momencie utworzenia
	 * 		obiektu parametru wraz z wyspecyfikowanie do jakiego handlera są przypisane
	 *    * obiekt wywołujący callback odnajduje tablicę parametrów cparam w
	 * 		momencie pierwszego wywołania danego callbacka (jeśli dany Screen
	 * 		nie posiada instancji Callback lub dany callback nie posiada 
	 * 		parametrów cparam, obiekt wywołujący nie ponawia prób znalezienia
	 * 		parametrów cparam przy kolejnym wywołaniu callbacka)
	 *    * użycie klasy Callback w danym obiekcie typu Screen wymaga podania
	 * 		dla odpowiedniej metody klasy Screen tablicy wszystkich callbacków
	 * 		przynależnych do danego Screena
	 * b) parametry typu [V] (vparam)
	 * 	  * przypisane są do obiektu wywołującego callback
	 * 	  * są najbardziej intuicyjne ale wymagają istnienia obiektu parametru
	 * 		w momencie przypisania ich do obiektu wywołującego handler lub
	 * 		ich późniejszego uzupełnienia 
	 */
	
	/* Pojedynczy element tablicy Callback[] znajdującej się w strukturze Callback
	 * tablica taka zawiera wskaźniki do wszystkich funkcji callback danego 
	 * Screena (podprogramu) */
	struct CallbackItem {
		void		(*click_handler)(struct Widget*, struct Screen*);	// handler kliknięcia myszą
		void		**cparam;											// tablic cparam-ów
		uint		cparam_size;										// rozmiar tablicy cparam
	};
	
	#include "Object.h"
	struct Callback {
		Object					object;		// dziedziczy z Object
		struct CallbackItem		*cb;		// tablica dynamiczna CallbackItem-ów
		uint					cb_size;	// rozmiar tablicy cb
	};
	
	// konstruktor
	Callback* Callback_new(	Callback	*callback, 
							void		(*click_handler[])(struct Widget*, struct Screen*),
							uint		size
						);
	
	/* Wszystkie poniższe metody wywoływane są ze Screena, używaj wrapperów z klasy Screen,
	 * zamiast poniższych metod. */
	
	// Add parameter to existing click_handler in callback array
	perr Callback_addParameter(	Callback *callback,
								void	(*click_handler)(struct Widget*, struct Screen*),
								void 	*parameter,
								uint	position,
								uint	*startPos
								);
								
	// Search for given click handler and returns cparam array in void ***cparam
	// if function cannot find given click handler or in found callback item
	// cparam == NULL then function returns false and ***cparam remains unchanged
	// on succes returns true and write found array of cparam(s) in void ***cparam
	bool Callback_getCParam(Callback *callback,
							void	(*click_handler)(struct Widget*, struct Screen*),
							void 	***cparam);
	
#endif
