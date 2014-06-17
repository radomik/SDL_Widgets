#include "coCommon.h"
#include "coMemory.h"
#include "coUtils.h"
#include "coList1D.h"
#include "coObject.h"

static const void* vtable[] = {
	coList1D_vdestroy
};

static coClass type = {
	.size	= sizeof(coList1D),
	.name	= "coList1D",
	.vtable	= vtable
};
const coClass *coList1D_class = &type;

static inline void coList1D_defaultInit(coList1D *this) {
	this->current = NULL;
	this->enumer = NULL;
	this->first = NULL;
	this->last = NULL;
	this->count = 0;
	this->free_data_on_destroy = false;
}

void coList1D_vdestroy(void *this) {
	coList1D_clear(CO_LIST1D(this));
	coObject_vdestroy(this);
}

coList1D* coList1D_copy(coList1D *this, const coList1D *src) {
	/// @TODO
	return NULL;
}

coList1D* coList1D_new(coList1D *this) {
	// initialize public class instance data
	coObject_new(this);
	
	// set current instance class descriptor to coList1D_class
	class_init(this, &type);

	/** Do common initialization of current class **/
	coList1D_defaultInit(this);
	
	return this;
}

coList1D* coList1D_copy2(coList1D *this, const coList1D *src) {
	// initialize public class instance data
	coObject_new(this);
	
	// set current instance class descriptor to coList1D_class
	class_init(this, &type);
	
	/// @todo copy list content
	
	return this;
}

void* coList1D_addLast(coList1D *this, void *data, b8 change_current) {
	//fprintf(stderr, "coList1D_addLast[this=%p]: data=%p\n", this, data);
	coList1DItem *new_item = malloc(sizeof(coList1DItem));
	if (! new_item) return NULL;
	new_item->data = data;
	new_item->next = NULL;
	if (this->last) {
		this->last->next = new_item;
		this->last = new_item;
	}
	else {
		this->last = this->first = new_item;
	}
	this->count++;
	if (change_current) this->current = new_item;
	return data;
}

void* coList1D_addFirst(coList1D *this, void *data, b8 change_current) {
	coList1DItem *new_item = malloc(sizeof(coList1DItem));
	if (! new_item) return NULL;
	new_item->data = data;
	if (this->first) {
		new_item->next = this->first;
		this->first = new_item;
	}
	else {
		new_item->next = NULL;
		this->last = this->first = new_item;
	}
	if (change_current) this->current = new_item;
	this->count++;
	return data;
}

inline static void coList1D_removeByItem(coList1D *this, coList1DItem *prev, coList1DItem *actual) {
	if (this->current == actual) this->current = actual->next;
	if (prev) {
		prev->next = actual->next;
	}
	else {
		this->first = actual->next;
	}
	if (! actual->next) this->last = prev;

	this->count--;
	free(actual);
}

void* coList1D_removeByData(coList1D *this, void *data) {
	//fprintf(stderr, "coList1D_removeByData[this=%p]: data=%p\n", this, data);
	if (coList1D_isEmpty(this)) return NULL;
	coList1DItem *actual = this->first;
	coList1DItem *prev   = NULL;
	while (actual != NULL) {
		if (actual->data == data) {
			coList1D_removeByItem(this, prev, actual);
			return data;
		}
		prev   = actual;
		actual = actual->next;
	}
	return NULL;
}


void* coList1D_removeByIndex(coList1D *this, size_t index) {
	if (index >= this->count) return NULL;
	coList1DItem 	*prev = NULL;
	coList1DItem 	*actual = this->first;
	void 		*data;
	size_t i = 0; for (; i < index; i++) { prev = actual; actual = actual->next; }
	data = actual->data;
	coList1D_removeByItem(this, prev, actual);
	return data;
}

void* coList1D_removeByCurrent(coList1D *this) {
	if ((! this->current) || (coList1D_isEmpty(this))) return NULL;
	coList1DItem 	*prev = this->first;
	void *data = this->current->data;
	while ((prev) && (prev->next) && (prev->next != this->current)) { prev = prev->next; }
	if ((! prev) || (! prev->next)) return NULL;
	coList1D_removeByItem(this, prev, this->current);
	return data;
}

void* coList1D_seekCurrentToData(coList1D *this, void *data) {
	if (coList1D_isEmpty(this)) return NULL;
	coList1DItem *temp = this->first;
	while (temp != NULL) {
		if (temp->data == data) {
			this->current = temp;
			return data;
		}
		temp = temp->next;
	}
	return NULL;
}

void* coList1D_seekCurrentToIndex(coList1D *this, size_t index) {
	if (index >= this->count) return NULL;
	coList1DItem *temp = this->first;
	size_t i = 0; for (; i < index; i++) temp = temp->next;
	this->current = temp;
	return temp->data;
}

inline void* coList1D_seekCurrentToFirst(coList1D *this) {
	if (this->current == this->first) return NULL;
	this->current = this->first; return (this->first) ? this->first->data : NULL;
}

inline void* coList1D_seekCurrentToLast(coList1D *this) {
	if (this->current == this->last) return NULL;
	this->current = this->last; return (this->last) ? this->last->data : NULL;
}

void* coList1D_seekCurrentToPrevious(coList1D *this) {
	if ((coList1D_isEmpty(this)) || (this->current == this->first)) return NULL;
	coList1DItem 	*prev = this->first;
	while ((prev) && (prev->next) && (prev->next != this->current)) { prev = prev->next; }
	if ((! prev) || (! prev->next)) {
		this->current = NULL;
		return NULL;
	}
	this->current = prev;
	return this->current->data;
}

void* coList1D_seekCurrentToNext(coList1D *this) {
	if ((coList1D_isEmpty(this)) || (this->current == this->last)) return NULL;
	this->current = this->current->next;
	return this->current->data;
}

inline void* coList1D_replaceCurrent(coList1D *this, void *data) {
	if ((! this->current) || (coList1D_isEmpty(this))) return NULL;

	this->current->data = data;
	return data;
}

inline size_t coList1D_getCount(const coList1D *this) { return this->count; }
inline b8 coList1D_isEmpty(const coList1D *this)	{ return (this->count) ? false : true; }

void coList1D_clear(coList1D *this) {
	if (! coList1D_isEmpty(this)) {
		coList1DItem *temp;
		while (this->first != NULL) {
			temp = this->first->next;
			if (this->free_data_on_destroy) free(this->first->data);
			free(this->first);
			this->first = temp;
		}
		this->enumer = this->current = this->last = NULL;
		this->count = 0;
	}
}

inline void	coList1D_enumerate(coList1D *this) {
	this->enumer = this->first;
}

inline b8	coList1D_hasNext(const coList1D *this) {
	return (this->enumer) ? true : false;
}

inline void* coList1D_next(coList1D *this) {
	//coError("coList1D_next", this, "enumer=%p, enumer->data=%p\n", this->enumer, (this->enumer)?this->enumer->data:NULL);
	void *data = this->enumer->data;
	this->enumer = this->enumer->next;
	return data;
}

