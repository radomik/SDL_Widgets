#include "Circle.h"

/** dynamically linked destructor implementation */
static void* vdestroy(void *vthis) { return Circle_destroy(CIRCLE(vthis)); }

/** class descriptor content */
static coClass type = {
	.size = sizeof(Circle),	// sizeof struct
	.name = "Circle",		// name of class
	.vdestroy = vdestroy	// virtual destructor implementation
};
const coClass *Circle_class = &type;	// initialize extern class pointer

/** Constructor 1 
 * used by derived classes and for initializing objects */
Circle* Circle_new(Circle *this) {
	// initialize public class instance data
	Shape_new(SHAPE(this));
	
	// set current instance class descriptor to Circle_class
	class_init(this, &type);
	
	// initialize instance data
	this->r = 0;
	

	return this;
}

/** Constructor 2 
 * used by derived classes and for initializing objects */
Circle* Circle_newMinXYR(Circle *this, int minx, int miny, int r) {
	// initialize public class instance data
	Shape_newMinXY(SHAPE(this), minx, miny);
	
	// set current instance class descriptor to Circle_class
	class_init(this, &type);
	
	// initialize instance data
	this->r = 0;
	
	return this;
}

/** destructor 
 * used only by derived classes */
Circle* Circle_destroy(Circle *this) {
	// destroy Circle instance data
	this->r = 0; // silly example
	
	// destroy public class instance data
	Shape_destroy(SHAPE(this));
	
	return this;
}
