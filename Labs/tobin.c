#include <stdio.h>
#include <stdint.h>

int main(int argc, char *argv[]) {

  uint8_t one = 1;
  uint8_t i, j;

  FILE *f = fopen(argv[1], "r");

  while (fread(&i, 1, 1, f)) 
    for (j = 8; j > 0; j--)
      printf("%d", (i & (one << (j - 1)) ? 1 : 0));

  printf("\n");

  return 0;
}
