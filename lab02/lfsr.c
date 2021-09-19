#include "lfsr.h"

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

uint16_t get_bit(uint16_t val, int idx) { return (val >> idx) & 1; }

void lfsr_calculate(uint16_t *reg) {
  /* YOUR CODE HERE */
  int idx[] = {0, 2, 3, 5};
  uint16_t bit = 0;
  for (int i = 0; i < sizeof(idx) / sizeof(int); i++)
    bit ^= get_bit(*reg, idx[i]);
  *reg = (*reg >> 1) | (bit << 15);
}
