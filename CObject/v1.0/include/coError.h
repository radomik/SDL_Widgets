/*
 * File:   coError.h
 * Author: darek
 *
 * Created on 28 październik 2013, 22:07
 */

#ifndef COERROR_H
#define	COERROR_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "coCommon.h"

inline const char *coGetStringError(const co_error co_err);

#define CO_ERR_NO_ERROR										0
#define CO_ERR_INTRO_FAILED									1
#define CO_ERR_NULL_THIS_POINTER							2
#define CO_ERR_EXIT_REQUESTED								3
#define CO_ERR_NEW_FAILED									4
#define CO_ERR_BAD_ALLOC									5
#define CO_ERR_BAD_PATH										6
#define CO_ERR_CANNOT_OPEN_FILE								7
#define CO_ERR_CANNOT_SEEK_FILE								8
#define CO_ERR_CANNOT_GET_FILE_SIZE							9
#define CO_ERR_FILE_READ_FAILED								10
#define CO_ERR_PARENT_BAD_OR_NULL							11
#define CO_ERR_CHILD_BAD_OR_NULL							12
#define CO_ERR_SURFACE_NULL									13
#define CO_ERR_SURFACE_PIXELS_NULL							14
#define CO_ERR_SURFACE_FORMAT_NULL							15
#define CO_ERR_IS_DESTROYED									16
#define CO_ERR_ARRAY_GROW_ZERO_DEF_SIZE						17
#define CO_ERR_ARRAY_GROW_INTRO_FAILED						18
#define CO_ERR_ARRAY_GROW_DEF_SIZE_ABOVE_MAX				19
#define CO_ERR_ARRAY_GROW_EXCEED_MAX_SIZE					20
#define CO_ERR_ARRAY_GROW_BAD_CALLOC						21
#define CO_ERR_ARRAY_GROW_BAD_REALLOC						22
#define CO_ERR_ARRAY_GROW_BAD_FLAG							23
#define CO_ERR_ARRAY_GROW_LAST_IND_ABOVE_SIZE				24
#define CO_ERR_ARRAY_GROW_NULL_RESULT_ARRAY					25
#define CO_ERR_INDEX_OUT_OF_RANGE							26
#define CO_ERR_CALLBACK_FUNCTION_NOT_FOUND					27
#define CO_ERR_CALLBACK_ARRAY_NOT_EXIST						28
#define CO_ERR_SETWIDGETTOP__passed_null_widget				29
#define CO_ERR_SETWIDGETTOP__have_no_widgets				30
#define CO_ERR_SETWIDGETTOP__screen_not_contain_widget		31
#define CO_ERR_SETWIDGETTOP__screen_not_contain_widget_2	32
#define CO_ERR_OBJECT_failed_to_alloc_objlist				33
#define CO_ERR_OBJECT_failed_to_create_mutex				34
#define CO_ERR_SDL__IMG_Load								35
#define CO_ERR_SDL__zoomSurface								36
#define CO_ERR_SDL__ConvertSurface							37
#define CO_ERR_SDL__CreateRGBSurface						38
#define CO_ERR_SDL__TTF_SizeUTF8							39
#define CO_ERR_SDL__TTF_RenderUTF8_Solid					40
#define CO_ERR_SDL__FillRect								41
#define CO_ERR_SDL__BlitSurface								42
#define CO_ERR_SDL__SDL_Init								43
#define CO_ERR_SDL__FE_Init									44
#define CO_ERR_SDL__SDL_SetVideoMode						45
#define CO_ERR_SDL__TTF_Init								46
#define CO_ERR_SDL__IMG_Init								47
#define CO_ERR_MUTEX_FAILED									48
#define CO_ERR_MEMORY_LEAKS_DETECTED						49
#define CO_ERR_FAILED_ALLOC_MEMORY_INFO						50
#define CO_ERR_MEMORY_PASSED_NULL_INFO						51
#define CO_ERR_DELETED										52
#define CO_ERR_NOT_INITED									53

#ifdef	__cplusplus
}
#endif

#endif	/* COERROR_H */

