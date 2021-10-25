#include <stdio.h>
#include <stdlib.h>

int main(void) {
	uint32_t *regmap = (uint32_t *) 0x40000000;
	uint32_t *bram   = (uint32_t *) 0x41000000;

	// Reset signal
	regmap[0] = 1;
	regmap[0] = 0;

	// Program 1
	bram[0] = 0x20070011
	bram[1] = 0x200BFFFD
	bram[2] = 0x00EB5824
	bram[3] = 0xACEB000F
	bram[4] = 0x00000000
	bram[5] = 0x00000000
	bram[6] = 0x00000000
	bram[7] = 0x00000000
	
	// Reset signal
	regmap[0] = 1;
	regmap[0] = 0;

	// Program 2
	bram[0] = 0x2060000C
	bram[1] = 0x34630002
	bram[2] = 0x20800004
	bram[3] = 0x00640019
	bram[4] = 0x00002810
	bram[5] = 0x00003012
	bram[6] = 0x00632021
	bram[7] = 0x00A32022

	// Reset signal
	regmap[0] = 1;
	regmap[0] = 0;

	// Program 3
	bram[0] = 0x2060000C
	bram[1] = 0x00031840
	bram[2] = 0x28830004
	bram[3] = 0x00C41804
	bram[4] = 0x00042043
	bram[5] = 0x8CEB000F
	bram[6] = 0x3C060022
	bram[7] = 0x00A00008

	// Reset signal
	regmap[0] = 1;
	regmap[0] = 0;

	// Program 4
	bram[0] = 0x20600001
	bram[1] = 0x84C40003
	bram[2] = 0x80220002
	bram[3] = 0x70A31821
	bram[4] = 0x14C30082
	bram[5] = 0x04F00884
	bram[6] = 0x08ADBEEF
	bram[7] = 0x00000000	

	return 0;
}
