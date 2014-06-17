#ifndef SHAPE_H
#define SHAPE_H

#include "coCommon.h"
#include "coClass.h"

/** class descriptor definied in Shape.c */
extern const coClass *Shape_class;

/** macro for pointer casting */
#define SHAPE(X) ((Shape*)X)

/** public top-level class Shape */
struct Shape 
{
	coObject	_super;		// top level class must inherit from coObject
	
	int 		minx, miny;					// instance data
	void 		*pixeldata;
};

/** Constructor 1 
 * used by derived classes and for initializing objects */
Shape* Shape_new(Shape *this);

/** Constructor 2 
 * used by derived classes and for initializing objects */
Shape* Shape_newMinXY(Shape *this, int minx, int miny);

/** Virtual method interface
 * Get area of shape
 */
int 	Shape_getArea(Shape *this);

/** destructor 
 * used only by derived classes */
Shape* Shape_destroy(Shape *this);

#endif

