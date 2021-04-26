#include <stdio.h>

int main(void) {
	uint32_t *regmap = (uint32_t *) 0x70000000;

	// Bitwise AND
	regmap[0] = 0x00000001;
	regmap[1] = 0x00000002;
	regmap[2] = 0;
	regmap[3] = 0;
	uint32_t r = regmap[0];
	printf("Bitwise AND: %s\n", (r == (0x00000001 & 0x00000002) ? "COR" : "ERR"));

	// Bitwise OR
	regmap[0] = 0x00000001;
	regmap[1] = 0x00000002;
	regmap[2] = 0;
	regmap[3] = 1;
	r = regmap[0];
	printf("Bitwise OR: %s\n", (r == (0x00000001 | 0x00000002) ? "COR" : "ERR"));

	// Bitwise XOR
	regmap[0] = 0x00000001;
	regmap[1] = 0x00000002;
	regmap[2] = 0;
	regmap[3] = 2;
	r = regmap[0];
	printf("Bitwise XOR: %s\n", (r == 0x00000003 ? "COR" : "ERR"));

	// Bitwise NOR
	regmap[0] = 0x00000001;
	regmap[1] = 0x00000002;
	regmap[2] = 0;
	regmap[3] = 3;
	r = regmap[0];
	printf("Bitwise NOR: %s\n", (r == 0xFFFFFFFC ? "COR" : "ERR"));

	// Signed addition
	regmap[0] = 0xFDCDBACD;
	regmap[1] = 0xF0000000;
	regmap[2] = 0;
	regmap[3] = 4;
	r = regmap[0];
	printf("Signed addition: %s\n", (r == 0xEDCDBACD ? "COR" : "ERR"));

	// Unsigned addition
	regmap[0] = 0x0000FFFF;
	regmap[1] = 0xFFFF0000;
	regmap[2] = 0;
	regmap[3] = 5;
	r = regmap[0];
	printf("Unsigned addition: %s\n", (r == 0xFFFFFFFF ? "COR" : "ERR"));

	// Signed subtraction
	regmap[0] = 0xFFFFFFFF;
	regmap[1] = 0xFFFFFFFF;
	regmap[2] = 0;
	regmap[3] = 6;
	r = regmap[0];
	printf("Signed subtraction: %s\n", (r == 0x00000000 ? "COR" : "ERR"));

	// Unsigned subtraction
	regmap[0] = 0xFDCDBACD;
	regmap[1] = 0xF0000000;
	regmap[2] = 0;
	regmap[3] = 7;
	r = regmap[0];
	printf("Unsigned subtraction: %s\n", (r == 0x0DCDBACD ? "COR" : "ERR"));

	// Set on less than
	regmap[0] = 0x0FFFFFFF;
	regmap[1] = 0xFFFFFFFF;
	regmap[2] = 0;
	regmap[3] = 10;
	r = regmap[0];
	printf("Set on less than: %s\n", (r == 0x00000000 ? "COR" : "ERR"));

	// Set on less than unsigned
	regmap[0] = 0x00000010;
	regmap[1] = 0x00001000;
	regmap[2] = 0;
	regmap[3] = 11;
	r = regmap[0];
	printf("Set on less than unsigned: %s\n", (r == 0x00000001 ? "COR" : "ERR"));

	// Shift left logical
	regmap[0] = 0x00000010;
	regmap[1] = 0x00000000;
	regmap[2] = 2;
	regmap[3] = 12;
	r = regmap[0];
	printf("Shift left logical: %s\n", (r == 0x00000040 ? "COR" : "ERR"));

	// Shift right logical
	regmap[0] = 0x10000004;
	regmap[1] = 0x00000000;
	regmap[2] = 2;
	regmap[3] = 14;
	r = regmap[0];
	printf("Shift right logical: %s\n", (r == 0x04000001 ? "COR" : "ERR"));

	// Shift right arithmetic
	regmap[0] = 0x80000004;
	regmap[1] = 0x00000000;
	regmap[2] = 2;
	regmap[3] = 15;
	r = regmap[0];
	printf("Shift right arithmetic: %s\n", (r == 0xE0000001 ? "COR" : "ERR"));

	return 0;
}
