#include "Shape.h"

/** dynamically linked destructor implementation */
static void* vdestroy(void *vthis) { Shape_destroy(SHAPE(vthis)); }

/** class descriptor content */
static coClass type = {
	.size = sizeof(Shape),	// sizeof struct
	.name = "Shape",		// name of class
	.vdestroy = vdestroy	// virtual destructor implementation
};
const coClass *Shape_class = &type;	// initialize extern class pointer

/** Constructor 1 
 * used by derived classes and for initializing objects */
Shape* Shape_new(Shape *this) {
	// initialize public class instance data
	coObject_new(this);
	
	// set current instance class descriptor to Shape_class
	class_init(this, &type);
	
	// initialize instance data
	this->minx = this->miny = 0;
	this->pixeldata = malloc(10);
	
	return this;
}

/** Constructor 2 
 * used by derived classes and for initializing objects */
Shape* Shape_newMinXY(Shape *this, int minx, int miny) {
	// initialize public class instance data
	coObject_new(this);
	
	// set current instance class descriptor to Shape_class
	class_init(this, &type);
	
	// initialize instance data
	this->minx = minx;
	this->miny = miny;
	this->pixeldata = malloc(10);
	
	return this;
}

/** Virtual method default implementation
 * Get area of shape
 */
static int Shape_vgetArea(void *vthis) {
	return 0;
}

/** Virtual method interface
 * Get area of shape
 */
int Shape_getArea(Shape *this) {
	
}

/** destructor 
 * used only by derived classes */
Shape* Shape_destroy(Shape *this) {
	// destroy instance data
	free(this->pixeldata);
	
	// destroy public class instance data
	coObject_vdestroy(this);
	
	return this;
}
