#include <stdio.h>
#include <stdlib.h>

/* for uintptr_t */
#include <inttypes.h>


int func(char c, int *i) {
	printf("pointer: %p, value=%d\n", i, i ? *i : -1);
	return (int)c;
}

int main(int argc, char **argv) {
	uintptr_t v = func;

	int c = ( (int (*)(char, int*)) v )('a', &argc);
	printf("Ret: %d\n", c);
	return 0;
}

