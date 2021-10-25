#include <stdio.h>

int main(void)
{
	// base address of axi_regmap as set in the Vivado address editor
	uint32_t *regmap = (uint32_t *) 0x70000000;

	// general tests
	for (size_t i = 0; i < 16; i++) {
		for (size_t j = 0; j < 16; j++) {
			for (size_t k = 0; k < 2; k++) {
				regmap[0] = i;
				regmap[1] = j;
				regmap[2] = k;
				size_t r = regmap[0];
				size_t o = regmap[1];

				printf("%2zu + %2zu = %3zu, %3zu. (%s)\n", i, j, r, o, (r == i+j) ? "COR" : "ERR");
			}
		}
	}
}
