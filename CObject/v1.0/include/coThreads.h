/*
 * File:   coThreads.h
 * Author: darek
 *
 * Created on 28 październik 2013, 23:33
 */

#ifndef COTHREADS_H
#define	COTHREADS_H

#ifdef	__cplusplus
extern "C" {
#endif
/** Usage (both or Windows and Linux)
 * #include <COBJ/coThreads.h>
 * static coMutex   mutex;
 * static coThread  thread;
 * void *fun_linux(void *arg) {				// Linux thread function //
 * 		// thread function
 *      return NULL;
 * }
 * DWORD WINAPI fun_win( LPVOID lpParam ) { // Windows thread function //
 *
 * }
 * int main() {
 *     //// Mutexes
 *     // initialization:
 *     if (coMutexInit(&mutex)) { handle error }
 *     // locking, unlocking (returns non zero value on error)
 *     coMutexLock(&mutex);
 *     coMutexUnlock(&mutex);
 *     // deinitialization
 *     if (coMutexClear(&mutex)) { handle error }
 *     //// Threads
 *     // init:
 *     if (coThreadInit(&thread, fun_{win|lin}, param_ptr)) { handle error }
 *     // wait (join):
 * 	   if (coThreadWait(&thread)) { handle error }
 * 	   // release
 * 	   coThreadClear(&thread);
 * }
 */
	#ifdef WIN32
		#include <windows.h>
		#include <windef.h>

		/* Mutex variable */
		typedef HANDLE coMutex;
		typedef HANDLE coThread;
		/** Mutexes **/
		// init
		inline int coMutexInit(coMutex *mutex);

		// lock/unlock
		inline int coMutexLock(coMutex *mutex);
		inline int coMutexUnlock(coMutex *mutex);

		// deinit
		inline int coMutexClear(coMutex *mutex);

		/** Threads **/
		// init without id
		inline int coThreadInit(coThread *thread, DWORD WINAPI (*fun)(LPVOID), LPVOID param);
		// init with id (windows specific)
		inline int coThreadInitId(coThread *thread, DWORD WINAPI (*fun)(LPVOID), LPVOID param, DWORD *id);

		// wait for single thread
		inline int coThreadWait(coThread *thread);
		// wait for multiple threads (windows specific)
		// (first param is an array of coThread of size ncount)
		inline int coThreadWaitMultiple(const coThread *threads, DWORD ncount);

		// deinit
		inline void coThreadClear(coThread *thread);

	#elif unix
		#include <pthread.h>

		/* Mutex variable */
		typedef pthread_mutex_t coMutex;
		typedef pthread_t coThread;

		/** Mutexes **/
		// init
		inline int coMutexInit(coMutex *mutex);

		// lock/unlock
		inline int coMutexLock(coMutex *mutex);
		inline int coMutexUnlock(coMutex *mutex);

		// deinit
		inline int coMutexClear(coMutex *mutex);

		/** Threads **/
		// init without id
		inline int coThreadInit(coThread *thread, void* (*fun)(void*), void *param);

		// wait for single thread
		inline int coThreadWait(coThread *thread);

		// only deinit
		// on linux does nothing (keep compatibility with windows)
		inline void coThreadClear(coThread *thread);
	#endif



#ifdef	__cplusplus
}
#endif

#endif	/* COTHREADS_H */

