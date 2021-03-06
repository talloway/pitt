#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	// base address of axi_regmap as set in the Vivado address editor
	uint32_t *regmap = (uint32_t *) 0x70000000;
	int upper = 4294967295;
	int lower = 0;

	// general tests
	for (size_t i = 0; i < 16; i++) {
			size_t num1 = (rand() % (upper - lower + 1)) + lower;
			size_t num2 = (rand() % (upper - lower + 1)) + lower;
			size_t k = 0;
			regmap[0] = num1;
			regmap[1] = num2;
			regmap[2] = k;
			size_t r = regmap[0];
			size_t o = regmap[1];

			printf("%2zu + %2zu = %3zu, %3zu. (%s)\n", num1, num2, r, o, (r == num1+num2) ? "COR" : "ERR");
	}

	printf("\n");
	for (size_t i = 0; i < 16; i++) {
		for (size_t j = 0; j < 16; j++) {
			size_t k = 1;
			regmap[0] = i;
			regmap[1] = j;
			regmap[2] = k;
			size_t r = regmap[0];
			size_t o = regmap[1];

			printf("%2zu - %2zu = %3d, %3d. (%s)\n", i, j, r, o, (r == i-j) ? "COR" : "ERR");
		}
	}

	printf("\n");
	// edge cases

//	// subtracting same number
//	for (size_t a = 0; a < 1; a++) {
//		size_t i = 240000;
//		size_t j = 240000;
//		size_t k = 1;
//		regmap[0] = i;
//		regmap[1] = j;
//		regmap[2] = k;
//		size_t r = regmap[0];
//		size_t o = regmap[1];
//		printf("%2zu - %2zu = %3d, %3d. (%s)\n", i, j, r, o, (r == i-j) ? "COR" : "ERR");
//	}
//
//
//	// subtracting to negative
//	for (size_t a = 0; a < 1; a++) {
//		size_t i = 240000;
//		size_t j = 240001;
//		size_t k = 1;
//		regmap[0] = i;
//		regmap[1] = j;
//		regmap[2] = k;
//		size_t r = regmap[0];
//		size_t o = regmap[1];
//		printf("%2zu - %2zu = %3d, %3d. (%s)\n", i, j, r, o, (r == i-j) ? "COR" : "ERR");
//	}
}
