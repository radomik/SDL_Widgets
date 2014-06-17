#include "coCommon.h"
#include "coMemory.h"
#include "coUtils.h"
#include "coList2D.h"
#include "coObject.h"

static const void* vtable[] = {
	coList2D_vdestroy
};

static coClass type = {
	.size	= sizeof(coList2D),
	.name	= "coList2D",
	.vtable	= vtable
};
const coClass *coList2D_class = &type;

static inline void coList2D_defaultInit(coList2D *this) {
	this->current = NULL;
	this->enumer = NULL;
	this->first = NULL;
	this->last = NULL;
	this->count = 0;
	this->free_data_on_destroy = false;
}

void coList2D_vdestroy(void *this) {
	coList2D_clear(CO_LIST2D(this));
	coObject_vdestroy(this);
}

coList2D* coList2D_copy(coList2D *this, const coList2D *src) {
	/// @TODO
	return NULL;
}

coList2D* coList2D_new(coList2D *this) {
	// initialize public class instance data
	coObject_new(this);
	
	// set current instance class descriptor to coList2D_class
	class_init(this, &type);

	/** Do common initialization of current class **/
	coList2D_defaultInit(this);
	
	return this;
}

coList2D* coList2D_copy2(coList2D *this, const coList2D *src) {
	// initialize public class instance data
	coObject_new(this);
	
	// set current instance class descriptor to coList2D_class
	class_init(this, &type);
	
	/// @todo copy list content
	
	return this;
}

void* coList2D_addLast(coList2D *this, void *data, b8 change_current) {
	//fprintf(stderr, "coList2D_addLast[this=%p]: data=%p\n", this, data);
	coList2DItem *new_item = malloc(sizeof(coList2DItem));
	if (! new_item) return NULL;
	new_item->data = data;
	new_item->next = NULL;
	if (this->last) {
		this->last->next = new_item;
		new_item->prev = this->last;
		this->last = new_item;
	}
	else {
		new_item->prev = NULL;
		this->last = this->first = new_item;
	}
	this->count++;
	if (change_current) this->current = new_item;
	return data;
}

void* coList2D_addFirst(coList2D *this, void *data, b8 change_current) {
	coList2DItem *new_item = malloc(sizeof(coList2DItem));
	if (! new_item) return NULL;
	new_item->data = data;
	new_item->prev = NULL;
	if (this->first) {
		this->first->prev = new_item;
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

inline static void coList2D_removeByItem(coList2D *this, coList2DItem *prev, coList2DItem *actual) {
	if (this->current == actual) this->current = actual->next;
	if (prev) {
		prev->next = actual->next;
	}
	else {
		this->first = actual->next;
	}
	if (actual->next) actual->next->prev = prev;
	else this->last = prev;

	this->count--;
	free(actual);
}

void* coList2D_removeByData(coList2D *this, void *data) {
	//fprintf(stderr, "coList2D_removeByData[this=%p]: data=%p\n", this, data);
	if (coList2D_isEmpty(this)) return NULL;
	coList2DItem *actual = this->first;
	coList2DItem *prev   = NULL;
	while (actual != NULL) {
		if (actual->data == data) {
			coList2D_removeByItem(this, prev, actual);
			return data;
		}
		prev   = actual;
		actual = actual->next;
	}
	return NULL;
}


void* coList2D_removeByIndex(coList2D *this, size_t index) {
	if (index >= this->count) return NULL;
	coList2DItem 	*prev = NULL;
	coList2DItem 	*actual = this->first;
	void 		*data;
	size_t i = 0; for (; i < index; i++) { prev = actual; actual = actual->next; }
	data = actual->data;
	coList2D_removeByItem(this, prev, actual);
	return data;
}

void* coList2D_removeByCurrent(coList2D *this) {
	if ((! this->current) || (coList2D_isEmpty(this))) return NULL;
	coList2DItem 	*prev = this->first;
	void *data = this->current->data;
	while ((prev) && (prev->next) && (prev->next != this->current)) { prev = prev->next; }
	if ((! prev) || (! prev->next)) return NULL;
	coList2D_removeByItem(this, prev, this->current);
	return data;
}

void* coList2D_seekCurrentToData(coList2D *this, void *data) {
	if (coList2D_isEmpty(this)) return NULL;
	coList2DItem *temp = this->first;
	while (temp != NULL) {
		if (temp->data == data) {
			this->current = temp;
			return data;
		}
		temp = temp->next;
	}
	return NULL;
}

void* coList2D_seekCurrentToIndex(coList2D *this, size_t index) {
	if (index >= this->count) return NULL;
	coList2DItem *temp = this->first;
	size_t i = 0; for (; i < index; i++) temp = temp->next;
	this->current = temp;
	return temp->data;
}

inline void* coList2D_seekCurrentToFirst(coList2D *this) {
	if (this->current == this->first) return NULL;
	this->current = this->first; return (this->first) ? this->first->data : NULL;
}

inline void* coList2D_seekCurrentToLast(coList2D *this) {
	if (this->current == this->last) return NULL;
	this->current = this->last; return (this->last) ? this->last->data : NULL;
}

void* coList2D_seekCurrentToPrevious(coList2D *this) {
	if ((coList2D_isEmpty(this)) || (this->current == this->first)) return NULL;
	
	if (this->current) this->current = this->current->prev;
	return (this->current) ? this->current->data : NULL;
}

void* coList2D_seekCurrentToNext(coList2D *this) {
	if ((coList2D_isEmpty(this)) || (this->current == this->last)) return NULL;
	this->current = this->current->next;
	return this->current->data;
}

inline void* coList2D_replaceCurrent(coList2D *this, void *data) {
	if ((! this->current) || (coList2D_isEmpty(this))) return NULL;

	this->current->data = data;
	return data;
}

inline size_t coList2D_getCount(const coList2D *this) { return this->count; }
inline b8 coList2D_isEmpty(const coList2D *this)	{ return (this->count) ? false : true; }

void coList2D_clear(coList2D *this) {
	if (! coList2D_isEmpty(this)) {
		coList2DItem *temp;
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

inline void	coList2D_enumerate(coList2D *this) {
	this->enumer = this->first;
}

inline b8	coList2D_hasNext(const coList2D *this) {
	return (this->enumer) ? true : false;
}

inline void* coList2D_next(coList2D *this) {
	//coError("coList2D_next", this, "enumer=%p, enumer->data=%p\n", this->enumer, (this->enumer)?this->enumer->data:NULL);
	void *data = this->enumer->data;
	this->enumer = this->enumer->next;
	return data;
}


