/*
Part A - Mystery Caches
*/

#include <stdlib.h>
#include <stdio.h>

#include "support/mystery-cache.h"

/*
 * NOTE: When using access_cache() you do not need to provide a "real" memory
 * addresses. You can use any convenient integer value as a memory address,
 * you should not be able to cause a segmentation fault by providing a memory
 * address out of your programs address space as the argument to access_cache.
 */

/*
   Returns the size (in B) of each block in the cache.
*/
int get_block_size(void) {
  int i = 0;
  access_cache(i++); 
  while (access_cache(i)) {
    i++;
  } 
  return i;
}

/*
   Returns the size (in B) of the cache.
*/
int get_cache_size(int block_size) {
  int i = 0;
  while (1) {
    access_cache(i);
    int j;
  //  printf("i = %d\n", i);
    for (j = i; j >= 0; j-=block_size) {
      if (!access_cache(j)) return i;
    }
    i += block_size;
  }
  return i;
}

/*
   Returns the associativity of the cache.
*/
int get_cache_assoc(int cache_size) {
  int i = 0;
  while (1) {
    access_cache(i);
    int j;
    for (j = i; j >= 0; j-=cache_size) {
      if (!access_cache(j)) return (i/cache_size);
    }
    i += cache_size;
  }
  return i;
}

int main(void) {
  int size;
  int assoc;
  int block_size;

  cache_init(0, 0);

  block_size = get_block_size();
  size = get_cache_size(block_size);
  assoc = get_cache_assoc(size);

  printf("Cache block size: %d bytes\n", block_size);
  printf("Cache size: %d bytes\n", size);
  printf("Cache associativity: %d\n", assoc);

  return EXIT_SUCCESS;
}
