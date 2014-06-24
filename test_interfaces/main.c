#include <stdio.h>
#include <stdlib.h>

/** CObject/include/coTypes.h */
typedef struct coIObject 	coIObject;
typedef struct coClass		coClass;
typedef struct coObject		coObject;

/** CObject/include/coClass.h */
struct coClass {
	const void			**vtable;
	const size_t		size;
	const char 			*name;
};

/** CObject/include/coClass.h */
#define CO_OBJECT(VTHIS) ((coObject*)VTHIS)

struct coObject {
	const 	coClass 	*class;
};

/** CObject/include/coObjectModel.h */
#define vptrof_fast(VTHIS, INDEX) (CO_OBJECT(VTHIS)->class->vtable[INDEX])

/** CObject/include/coIObject.h */

/** This is the major problem of current implementation of interfaces
 *  index should be keeped by any class implementing interface */
#define CO_IOBJECT_VTABLE_INDEX	0

#define CO_IOBJECT(V) ((coIObject*)V)
struct coIObject {
	void (*destroy)(void *vthis);
	const char* (*toString)(const void *vthis);
};

/** extract const coIObject* entry from any const coObject* object pointer
 * @note no checks for NULL: VTHIS, VTHIS->class, VTHIS->class->vtable, 
 * VTHIS->class->vtable[CO_IOBJECT_VTABLE_INDEX]
 */
#define coIObject_vptr(VTHIS) ( CO_IOBJECT( vptrof_fast(VTHIS, CO_IOBJECT_VTABLE_INDEX) ) )

/** Call coIObject.destroy method from any object implementing coIObject.
 * All objects in current coObjectModel should implement coIObject 
 * @note Macro does not perform any checks
 * @see struct coIObject, coIObject_vptr, coObjectModel.h */
#define coIObject_destroy(VTHIS) ( coIObject_vptr(VTHIS)->destroy(VTHIS) )

/** Call coIObject.toString method from any object implementing coIObject.
 * All objects in current coObjectModel should implement coIObject
 * @note Macro does not perform any checks
 * @see struct coIObject, coIObject_vptr, coObjectModel.h */
#define coIObject_toString(VTHIS) ( coIObject_vptr(VTHIS)->toString(VTHIS) )


/** CObject/src/coIObject.c [only for generate assembler code for optimization tests]
 *  use coIObject_METHOD_fast instead */
static void coIObject_destroy_test(void *vthis) {
	CO_IOBJECT( vptrof_fast(vthis, CO_IOBJECT_VTABLE_INDEX) )->destroy(vthis);
}

static const char* coIObject_toString_test(const void *vthis) {
	return CO_IOBJECT( vptrof_fast(vthis, CO_IOBJECT_VTABLE_INDEX) )->toString(vthis);
}

/** CObject/src/coObjectModel.c */
const char *TO_STRING_NULL_THIS_STR = "toString(NULL)";
#define __CLASSOF(VTHIS) ( (VTHIS) ? (CO_OBJECT(VTHIS)->class) : (NULL)  )

#define __VTABLEOF(VTHIS, VTABLE) 					\
	const coClass *__class = __CLASSOF(VTHIS);		\
	(VTABLE) = __class ? __class->vtable : NULL;

/** Call virtual destructor of current object
 * @param	VTHIS 	(void*) any class directly or indirectly inheriting from coObject
 * 
 * @return  VTHIS if VTHIS != NULL, otherwise NULL
 * @note 	method does not delete allocated space, for dynamic objects use: free(delete(obj));
 * 
 * @note	Method does not perform any checks for NULL:
 * 		 VTHIS, VTHIS->class, VTHIS->class->vtable, VTHIS->class->vtable[CO_IOBJECT_VTABLE_INDEX]
 * @see coIObject.h
 * 
 * 23 wiersze delete (w tym: call coIObject_destroy)
 * 25 wierszy delete (w tym użycie makra coIObject_destroy)
 * 
 * 
 */
void* delete(void *vthis)
{
	if (vthis) coIObject_destroy(vthis);
	return vthis;
}



/** SDL_Widgets/common/Types.h */
typedef struct IWidget IWidget;
typedef struct Screen Screen;

/** SDL_Widgets/common/Screen.h */
struct Screen {
	coObject	_super;
};


/** SDL_Widgets/widgets/IWidget.h */
struct IWidget {
	void (*mevent)(void *vthis, Screen *screen);
	void (*refresh)(void *vthis);
};

/** SDL_Widgets/widgets/Widget.h */
struct Widget {
	coObject	_super;
};

void Widget_vdestroy(void *vthis);
const char* Widget_vtoString(const void *vthis);


static const coIObject Widget_override_coIObject = {
	/*.destroy = */Widget_vdestroy,
	/*.toString = */Widget_vtoString
};

/** SDL_Widgets/widgets/Widget.c */
static const void *Widget_vtable[] = {
	&Widget_override_coIObject
};

void Widget_vdestroy(void *vthis) {
	
}

const char* Widget_vtoString(const void *vthis) {
	static char buf[64];
	
	return buf;
}

int main(int argc, char **argv) {
	
	return 0;
}
