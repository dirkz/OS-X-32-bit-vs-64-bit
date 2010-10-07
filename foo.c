#include <stdio.h>
/* #include <types.h> */

int main() {
	printf("sizeof(int)\t%ld\n", sizeof(int));
	printf("sizeof(long)\t%ld\n", sizeof(long));
	printf("sizeof(int *)\t%ld\n", sizeof(int *));
	printf("sizeof(size_t)\t %ld\n", sizeof(size_t));
	/* printf("sizeof(intptr_t)\t%ld\n", sizeof(intptr_t)); */
	/* printf("sizeof(uintptr_t)\t%ld\n", sizeof(uintptr_t)); */
	return 0;
}

