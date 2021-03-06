/** Compile:
 * gcc -Wall -c coObjectModel.c -o coObjectModel.o
 * ar r libcobject.a coObjectModel.o
 * ranlib libcobject.a
 */

#include "coObjectModel.h"

#define USE_MACROS	1

#ifdef USE_MACROS

#define __CLASSOF(VTHIS) ( (VTHIS) ? (CO_OBJECT(VTHIS)->class) : (NULL)  )

#define __VTABLEOF(VTHIS, VTABLE) 					\
	const coClass *__class = __CLASSOF(VTHIS);		\
	(VTABLE) = __class ? __class->vtable : NULL;


/** Call virtual destructor of current object
 * @param	VTHIS 	(void*) any class directly or indirectly inheriting from coObject
 * 
 * @return  VTHIS if VTHIS != NULL, otherwise NULL
 * @note 	method does not delete allocated space, for dynamic objects use: free(delete(obj));
 */
void* delete(void *vthis)
{
	const void **vtable;
	__VTABLEOF(vthis, vtable);
	if ((vtable) && (vtable[0])) /* if vthis != NULL, object has vtable and destructor=vtable[0] != NULL */
		( (void (*)(void*)) vtable[0] )(vthis);
	return vthis;
}

/** Get class descriptor of object
 * @param	vthis 	(void*) any class directly or indirectly inheriting from coObject
 * @return 	(const coClass*) class descriptor of vthis (NULL if vthis is NULL)
 */
const coClass* classof(const void *vthis)
{
	return __CLASSOF(vthis);
}

/** Get vtable of object
 * @param	vthis 	(void*) any class directly or indirectly inheriting from coObject
 * @return 	(const void**) array of void* virtual function pointers
 */
const void **vtableof(const void *vthis)
{
	const void **vtable;
	__VTABLEOF(vthis, vtable);
	return vtable;
}

/** Get given index of vptr or NULL if:
 * vthis = NULL, vtable == NULL, vtable[index] == NULL
 */
const void *vptrof(const void *vthis, u32 index) {
	const void **vtable;
	__VTABLEOF(vthis, vtable);
	return (vtable) ? vtable[index] : NULL;
}

const char *classname(const void *vthis)
{
	const coClass* class = __CLASSOF(vthis);
	return class ? class->name : "(null class)";
}

/* just for assembly testing */
const void *vptrof_fast_fun(const void *vthis, const u32 index) {
	return CO_OBJECT(vthis)->class->vtable[index];
}

#else

void* delete(void *vthis) {
	const void **vtable = vtableof(vthis);
	if ((vtable) && (vtable[0])) /* if vthis != NULL, object has vtable and destructor=vtable[0] != NULL */
		( (void (*)(void*)) vtable[0] )(vthis);
	return vthis;
}

inline const coClass* classof(const void *vthis) {
	return vthis ? CO_OBJECT(vthis)->class : NULL;
}

inline const void **vtableof(const void *vthis) {
	const coClass *class = classof(vthis);
	return class ? class->vtable : NULL;
}

inline const void* vptrof(const void *vthis, u32 index) {
	const void **vtable = vtableof(vthis);
	return vtable ? vtable[index] : NULL;
}

inline const char* classname(const void *vthis) {
	const coClass *class = classof(vthis);
	return class ? class->name : "(null class)";
}

const void *vptrof_fast_fun(const void *vthis, const u32 index) {
	return CO_OBJECT(vthis)->class->vtable[index];
}

#endif
