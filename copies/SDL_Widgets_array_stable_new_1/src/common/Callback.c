/*
 *      CallBack.c - this file is part of SDL_Widgets
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

#include "StdDefinitions.h"
#include "Static.h"
#include "Callback.h"
#include "Memory.h"
#include "Object.h"
#include "perr.h"

static const char* type = "Callback";

/** Current destructor (virtual) use delete() handler to call it */
static void Callback_vdestroy(void *vthis) {
	Callback *this = (Callback*) vthis;
	
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p", "Callback_vdestroy", Object_getType((Object*)vthis), vthis);
	
	/* Delete self stuff */
	if (this->cb) {
		uint i = 0; 
		for (; i < this->cb_size; i++) {
			if (this->cb[i].cparam) free(this->cb[i].cparam);
		}
		free(this->cb);
		this->cb = NULL;
	}
	this->cb_size = 0;
	
	/* Delete parent object */
	Object_destroy((Object*)vthis);
}

Callback* Callback_new(	Callback	*this, 
						void		(*click_handler[])(struct Widget*, struct Screen*),
						uint		size
						) {
	if (! this) {
		fprintf(stderr, "Callback_new: Passed NULL this pointer. click_handler=%p, size=%u\n", click_handler, size);
		return NULL;
	}
	
	/* Initialize parent object and virtual destructor */
	Object_init_type((Object*)this, Callback_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Callback_new", Object_getType((Object*)this), this);
	
	/* Default fields values */
	this->cb		= NULL;
	this->cb_size	= 0;
	
	/* Check other parameters */
	if ((! size) || (! click_handler)) {
		fprintf(stderr, "Callback_new: Passed NULL click_handler(%p) array or size(%u) is equal zero\n", click_handler, size);
		return this;
	}
	
	/* Allocate this.cb array */
	this->cb = calloc(size, sizeof(struct CallbackItem));
	if (! this->cb) {
		fprintf(stderr, "Callback_new: Failed to allocate this.cb array.");
		return this;
	}
	
	/* Set size of this.cb */
	this->cb_size = size;
	
	/* Initialize any item or this.cb array */
	uint i = 0;
	for (; i < size; i++) {
		this->cb[i].click_handler = click_handler[i];
		//this->cb[i].cparam = NULL;	// already done by calloc above
		//this->cb[i].cparam_size = 0;	// ...
	}
	return this;
}

// Add parameter to existing click_handler in callback array
perr Callback_addParameter(		Callback *this,
								void	(*click_handler)(struct Widget*, struct Screen*),
								void 	*parameter,
								uint	position,
								uint	*startPos
								) {
	if ((! this) || (! this->cb) || (! this->cb_size) || (! click_handler) || (! parameter)) {
		fprintf(stderr, "Callback_addParameter: Check parameters: this(%p), this->cb(%p), click_handler(%p), parameter(%p)\
cannot be NULL, this->cb_size(%u) cannot be 0\n",
			this, (this)?this->cb:NULL, click_handler, parameter, (this)?this->cb_size:0);
		return E_INTRO_FAILED;
	}
	
	/* Seek for given parameter pointer in array */
	uint i = ((startPos) && (*startPos < this->cb_size)) ? *startPos : 0;
	for (; i < this->cb_size; i++) {
		if (this->cb[i].click_handler == click_handler) break;
	}
	
	if (i == this->cb_size) {
		fprintf(stderr, "Callback_addParameter(this=%p): Cannot find callback function of pointer %p\n", this, click_handler);
		return E_CALLBACK_FUNCTION_NOT_FOUND;
	}
	
	/* Add new parameter to callback[i].click_handler */
	if (position >= this->cb[i].cparam_size) {		// grow array of cparams if needed
		perr e;
		void** new_array = Static_growArray(	&e,							// error management
												this->cb[i].cparam, 		// array to grow
												&(this->cb[i].cparam_size),	// current size
												position,					// position of adding
												this->cb[i].cparam_size,	// count to restore
												(uint)8, 					// default size
												(uint)0xFFFFFFFF,			// maximum size
												sizeof(void*));				// sizeof item
		if (! new_array) {
			fprintf(stderr, "Callback_addParameter(this=%p): Fatal error occured while creating/growing callback[i].cparam array. Method Static_growArray exited with error %s\n", this, perr_getName(e));
			return e;
		}
		else 
			this->cb[i].cparam = new_array;
	}
	
	if (this->cb[i].cparam[position])
		fprintf(stderr, "Callback_addParameter(this=%p): WARNING: replacing parameter %p with parameter %p\
at position %hu in click_handler[i=%u]=%p\n", this, this->cb[i].cparam[position], parameter, position, i, this->cb[i].click_handler);
	
	/* Assign parameter */
	this->cb[i].cparam[position] = parameter;
	
	if (startPos) *startPos = i;
	
	return E_NO_ERROR;
}

// Search for given click handler and returns cparam array in void ***cparam
// if function cannot find given click handler or in found callback item
// cparam == NULL then function returns false and ***cparam remains unchanged
// on succes returns true and write found array of cparam(s) in void ***cparam
bool Callback_getCParam(Callback	*this,
						void		(*click_handler)(struct Widget*, struct Screen*),
						void 		***cparam) {
	uint i = 0; for (; i < this->cb_size; i++) {
		if (this->cb[i].click_handler == click_handler) {
			//fprintf(stderr, "Callback_getCParam() Found matching callback %p\n", click_handler);
			if (! this->cb[i].cparam) {
				//fprintf(stderr, "Callback_getCParam() But array cparam == NULL\n");
				return false;
			}
			else {
				*cparam = this->cb[i].cparam;
				//fprintf(stderr, "Callback_getCParam() Returning cparam = %p\n", this->cb[i].cparam);
				return true;
			}
		}
	}
	return false;
}
