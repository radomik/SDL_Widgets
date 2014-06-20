/*      Generic double linked list 
 * 
 *      List2D.h - this file is part of SDL_Widgets
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
#ifndef _List2D_h_
	#define _List2D_h_
	#include "StdDefinitions.h"
	#include "Types.h"
	#include "Object.h"
	
	/** Public definitions and typedefs **/
	//
	
	/** ####################################################### **/
	/**  					class List2D 						**/
	/** Attributes: cloneable  									**/
	#define 			LIST2D(VTHIS) ((List2D*)VTHIS)
	extern const Type  *List2D_t;
	inline const Type  *List2D_gt(); 	/** getter of List2D_t **/
	struct List2D {
		Object				_super;		/** extends from Object **/
		
		List2DItem			*current;	// private
		
		List2DItem			*enumer;	// private
		List2DItem			*first;		// private
		List2DItem			*last;		// private
		size_t				count;		// private
		bool				free_data_on_destroy; // public default false
	};
	/** ####################################################### **/
	
	/** constructors 											**/
	inline List2D* 	List2D_new();
	
	/** initializers											**/
	inline void 	List2D_new2(List2D *this);
	void			List2D_clone2(List2D *this, List2D *src);
	
	/** deinitializer											**/
	void 			List2D_destroy(List2D *this);
	
	/** print fields of only this class							**/
	void 			List2D_print(List2D *this);
	
	/** print fields of this class and all of its super-classes **/
	inline void 	List2D_vprint(void *vthis);
	
	
	/** public objective and static methods						**/

	/// add new data at the end of list (if change_current=true then .current is set to added List2DItem)
	/// on success @param data is returned, on error function returns NULL
	void* List2D_addLast(List2D *this, void *data, bool change_current);

	/// add new data at the beginning of list (if change_current=true then .current is set to added List2DItem)
	/// on success @param data is returned, on error function returns NULL
	void* List2D_addFirst(List2D *this, void *data, bool change_current);

	/// remove List2DItem with item->data == data, then returns item->data
	/// if either @param data==NULL or list is empty or data doesn't exist in list
	///   then funtion returns NULL pointer
	/// on success @param data (equal deleted item->data) is returned
	/// if this->current points to removed item then: 
	/// this->current = this->current->next ? this->current->next : this->current->prev
	void* List2D_removeByData(List2D *this, void *data);

	/// remove List2DItem from given index
	/// if either list is empty or index is above or equal this->count method returns NULL
	/// on success returns .data from List2Ditem from given index
	/// if this->current points to removed item then: 
	/// this->current = this->current->next ? this->current->next : this->current->prev
	void* List2D_removeByIndex(List2D *this, size_t index);

	/// remove List2Ditem pointed by this->current
	/// if .current is NULL or list is empty function returns NULL
	/// otherwise returns this->current->data and this->current is set to NULL
	/// if this->current points to removed item then: 
	/// this->current = this->current->next ? this->current->next : this->current->prev
	void* List2D_removeByCurrent(List2D *this);

	/// seek this->current to item containing data
	/// returns @param data when data was found
	/// otherwise returns NULL
	void* List2D_seekCurrentToData(List2D *this, void *data);

	/// seek this->current to given index
	/// if index is valid returns data from item from given index
	/// otherwise returns NULL
	void* List2D_seekCurrentToIndex(List2D *this, size_t index);

	/// Assign this->current = this->first or this->current = this->last
	/// And return data from new current position
	/// if list is empty or .current is already set to .first or .last, methods return NULL
	inline void* List2D_seekCurrentToFirst(List2D *this);
	inline void* List2D_seekCurrentToLast(List2D *this);

	/// Assign this->current = this->current->{prev|next}
	/// And return data from new current position
	/// if list is empty or .current is already set  to .first or .last, methods return NULL
	void* List2D_seekCurrentToPrevious(List2D *this);
	void* List2D_seekCurrentToNext(List2D *this);

	/// Replace this->current->data with @param data
	/// On success @param data is returned
	/// On error (empty list, this->current==NULL) NULL is returned
	inline void* List2D_replaceCurrent(List2D *this, void *data);

	/// Returns this->count
	inline size_t List2D_getCount(List2D *this);
	
	/// If list is empty or not
	inline bool List2D_isEmpty(List2D *this);
	
	/// Enumeration
	/// @code:
	///	void *data;
	///	List2D_enumerate(list); // start to enumerate
	///	while (List2D_hasNext(list)) {  // while has next item
	///		data = List2D_next(list);  // get next item
	///		printf("Next data is %p\n", data);
	///	}
	/// @endcode
	inline void	List2D_enumerate(List2D *this);
	inline bool	List2D_hasNext(List2D *this);
	inline void* 	List2D_next(List2D *this);

#endif
