/*      Generic single linked list 
 * 
 *      List1D.h - this file is part of SDL_Widgets
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
#ifndef _List1D_h_
	#define _List1D_h_
	#include "StdDefinitions.h"
	#include "Types.h"
	#include "Object.h"
	
	/** Public definitions and typedefs **/
	//
	
	/** ####################################################### **/
	/**  					class List1D 						**/
	/** Attributes: cloneable  									**/
	#define 			LIST1D(VTHIS) ((List1D*)VTHIS)
	extern const Type  *List1D_t;
	inline const Type  *List1D_gt(); 	/** getter of List1D_t **/
	struct List1D {
		Object				_super;		/** extends from Object **/
		
		List1DItem			*current;				// private
		
		List1DItem			*enumer;				// private
		List1DItem			*first;					// private
		List1DItem			*last;					// private
		size_t				count;					// private
		bool				free_data_on_destroy; 	// public default false
	};
	/** ####################################################### **/
	
	/** constructors 											**/
	inline List1D* 	List1D_new();
	
	/** initializers											**/
	inline void 	List1D_new2(List1D *this);
	void			List1D_clone2(List1D *this, List1D *src);
	
	/** deinitializer											**/
	void 			List1D_destroy(List1D *this);
	
	/** print fields of only this class							**/
	void 			List1D_print(List1D *this);
	
	/** print fields of this class and all of its super-classes **/
	inline void 	List1D_vprint(void *vthis);
	
	
	/** public objective and static methods						**/
	
	/// add new data at the end of list (if change_current=true then .current is set to added List1DItem)
	/// on success @param data is returned, on error function returns NULL
	void* 			List1D_addLast(List1D *this, void *data, bool change_current);

	/// add new data at the beginning of list (if change_current=true then .current is set to added List1DItem)
	/// on success @param data is returned, on error function returns NULL
	void* 			List1D_addFirst(List1D *this, void *data, bool change_current);

	/// remove List1DItem with item->data == data, then returns item->data
	/// if either @param data==NULL or list is empty or data doesn't exist in list
	///   then funtion returns NULL pointer
	/// on success @param data (equal deleted item->data) is returned
	void* 			List1D_removeByData(List1D *this, void *data);

	/// remove List1DItem from given index
	/// if either list is empty or index is above or equal this->count method returns NULL
	/// on success returns .data from List1Ditem from given index
	void* 			List1D_removeByIndex(List1D *this, size_t index);

	/// remove List1Ditem pointed by this->current
	/// if .current is NULL or list is empty function returns NULL
	/// otherwise returns this->current->data and this->current is set to NULL
	void* 			List1D_removeByCurrent(List1D *this);

	/// seek this->current to item containing data
	/// returns @param data when data was found
	/// otherwise returns NULL
	void* 			List1D_seekCurrentToData(List1D *this, void *data);

	/// seek this->current to given index
	/// if index is valid returns data from item from given index
	/// otherwise returns NULL
	void* 			List1D_seekCurrentToIndex(List1D *this, size_t index);

	/// Assign this->current = this->first or this->current = this->last
	/// And return data from new current position
	/// if list is empty or .current is already set to .first or .last, methods return NULL
	inline void* 	List1D_seekCurrentToFirst(List1D *this);
	inline void* 	List1D_seekCurrentToLast(List1D *this);

	/// Assign this->current = this->current->{prev|next}
	/// And return data from new current position
	/// if list is empty or .current is already set  to .first or .last, methods return NULL
	void* 			List1D_seekCurrentToPrevious(List1D *this);
	void* 			List1D_seekCurrentToNext(List1D *this);

	/// Replace this->current->data with @param data
	/// On success @param data is returned
	/// On error (empty list, this->current==NULL) NULL is returned
	inline void* 	List1D_replaceCurrent(List1D *this, void *data);

	/// Returns this->count
	inline size_t 	List1D_getCount(List1D *this);
	
	/// If list is empty or not
	inline bool 	List1D_isEmpty(List1D *this);
	
	/// Enumeration
	/// @code:
	///	void *data;
	///	List1D_enumerate(list); // start to enumerate
	///	while (List1D_hasNext(list)) {  // while has next item
	///		data = List1D_next(list);  // get next item
	///		printf("Next data is %p\n", data);
	///	}
	/// @endcode
	inline void	List1D_enumerate(List1D *this);
	inline bool	List1D_hasNext(List1D *this);
	inline void* 	List1D_next(List1D *this);

#endif

