#include "coObjectModel.h"

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
 */
void* delete(void *vthis)
{
	if (vthis) coIObject_destroy(vthis);
	return vthis;
}

/** Get information in form "<typename> @ <this pointer> 'toString()'"
 * @param	VTHIS 	(void*) any class directly or indirectly inheriting from coObject
 * @note length of overall message is limited to MAX_FULL_STRING_LEN characters
 * 
 * @return Full description of object
 */
const char *toFullString(const void *vthis) {
	static char buf[MAX_FULL_STRING_LEN+1];
	if (! vthis) {
		return "<None> @ (null) ''";
	}
	else {
		snprintf(buf, sizeof(buf), "%s @ %p '%s'", classname(vthis), vthis, toString(vthis));
		return buf;
	}
}

/** Get class descriptor of object
 * @param	vthis 	(void*) any class directly or indirectly inheriting from coObject
 * @return 	(const coClass*) class descriptor of vthis (NULL if vthis is NULL)
 */
/*static const coClass* classof_test(const void *vthis)
{
	return __CLASSOF(vthis);
}*/

/** Get vtable of object
 * @param	vthis 	(void*) any class directly or indirectly inheriting from coObject
 * @return 	(const void**) array of void* virtual function pointers
 */
/*static const void **vtableof_test(const void *vthis)
{
	const void **vtable;
	__VTABLEOF(vthis, vtable);
	return vtable;
}*/

/** Get given index of vptr or NULL if:
 * vthis = NULL, vtable == NULL, vtable[index] == NULL
 */
/*static const void *vptrof_test(const void *vthis, u32 index) {
	const void **vtable;
	__VTABLEOF(vthis, vtable);
	return (vtable) ? vtable[index] : NULL;
}

static const char *classname_test(const void *vthis)
{
	const coClass* class = __CLASSOF(vthis);
	return class ? class->name : "(null class)";
}*/

/* just for assembly testing */
/*static const void *vptrof_test_2(const void *vthis, const u32 index) {
	return CO_OBJECT(vthis)->class->vtable[index];
}*/
