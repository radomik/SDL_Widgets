#ifndef CIRCLE_H
#define CIRCLE_H

#include "coCircle.h"

/** class descriptor definied in Circle.c */
extern const coClass *Circle_class;

/** macro for pointer casting */
#define CIRCLE(X) ((Circle*)X)

/** public class Circle derived from Shape */
struct Circle 
{
	Shape	_super;			// base class struct
	
	int 	r;				// instance data
};

/** Constructor 1 
 * used by derived classes and for initializing objects */
Circle* Circle_new(Circle *this);

/** Constructor 2 
 * used by derived classes and for initializing objects */
Circle* Circle_newMinXYR(Circle *this, int minx, int miny, int r);

/** destructor 
 * used only by derived classes */
Circle* Circle_destroy(Circle *this);

#endif


