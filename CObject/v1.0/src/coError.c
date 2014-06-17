#include "coError.h"
#include <stdlib.h>

static const char*	names[] = {
	"CO_ERR_NO_ERROR",
	"CO_ERR_INTRO_FAILED",
	"CO_ERR_NULL_THIS_POINTER",
	"CO_ERR_EXIT_REQUESTED",
	"CO_ERR_NEW_FAILED",
	"CO_ERR_BAD_ALLOC",
	"CO_ERR_BAD_PATH",
	"CO_ERR_CANNOT_OPEN_FILE",
	"CO_ERR_CANNOT_SEEK_FILE",
	"CO_ERR_CANNOT_GET_FILE_SIZE",
	"CO_ERR_FILE_READ_FAILED",
	"CO_ERR_PARENT_BAD_OR_NULL",
	"CO_ERR_CHILD_BAD_OR_NULL",
	"CO_ERR_SURFACE_NULL",
	"CO_ERR_SURFACE_PIXELS_NULL",
	"CO_ERR_SURFACE_FORMAT_NULL",
	"CO_ERR_IS_DESTROYED",
	"CO_ERR_ARRAY_GROW_ZERO_DEF_SIZE",
	"CO_ERR_ARRAY_GROW_INTRO_FAILED",
	"CO_ERR_ARRAY_GROW_DEF_SIZE_ABOVE_MAX",
	"CO_ERR_ARRAY_GROW_EXCEED_MAX_SIZE",
	"CO_ERR_ARRAY_GROW_BAD_CALLOC",
	"CO_ERR_ARRAY_GROW_BAD_REALLOC",
	"CO_ERR_ARRAY_GROW_BAD_FLAG",
	"CO_ERR_ARRAY_GROW_LAST_IND_ABOVE_SIZE",
	"CO_ERR_ARRAY_GROW_NULL_RESULT_ARRAY",
	"CO_ERR_INDEX_OUT_OF_RANGE",
	"CO_ERR_CALLBACK_FUNCTION_NOT_FOUND",
	"CO_ERR_CALLBACK_ARRAY_NOT_EXIST",
	"CO_ERR_SETWIDGETTOP__passed_null_widget",
	"CO_ERR_SETWIDGETTOP__have_no_widgets",
	"CO_ERR_SETWIDGETTOP__screen_not_contain_widget",
	"CO_ERR_SETWIDGETTOP__screen_not_contain_widget_2",
	"CO_ERR_OBJECT_failed_to_alloc_objlist",
	"CO_ERR_OBJECT_failed_to_create_mutex",
	"CO_ERR_SDL__IMG_Load",
	"CO_ERR_SDL__zoomSurface",
	"CO_ERR_SDL__ConvertSurface",
	"CO_ERR_SDL__CreateRGBSurface",
	"CO_ERR_SDL__TTF_SizeUTF8",
	"CO_ERR_SDL__TTF_RenderUTF8_Solid",
	"CO_ERR_SDL__FillRect",
	"CO_ERR_SDL__BlitSurface",
	"CO_ERR_SDL__SDL_Init",
	"CO_ERR_SDL__FE_Init",
	"CO_ERR_SDL__SDL_SetVideoMode",
	"CO_ERR_SDL__TTF_Init",
	"CO_ERR_SDL__IMG_Init",
	"CO_ERR_MUTEX_FAILED",
	"CO_ERR_MEMORY_LEAKS_DETECTED",
	"CO_ERR_FAILED_ALLOC_MEMORY_INFO",
	"CO_ERR_MEMORY_PASSED_NULL_INFO",
	"CO_ERR_DELETED",
	"CO_ERR_NOT_INITED"
};

static const size_t names_size = sizeof(names)/sizeof(char*);

inline const char *coGetStringError(const co_error co_err) {
	return ( ((co_err >= 0) && (co_err < names_size))
				? (names[co_err])
				: (NULL) );
}
