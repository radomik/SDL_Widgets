#include "Shape.h"
#include "Circle.h"

void printobj(void *obj, const char *prefix) {
	const coClass *class = classof(obj);
	
	if (! class) 
		printf("printobj: [%s] obj: %p, class: NULL\n", prefix, obj);
	else
		printf("printobj: [%s] obj: %p, class: %p, class.name: %s, class.size: %lu, class.vdestroy: %p\n",
			prefix, obj, class, class->name, class->size, class->vdestroy);
		
}

int main() {
	Shape shape1;
	Circle circle1;
	
	Shape *shape2;
	Circle *circle2;
	
	/** Create static objects (not automatic like in C++) */
	Shape_newMinXY(&shape1, 3, 4);
	
	printobj(&shape1, "shape1");
	printf("shape1.minx: %d, shape1.miny: %d, shape1.pixeldata: %p\n",
		shape1.minx, shape1.miny, shape1.pixeldata);
	
	Circle_newMinXYR(&circle1, 5, 6, 7);
	printobj(&circle1, "circle1");
	
	printf("circle1.minx: %d, circle1.miny: %d, circle1.pixeldata: %p, circle1.r: %d\n",
		SHAPE(&circle1)->minx, SHAPE(&circle1)->miny, SHAPE(&circle1)->pixeldata, circle1.r);
	
	/** Create dynamic objects */
	shape2 = Shape_newMinXY(new(Shape_class), 33, 44);
	
	printobj(shape2, "shape2");
	printf("shape2.minx: %d, shape2.miny: %d, shape2.pixeldata: %p\n",
		shape2->minx, shape2->miny, shape2->pixeldata);
	
	Circle_newMinXYR(new(Circle_class), 5, 6, 7);
	printobj(circle2, "circle2");
	
	printf("circle2.minx: %d, circle2.miny: %d, circle2.pixeldata: %p, circle2.r: %d\n",
		SHAPE(circle2)->minx, SHAPE(circle2)->miny, SHAPE(circle2)->pixeldata, circle2->r);
	
	/** Delete static objects */
	delete(shape1);
	delete(circle1);
	
	/** Delete dynamic objects */
	free(delete(shape2));
	free(delete(circle2));
	
	return 0;
}
