#include "coObjectModel.h"
#include "coError.h"
#include <stdio.h>
#include <stdlib.h>

/** simple class example with inheritance and virtual methods **/

/** these definitons should be placed in types.h */
typedef struct Shape Shape;
typedef struct Circle Circle;
typedef struct Square Square;


/** these definitions should be placed in Shape.h */
//extern const coClass *Shape_class; // this line should be uncommented if placed in Shape.h
#define SHAPE(VTHIS) ((Shape*)VTHIS)
struct Shape {
	coObject	_super;	// important: top-level class in coObject model should inherit from coObject class
	int 		color;
};

// constructors
Shape* Shape_newColor(Shape *this, int color);
Shape* Shape_new(Shape *this);

// non-virtual methods
void Shape_setColor(Shape *this, int color);
int Shape_getColor(const Shape *this); // const method

// virtual destructor implementation
void Shape_vdestroy(void *vthis);

// virtual method FIRST implementation
int Shape_vgetArea(const void *vthis, int count_shape);

/// virtual method interface due to Shape class first declare virtual _vgetArea()
/// here most efficient and error-prone version: [ no check for NULL vthis, class, vtable, vptr ]
/// for more safe usages see coObjectModel.h and .c files also SDL_Widgets/widgets/Widget.h
/// 
/// This macro version compiles to three assembler instructions including call to virtual implementation
#define Shape_getArea(VTHIS, COUNT_SHAPE)	 	\
	( ( (int (*)(void*, int)) vptrof_fast(VTHIS, 1) )(VTHIS, COUNT_SHAPE) )


/** these definitions should be placed in Shape.c */
static const void* Shape_vtable[] = {
	Shape_vdestroy,
	Shape_vgetArea // may use pure virtual with Shape_vtable[1] = NULL
};

static coClass Shape_type = {
	.size	= sizeof(Shape),
	.name	= "Shape",
	.vtable	= Shape_vtable
};
const coClass *Shape_class = &Shape_type;

Shape* Shape_newColor(Shape *this, int color) {
	coObject_new(this);
	class_init(this, &Shape_type);
	printf("%s(this: %s @ %p, color = 0x%08X)\n", __FUNCTION__, classname(this), this, color);
	
	this->color = color;
	
	return this;
}

Shape* Shape_new(Shape *this) {
	coObject_new(this);
	class_init(this, &Shape_type);
	printf("%s(this: %s @ %p)\n", __FUNCTION__, classname(this), this);
	
	this->color = 0;
	
	return this;
}

void Shape_setColor(Shape *this, int color) {
	this->color = color;
}

int Shape_getColor(const Shape *this) {
	return this->color;
}

void Shape_vdestroy(void *vthis) {
	// delete self stuff
	// may be empty but even empty destructor should be declared 
	// is used in a destructor call chain from derived classes
	printf("%s(this: %s @ %p)\n", __FUNCTION__, classname(vthis), vthis);
	SHAPE(vthis)->color = 0;
	
	coObject_vdestroy(vthis);
}

int Shape_vgetArea(const void *vthis, int count_shape) {
	return 0; // may use pure virtual with Shape_vtable[1] = NULL
}

/** these definitions should be placed in Square.h */
//extern const coClass *Square_class; // this line should be uncommented if placed in Square.h
#define SQUARE(VTHIS) ((Square*)VTHIS)
struct Square {
	Shape		_super;	// derived from Shape
	int			side;
};

// constructor
Square* Square_new(Square *this, int side);

// non-virtual methods
void Square_setSide(Square *this, int side);
int Square_getSide(const Square *this); // const method

// virtual destructor implementation
void Square_vdestroy(void *vthis);

// virtual method override implementation
int Square_vgetArea(const void *vthis, int count_shape);


/** these definitions should be placed in Square.c */
static const void* Square_vtable[] = {
	Shape_vdestroy, // Square itself has nothing to destroy (use super class destrcuctor)
	Square_vgetArea  // overrides Shape_vgetArea
};

static coClass Square_type = {
	.size	= sizeof(Square),
	.name	= "Square",
	.vtable	= Square_vtable
};
const coClass *Square_class = &Square_type;

Square* Square_new(Square *this, int side) {
	Shape_new(SHAPE(this));
	class_init(this, &Square_type);
	printf("%s(this: %s @ %p, side: %d)\n", __FUNCTION__, classname(this), this, side);
	
	this->side = side;
	
	return this;
}

void Square_setSide(Square *this, int side) {
	this->side = side;
}

int Square_getSide(const Square *this) {
	return this->side;
}

void Square_vdestroy(void *vthis) {
	// delete self stuff
	// may be empty but even empty destructor should be declared 
	// is used in a destructor call chain from derived classes
	printf("%s(this: %s @ %p)\n", __FUNCTION__, classname(vthis), vthis);
	
	Shape_vdestroy(vthis);
}

int Square_vgetArea(const void *vthis, int count_shape) {
	return count_shape * SQUARE(vthis)->side * SQUARE(vthis)->side;
}

/** these definitions should be placed in Circle.h */
//extern const coClass *Circle_class; // this line should be uncommented if placed in Circle.h
#define CIRCLE(VTHIS) ((Circle*)VTHIS)
struct Circle {
	Shape		_super;	// derived from Shape
	int			radius;
};

#define PI 3.14159265358979323846264338327950288

// constructor
Circle* Circle_new(Circle *this, int radius);

// non-virtual methods
void Circle_setRadius(Circle *this, int radius);
int Circle_getRadius(const Circle *this); // const method

// virtual destructor implementation
void Circle_vdestroy(void *vthis);

// virtual method override implementation
int Circle_vgetArea(const void *vthis, int count_shape);


/** these definitions should be placed in Circle.c */
static const void* Circle_vtable[] = {
	Circle_vdestroy, // override Shape_vdestroy
	Circle_vgetArea  // overrides Shape_vgetArea
};

static coClass Circle_type = {
	.size	= sizeof(Circle),
	.name	= "Circle",
	.vtable	= Circle_vtable
};
const coClass *Circle_class = &Circle_type;

Circle* Circle_new(Circle *this, int radius) {
	Shape_new(SHAPE(this));
	class_init(this, &Circle_type);
	printf("%s(this: %s @ %p, radius: %d)\n", __FUNCTION__, classname(this), this, radius);
	
	this->radius = radius;
	
	return this;
}

void Circle_setRadius(Circle *this, int radius) {
	this->radius = radius;
}

int Circle_getRadius(const Circle *this) {
	return this->radius;
}

void Circle_vdestroy(void *vthis) {
	// delete self stuff
	// may be empty but even empty destructor should be declared 
	// is used in a destructor call chain from derived classes
	printf("%s(this: %s @ %p)\n", __FUNCTION__, classname(vthis), vthis);
	
	Shape_vdestroy(vthis);
}

int Circle_vgetArea(const void *vthis, int count_shape) {
	return count_shape * PI * CIRCLE(vthis)->radius * CIRCLE(vthis)->radius;
}

void static_objects_example() {
	printf(">>>>>>> static_objects_example:\n");
	Circle circle;
	Square square;
	Shape  shape;
	
	Shape_newColor(&shape, 0x123456);
	
	Circle_new(&circle, 5);
	Square_new(&square, 4);
	
	Shape_setColor(SHAPE(&circle), 0xABABAB); // or
	SHAPE(&square)->color = 0xEFEFEF;
	
	printf("\tCreated %8s @ %p [ .color = 0x%08X, .radius = %d ]\n",
		classname(&circle), &circle, Shape_getColor(SHAPE(&circle)), circle.radius);
		
	printf("\tCreated %8s @ %p [ .color = 0x%08X, .a = %d ]\n",
		classname(&square), &square, Shape_getColor(SHAPE(&square)), square.side);
	
	printf("\tCreated %8s @ %p [ .color = 0x%08X ]\n",
		classname(&shape), &shape, Shape_getColor(&shape));
	
	
	Shape *shp1 = SHAPE(&circle);
	Shape *shp2 = SHAPE(&square);
	Shape *shp3 = SHAPE(&shape);
	
	printf("\tshp1: %8s @ %p\n\tshp1.getArea(1) = %d\n\tshp1.getArea(2) = %d\n", 
		classname(shp1), shp1, Shape_getArea(shp1, 1), Shape_getArea(shp1, 2));
		
	printf("\tshp2: %8s @ %p\n\tshp2.getArea(1) = %d\n\tshp2.getArea(3) = %d\n", 
		classname(shp2), shp2, Shape_getArea(shp2, 1), Shape_getArea(shp2, 3));
		
	printf("\tshp3: %8s @ %p\n\tshp3.getArea(1) = %d\n\tshp3.getArea(4) = %d\n", 
		classname(shp3), shp3, Shape_getArea(shp3, 1), Shape_getArea(shp3, 4));
		
	// calls to virtual destructors via delete() are needed for objects to destroy their stuff
	delete(shp1);
	delete(shp2);
	delete(shp3);
}

void dynamic_objects_example() {
	printf(">>>>>>> dynamic_objects_example:\n");
	Circle *circle = Circle_new(new(Circle_class), 5);
	Square *square = Square_new(new(Square_class), 4);
	Shape  *shape  = Shape_newColor(new(Shape_class), 0x123456);
	
	
	Shape_setColor(SHAPE(circle), 0xABABAB); // or
	SHAPE(square)->color = 0xEFEFEF;
	
	printf("\tCreated %8s @ %p [ .color = 0x%08X, .radius = %d ]\n",
		classname(circle), circle, Shape_getColor(SHAPE(circle)), circle->radius);
		
	printf("\tCreated %8s @ %p [ .color = 0x%08X, .a = %d ]\n",
		classname(square), square, Shape_getColor(SHAPE(square)), square->side);
	
	printf("\tCreated %8s @ %p [ .color = 0x%08X ]\n\n",
		classname(shape), shape, Shape_getColor(shape));
	
	
	Shape *shp1 = SHAPE(circle);
	Shape *shp2 = SHAPE(square);
	Shape *shp3 = SHAPE(shape);
	
	printf("\tshp1: %8s @ %p\n\tshp1.getArea(1) = %d\n\tshp1.getArea(2) = %d\n", 
		classname(shp1), shp1, Shape_getArea(shp1, 1), Shape_getArea(shp1, 2));
		
	printf("\tshp2: %8s @ %p\n\tshp2.getArea(1) = %d\n\tshp2.getArea(3) = %d\n", 
		classname(shp2), shp2, Shape_getArea(shp2, 1), Shape_getArea(shp2, 3));
		
	printf("\tshp3: %8s @ %p\n\tshp3.getArea(1) = %d\n\tshp3.getArea(4) = %d\n", 
		classname(shp3), shp3, Shape_getArea(shp3, 1), Shape_getArea(shp3, 4));
	
	// calls to virtual destructors via delete() and release memory 
	// occupied by them (with standard free())
	free(delete(shp1));
	free(delete(shp2));
	free(delete(shp3));
}

int main() {
	static_objects_example();
	dynamic_objects_example();
	
	printf("\nNULL test\n");
	printf("\tdelete(NULL): %p\n", delete(NULL));
	
	printf("\tclassof(NULL): %p\n", classof(NULL));
	
	printf("\tvtableof(NULL): %p\n", vtableof(NULL));
	
	printf("\tvptrof(NULL, 0): %p\n", vptrof(NULL, 0));
	
	printf("\tclassname(NULL): %s\n", classname(NULL));
	
	printf("\n test coError\n");
	printf("CO_ERR_NO_ERROR: %d [%s]\n", CO_ERR_NO_ERROR, coGetStringError(CO_ERR_NO_ERROR));
	printf("CO_ERR_INTRO_FAILED: %d [%s]\n", CO_ERR_INTRO_FAILED, coGetStringError(CO_ERR_INTRO_FAILED));
	printf("CO_ERR_INDEX_OUT_OF_RANGE: %d [%s]\n", CO_ERR_INDEX_OUT_OF_RANGE, coGetStringError(CO_ERR_INDEX_OUT_OF_RANGE));
	
	return 0;
}

