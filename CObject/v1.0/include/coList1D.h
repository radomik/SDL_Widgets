/*
 * File:   coList1D.h
 * Author: darek
 *
 * Created on 29 październik 2013, 01:14
 */

#ifndef COLIST1D_H
#define	COLIST1D_H

#ifdef	__cplusplus
extern "C" {
#endif
	#include "coObjectModel.h"

	// datatype useful only for inheriting classes
	struct coList1DItem {
		void 				*data;
		struct coList1DItem	*next;
	};

	/**** Class coList1D ****/
	extern const coClass *coList1D_class;
	#define CO_LIST1D(VTHIS) ((coList1D*)VTHIS)
	struct coList1D {
		coObject			_super;		// extends from coObject

		coList1DItem		*current;	// public, better read-only

		coList1DItem		*enumer;	// private
		coList1DItem		*first;		// read-only
		coList1DItem		*last;		// read-only
		size_t				count;		// read-only
		b8					free_data_on_destroy; // read-write default false
	};

	/** Do common initialization of direct super class and of current class object **/
	/** Constructor can be used by classes inheriting from current class           **/
	/** or by self class constructor after create this pointer                     **/
	coList1D* coList1D_new(coList1D *this);

	/** Destructor called by inheriting classes destructors **/
	void coList1D_vdestroy(void *this);

	/// add new data at the end of list (if change_current=true then .current is set to added List1DItem)
	/// on success @param data is returned, on error function returns NULL
	void* coList1D_addLast(coList1D *this, void *data, b8 change_current);

	/// add new data at the beginning of list (if change_current=true then .current is set to added List1DItem)
	/// on success @param data is returned, on error function returns NULL
	void* coList1D_addFirst(coList1D *this, void *data, b8 change_current);

	/// remove coList1DItem with item->data == data, then returns item->data
	/// if either @param data==NULL or list is empty or data doesn't exist in list
	///   then funtion returns NULL pointer
	/// on success @param data (equal deleted item->data) is returned
	void* coList1D_removeByData(coList1D *this, void *data);

	/// remove coList1DItem from given index
	/// if either list is empty or index is above or equal this->count method returns NULL
	/// on success returns .data from coList1Ditem from given index
	void* coList1D_removeByIndex(coList1D *this, size_t index);

	/// remove coList1Ditem pointed by this->current
	/// if .current is NULL or list is empty function returns NULL
	/// otherwise returns this->current->data and this->current is set to NULL
	void* coList1D_removeByCurrent(coList1D *this);

	/// seek this->current to item containing data
	/// returns @param data when data was found
	/// otherwise returns NULL
	void* coList1D_seekCurrentToData(coList1D *this, void *data);

	/// seek this->current to given index
	/// if index is valid returns data from item from given index
	/// otherwise returns NULL
	void* coList1D_seekCurrentToIndex(coList1D *this, size_t index);

	/// Assign this->current = this->first or this->current = this->last
	/// And return data from new current position
	/// if list is empty or .current is already set to .first or .last, methods return NULL
	inline void* coList1D_seekCurrentToFirst(coList1D *this);
	inline void* coList1D_seekCurrentToLast(coList1D *this);

	/// Assign this->current = this->current->{prev|next}
	/// And return data from new current position
	/// if list is empty or .current is already set  to .first or .last, methods return NULL
	void* coList1D_seekCurrentToPrevious(coList1D *this);
	void* coList1D_seekCurrentToNext(coList1D *this);

	/// Replace this->current->data with @param data
	/// On success @param data is returned
	/// On error (empty list, this->current==NULL) NULL is returned
	inline void* coList1D_replaceCurrent(coList1D *this, void *data);

	/// Returns this->count
	inline size_t coList1D_getCount(const coList1D *this);

	/// If list is empty or not
	inline b8 coList1D_isEmpty(const coList1D *this);

	void coList1D_clear(coList1D *this);

	/// Enumeration
	/// @code:
	///	void *data;
	///	coList1D_enumerate(list); // start to enumerate
	///	while (coList1D_hasNext(list)) {  // while has next item
	///		data = coList1D_next(list);  // get next item
	///		printf("Next data is %p\n", data);
	///	}
	/// @endcode
	inline void	coList1D_enumerate(coList1D *this);
	inline b8	coList1D_hasNext(const coList1D *this);
	inline void* 	coList1D_next(coList1D *this);

#ifdef	__cplusplus
}
#endif

#endif	/* COLIST1D_H */

