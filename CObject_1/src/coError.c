#include "coError.h"
#include <stdlib.h>

static const char*	names[] = {
	FOREACH_CO_ERROR(GENERATE_STRING)
};

static const size_t names_size = sizeof(names)/sizeof(const char*);

const char *coGetStringError(const co_error co_err) {
	return ( ((co_err >= 0) && (co_err < names_size))
				? (names[co_err])
				: ("unknown error code") );
}
