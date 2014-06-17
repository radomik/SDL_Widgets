#include "coThreads.h"
#include "coMemory.h"
#include "coCommon.h"
#ifdef WIN32
	/** Mutexes **/
	// init
	inline int coMutexInit(coMutex *mutex) {
		if (mutex) { *mutex = CreateMutex(NULL, FALSE, NULL); return 0; }
		else return -1;
	}

	// lock/unlock
	inline int coMutexLock(coMutex *mutex)
		{ return (mutex)?((int)WaitForSingleObject(*mutex, INFINITE)):(-1); }
	inline int coMutexUnlock(coMutex *mutex)
		{ return (mutex)?((int)ReleaseMutex(*mutex)):(-1); }

	// deinit
	inline int coMutexClear(coMutex *mutex)
		{ return (mutex) ? ((int)CloseHandle(*mutex)) : -1; }

	/** Threads **/
	// init without id
	inline int coThreadInit(coThread *thread, DWORD WINAPI (*fun)(LPVOID), LPVOID param) {
		if (thread) {
			DWORD id; *thread = CreateThread(NULL, 0, fun, param, 0, &id);
			return 0;
		}
		else return -1;
	}
	// init with id (windows specific)
	inline int coThreadInitId(coThread *thread, DWORD WINAPI (*fun)(LPVOID), LPVOID param, DWORD *id) {
		if (thread) {
			*thread = CreateThread(NULL, 0, fun, param, 0, id);
			return 0;
		}
		else return -1;
	}

	// wait for single thread
	inline int coThreadWait(coThread *thread) {
		if (thread) {
			return (int)WaitForMultipleObjects(1, *thread, TRUE, INFINITE);
		}
		else return -1;
	}
	// wait for multiple threads (windows specific)
	// (first param is an array of coThread of size ncount)
	inline int coThreadWaitMultiple(const coThread *threads, DWORD ncount) {
		return (int) WaitForMultipleObjects(ncount, threads, TRUE, INFINITE);
	}

	// deinit
	inline void coThreadClear(coThread *thread) {
		if (thread) { CloseHandle(*thread); }
	}

#elif unix
	/** Mutexes **/
	// init
	inline int coMutexInit(coMutex *mutex)
		{ return (mutex) ? pthread_mutex_init(mutex, NULL) : -1; }

	// lock/unlock
	inline int coMutexLock(coMutex *mutex)
		{ return (mutex)?(pthread_mutex_lock(mutex)):(-1); }
	inline int coMutexUnlock(coMutex *mutex)
		{ return (mutex)?(pthread_mutex_unlock(mutex)):(-1); }

	// deinit
	inline int coMutexClear(coMutex *mutex) {
		return (mutex) ? pthread_mutex_destroy(mutex) : -1;
	}

	/** Threads **/
	// init without id
	inline int coThreadInit(coThread *thread, void* (*fun)(void*), void *param) {
		return (thread) ? pthread_create(thread, NULL, fun, param) : -1;
	}

	// wait for single thread
	inline int coThreadWait(coThread *thread)
		{ return (thread) ? pthread_join(*thread, NULL) : -1; }

	// only deinit
	// on linux does nothing (keep compatibility with windows)
	inline void coThreadClear(coThread *thread) { }


#endif


