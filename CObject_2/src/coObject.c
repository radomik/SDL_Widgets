#include "coObject.h"
#include "coIObject.h"
#include <stdio.h>
#include <string.h>

static const coIObject override_coIObject = {
	/*.destroy = */coObject_coIObject_vdestroy,
	/*.toString = */coObject_coIObject_vtoString
};


static const void *vtable[] = {
	&override_coIObject
};

static coClass type = {
	/*.size	  = */ sizeof(coObject),
	/*.name	  = */ "coObject",
	/*.vtable = */ vtable
};
const coClass *coObject_class = &type;


/** override void coIObject.destroy(void *vthis) */
void coObject_coIObject_vdestroy(void *vthis) {
	/* method does nothing */
}

/** override const char* coIObject.toString(const void *vthis) 
 * @note to call toString use macro toString() from coObjectModel.h instead */
const char* coObject_coIObject_vtoString(const void *vthis) {
	static char buf[64];
	snprintf(buf, sizeof(buf), "%s @ %p", CO_OBJECT(vthis)->class->name, vthis);
	return buf;
}

coObject* coObject_new(coObject *this) {
	class_init(this, &type);
	return this;
}

coObject* coObject_copy(coObject *this, const coObject *src) {
	class_init(this, &type);
	return this;
}
