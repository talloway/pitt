/*
Part B - Matrix Transposes
Avery Peiffer
aep65
*/

/* 
 * trans.c - Natrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[M][N], int B[N][M]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1 KiB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "support/cachelab.h"

int is_transpose(int M, int N, int A[M][N], int B[N][M]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part I of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[M][N], int B[N][M]) {
// Using blocking as described in Bryant/O'Hallaron pdf
// Split into blocks, transpose normally if elements are not on a diagonal
// Then, move the diagonal at the end of the col 
    int kk;
    int jj;
    int bsize;
    int temp;
    int diag;
    int i;
    int j;
    int diag_cond;

    if (M == 32 && N == 32) {
 	bsize = 8;

	for (kk = 0; kk < N; kk += bsize) {
		for (jj = 0; jj < M; jj += bsize) {
			for (i = kk; i < kk + bsize; i++) {
				for (j = jj; j < jj + bsize; j++) {
					if (i != j) B[j][i] = A[i][j];
					else {
						temp = A[i][j];
						diag = i;
						diag_cond = 1;
					}
				}
				if (diag_cond) B[diag][diag] = temp;
				diag_cond = 0;
			}
		}
	}
	
    }

    else if (M == 64 && N == 64) {
	bsize = 4;
	
	for (kk = 0; kk < N; kk += bsize) {
		for (jj = 0; jj < M; jj += bsize) {
			for (i = kk; i < kk + bsize; i++) {
				for (j = jj; j < jj + bsize; j++) {
					if (i != j) B[j][i] = A[i][j];
					else {
						temp = A[i][j];
						diag = i;
						diag_cond = 1;
					}
				}
				if (diag_cond) B[diag][diag] = temp;
				diag_cond = 0;
				}
			}
		}
	}
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[M][N], int B[N][M]) {
    int i, j, tmp;

    for (i = 0; i < M; i++) {
        for (j = 0; j < N; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[M][N], int B[N][M]) {
    int i, j;

    for (i = 0; i < M; i++) {
        for (j = 0; j < N; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

