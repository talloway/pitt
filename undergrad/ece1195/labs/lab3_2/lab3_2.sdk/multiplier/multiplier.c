#include <stdio.h>
#include <stdlib.h>

int main(void) {
	uint32_t *regmap = (uint32_t *) 0x70000000;

	uint32_t num1 = 6;
	uint32_t num2 = 7;

	regmap[2] = 1;
	regmap[2] = 0;

	printf("values in variables: \n");
	printf("%zu\t", num1);
	printf("%zu\n", num2);

	regmap[0] = num1;
	regmap[1] = num2;
	regmap[2] = 0;

	int count = 0;
	while (regmap[2] == 0) {
		count++;
	}

	printf("clock count: %d\n", count);
	printf("values in regmap: \n");
	printf("%zu\t", regmap[0]);
	printf("%zu\t", regmap[1]);
	printf("%zu\n", regmap[2]);

	num1 = 6;
	num2 = 0;

	regmap[2] = 1;
	regmap[2] = 0;

	printf("values in variables: \n");
	printf("%zu\t", num1);
	printf("%zu\n", num2);

	regmap[0] = num1;
	regmap[1] = num2;
	regmap[2] = 0;

	count = 0;
	while (regmap[2] == 0) {
		count++;
	}

	printf("clock count: %d\n", count);
	printf("values in regmap: \n");
	printf("%zu\t", regmap[0]);
	printf("%zu\t", regmap[1]);
	printf("%zu\n", regmap[2]);

	num1 = 6;
	num2 = 1;

	regmap[2] = 1;
	regmap[2] = 0;

	printf("values in variables: \n");
	printf("%zu\t", num1);
	printf("%zu\n", num2);

	regmap[0] = num1;
	regmap[1] = num2;
	regmap[2] = 0;

	count = 0;
	while (regmap[2] == 0) {
		count++;
	}

	printf("clock count: %d\n", count);
	printf("values in regmap: \n");
	printf("%zu\t", regmap[0]);
	printf("%zu\t", regmap[1]);
	printf("%zu\n", regmap[2]);

	return 0;
}
