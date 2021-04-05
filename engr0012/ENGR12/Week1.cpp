
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	printf("ENGR 12\nL03\nMandala 2PM\nClay Countess, Klaire Dickey, Avery Peiffer\n03/20/2018\n\n");
	printf("\nThe first \\n puts the text on a new line, the double slash by the n is\nneeded to allow the printing of the \\n in this printout. If you want to add\na tab in the print out you insert \\t \tit will tab the text as shown here.\n\n");
	printf("Sometimes it is nice to print out text in \"double quotes\", this requires the\ndouble quote escape sequence \\\". Sometimes it is nice to print out text in\n\'single quotes\' this requires the single quote escape sequence \\'.\n\n");
	printf("Want to print out a %% sign you need to use the escape sequence \"%%%%\", do you\nunderstand\nthe code required to print this sequence out\\?\n\n");
	printf("Finally, notice all the single slashes \'\\' at the end of each line. These\nallow you to wrap the printf string to the next line for easy or reading.\nMake a bell ring at this point.\tDid you hear the bell ring?\n");
	
	int A = 1;
	double B = 2.34;
	char C = 'f';

	printf("\n\na=%d,b=%lf,c=%c\n", A, B, C);
	printf("a=%d,b=%d,c=%d\n", A, B, C);
	printf("a=%lf,b=%lf,c=%lf\n", A, B, C);
	printf("a=%c,b=%c,c=%c\n", A, B, C);

	int G[4] = { 3, 5, 8, 9 };
	int H[2][2] = { 4.4, 5.5, 6.6, 7.7 };
	printf("\n\nG = %d %d %d %d\n\nH = %d %d\n%d %d", G[0], G[1], G[2], G[3], H[0][0], H[0][1], H[1][0], H[1][1]);
	system("pause");
}