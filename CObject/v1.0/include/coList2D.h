/*
 * File:   coList2D.h
 * Author: darek
 *
 * Created on 15 czerwiec 2014, 13:03
 */
#ifndef COLIST2D_H
#define	COLIST2D_H

#ifdef	__cplusplus
extern "C" {
#endif
	#include "coObjectModel.h"

	// datatype useful only for inheriting classes
	struct coList2DItem {
		void 				*data;
		struct coList2DItem	*prev, *next;
	};

	/**** Class coList2D ****/
	extern const coClass *coList2D_class;
	#define CO_LIST2D(VTHIS) ((coList2D*)VTHIS)
	struct coList2D {
		coObject			_super;		// extends from coObject

		coList2DItem		*current;	// public, better read-only

		coList2DItem		*enumer;	// private
		coList2DItem		*first;		// read-only
		coList2DItem		*last;		// read-only
		size_t				count;		// read-only
		b8					free_data_on_destroy; // read-write default false
	};

	/** Do common initialization of direct super class and of current class object **/
	/** Constructor can be used by classes inheriting from current class           **/
	/** or by self class constructor after create this pointer                     **/
	coList2D* coList2D_new(coList2D *this);

	/** Destructor called by inheriting classes destructors **/
	void coList2D_vdestroy(void *this);

	/// add new data at the end of list (if change_current=true then .current is set to added List1DItem)
	/// on success @param data is returned, on error function returns NULL
	void* coList2D_addLast(coList2D *this, void *data, b8 change_current);

	/// add new data at the beginning of list (if change_current=true then .current is set to added List1DItem)
	/// on success @param data is returned, on error function returns NULL
	void* coList2D_addFirst(coList2D *this, void *data, b8 change_current);

	/// remove coList2DItem with item->data == data, then returns item->data
	/// if either @param data==NULL or list is empty or data doesn't exist in list
	///   then funtion returns NULL pointer
	/// on success @param data (equal deleted item->data) is returned
	void* coList2D_removeByData(coList2D *this, void *data);

	/// remove coList2DItem from given index
	/// if either list is empty or index is above or equal this->count method returns NULL
	/// on success returns .data from coList2Ditem from given index
	void* coList2D_removeByIndex(coList2D *this, size_t index);

	/// remove coList2Ditem pointed by this->current
	/// if .current is NULL or list is empty function returns NULL
	/// otherwise returns this->current->data and this->current is set to NULL
	void* coList2D_removeByCurrent(coList2D *this);

	/// seek this->current to item containing data
	/// returns @param data when data was found
	/// otherwise returns NULL
	void* coList2D_seekCurrentToData(coList2D *this, void *data);

	/// seek this->current to given index
	/// if index is valid returns data from item from given index
	/// otherwise returns NULL
	void* coList2D_seekCurrentToIndex(coList2D *this, size_t index);

	/// Assign this->current = this->first or this->current = this->last
	/// And return data from new current position
	/// if list is empty or .current is already set to .first or .last, methods return NULL
	inline void* coList2D_seekCurrentToFirst(coList2D *this);
	inline void* coList2D_seekCurrentToLast(coList2D *this);

	/// Assign this->current = this->current->{prev|next}
	/// And return data from new current position
	/// if list is empty or .current is already set  to .first or .last, methods return NULL
	void* coList2D_seekCurrentToPrevious(coList2D *this);
	void* coList2D_seekCurrentToNext(coList2D *this);

	/// Replace this->current->data with @param data
	/// On success @param data is returned
	/// On error (empty list, this->current==NULL) NULL is returned
	inline void* coList2D_replaceCurrent(coList2D *this, void *data);

	/// Returns this->count
	inline size_t coList2D_getCount(const coList2D *this);

	/// If list is empty or not
	inline b8 coList2D_isEmpty(const coList2D *this);

	void coList2D_clear(coList2D *this);

	/// Enumeration
	/// @code:
	///	void *data;
	///	coList2D_enumerate(list); // start to enumerate
	///	while (coList2D_hasNext(list)) {  // while has next item
	///		data = coList2D_next(list);  // get next item
	///		printf("Next data is %p\n", data);
	///	}
	/// @endcode
	inline void	coList2D_enumerate(coList2D *this);
	inline b8	coList2D_hasNext(const coList2D *this);
	inline void* 	coList2D_next(coList2D *this);

#ifdef	__cplusplus
}
#endif

#endif	/* COLIST2D_H */
