import java.io.*;
import java.util.*;

// DO NOT!! IMPORT JAVA.LANG

public class Swamp
{
	static int[][] swamp;  // NOW YOU DON'T HAVE PASS THE REF IN/OUT METHODS

 	public static void main(String[] args) throws Exception
	{
		int[] dropInPt = new int[2]; // row and col will be on the 2nd line of input file;
		swamp = loadSwamp( args[0], dropInPt );
    
		int row=dropInPt[0], col = dropInPt[1];
		String path = ""; // with each step grows to => "[2,3][3,4][3,5][4,6]" etc
		dfs( row, col, path );
	} // END MAIN

 	// JUST FOR YOUR DEBUGGING - DELETE THIS METHOD AND ITS CALL BEFORE HANDIN
	// ----------------------------------------------------------------

	// --YOU-- WRITE THIS METHOD (LOOK AT PRINTSWAMP FOR CLUES)
   	// ----------------------------------------------------------------
	private static int[][] loadSwamp( String infileName, int[] dropInPt  ) throws Exception
	{
    Scanner inputFile = new Scanner(new File(infileName));
    int size;
    int[][] swamp;

    size = inputFile.nextInt();
    dropInPt[0] = inputFile.nextInt();
    dropInPt[1] = inputFile.nextInt();
    swamp = new int[size][size];
    while (inputFile.hasNextInt()) {

     for (int i = 0; i < size; i++) {
       for (int j = 0; j < size; j++) {
         swamp[i][j] = inputFile.nextInt();
       }
     }
   }

   inputFile.close();

	return swamp;

	}

	static void dfs( int row, int col, String path )
	{
    path += "[" + row + "," + col + "]";
    if (row == 0 || col == 0 || row == swamp.length-1 || col == swamp.length-1) {
      System.out.println(path);
      return;
    }

    if (swamp[row-1][col-1] == 1)
    {
      swamp[row][col] = -1;
      dfs(row-1,col-1,path);
      swamp[row][col] = -1;
    }

    if (swamp[row-1][col] == 1) {
      swamp[row][col] = -1;
      dfs(row-1,col,path);
      swamp[row][col] = -1;

    }
    if (swamp[row-1][col+1] == 1) {
      swamp[row][col] = -1;
      dfs(row-1, col+1, path);
      swamp[row][col] = -1;
    }
    if (swamp[row][col+1] == 1) {
      swamp[row][col] = -1;
      dfs(row, col+1, path);
      swamp[row][col] = -1;
    }
    if (swamp[row+1][col+1] == 1) {
      swamp[row][col] = -1;
      dfs(row + 1, col+1,path);
      swamp[row][col] = -1;
    }
    if (swamp[row+1][col] == 1) {
      swamp[row][col] = -1;
      dfs(row+1, col, path);
      swamp[row][col] = -1;

    }
    if (swamp[row+1][col-1] == 1) {
      swamp[row][col] = -1;
      dfs(row+1, col-1, path);
      swamp[row][col] = -1;
    }
    if (swamp[row][col-1] == 1) {
      swamp[row][col] = -1;
      dfs(row, col-1, path);
      swamp[row][col] = -1;
    }
    swamp[row][col] = 1;
		return;
	}
}
