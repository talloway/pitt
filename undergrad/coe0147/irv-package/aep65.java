import java.io.*;
import java.util.*;

/*
  Avery Peiffer - Midterm Project High Level Implementation
  To compile: Type 'javac aep65.java' on command line when in correct directory
  To execute: Type 'java aep65 ______' with the name of the text file for the tests to be conducted

  Note that this does not cover all of the same test cases that the MIPS implementation does -
  this implementation was meant to be an early look at the problem and was designed with the four
  test cases from the project files in mind.
*/

public class aep65
{

  public static void main(String[] args) throws Exception
  {
    if (args.length < 1) System.exit(0);

    int numvoters;
    int numcandidates;
    int rowofnumofones;

    Scanner infile = new Scanner(new File(args[0])).useDelimiter("\\s*,\\s*");

    numvoters = Integer.parseInt(infile.next());
    numcandidates = Integer.parseInt(infile.next());
    int[] candidates = new int[numcandidates];

    // Make an array for the candidates so that 'Candidate 4' will still have the same meaning when the rows are removed
    for (int i = 0; i < candidates.length; i++)
    {
      candidates[i] =  i + 1;
    }

    int[] results = new int[2*(numcandidates - 1)];
    int[] goldenresults = new int[2*(numcandidates-1)];
    int itergoldenresults = 0;
    int[][] votingArray = new int[numcandidates][numvoters];

    // Not putting numbers into 2d array in normal fashion - going each column at a time instead of each row
    for (int j = 0; j < votingArray[0].length; j++)
    {
      for (int i = 0; i < votingArray.length; i++)
      {
        votingArray[i][j] = Integer.parseInt(infile.next());
      }
    }

    for (int i = 1; i < numcandidates; i++)
    {
      System.out.println("ROUND " + i);
      System.out.println("PRINTING STARTING ARRAY: ");
      printArray(votingArray);

      int[] numofones = new int[votingArray.length]; // Should be number of rows

      for (int r = 0; r < votingArray.length; r++) // Counts number of ones
      {
        for (int c = 0; c < votingArray[0].length; c++) {
          if (votingArray[r][c] == 1)
          {
            numofones[r]++;
          }
        }
        System.out.println("NUM OF ONES IN ROW " + (r+1) + " = " + numofones[r]);

      }

      int leastnumberofones = numofones[0];
      int mostnumberofones = numofones[0];
      int rowtoelim = 0;
      int roundwinner = 0;

      for (int k = 1; k < numofones.length; k++) // Find the row with the most number of ones and the least number of ones
      {
        if (numofones[k] < leastnumberofones) // 'Strictly less than' means the first occurrence of leastnumberofones is the round loser
        {
          leastnumberofones = numofones[k];
          rowtoelim = k;
        }
        if (numofones[k] > mostnumberofones) // 'Strictly greater than' means the first occurrence of mostnumberofones is the round winner
        {
          mostnumberofones = numofones[k];
          roundwinner = k;
        }
      }

      if (mostnumberofones >= votingArray[0].length/2.0) // A candidate has >= 50% of the votes and the algorithm stops
      {
        goldenresults[itergoldenresults++] = candidates[roundwinner];
        goldenresults[itergoldenresults++] = candidates[rowtoelim];
        break;
      }

      System.out.println("ROW TO ELIMINATE = " + (rowtoelim));

      int[][] newArray = new int[votingArray.length-1][votingArray[0].length];
      System.out.println("NEW ARRAY WITH " + (votingArray.length-1) + " ROWS AND " + (votingArray[0].length) + " COLUMNS.");


      if (rowtoelim == (votingArray.length-1)) // rowtoelim is the last row
      {
        for (int newRow = 0; newRow < newArray.length; newRow++)
        {
          for (int newCol = 0; newCol < newArray[0].length; newCol++)
          {
            if (votingArray[newRow][newCol] > votingArray[rowtoelim][newCol])
            {
              newArray[newRow][newCol] = votingArray[newRow][newCol] - 1;
            }
            else
            {
              newArray[newRow][newCol] = votingArray[newRow][newCol];
            }
          }
        }
      }

      else
      {
      int newRow = 0;
      for (int oldRow = 0; oldRow < votingArray.length; oldRow++)
      {
        if (oldRow == rowtoelim) // We skip over if the oldRow is the rowtoelim
        {
          oldRow++;
        }
        for (int newCol = 0; newCol < newArray[0].length; newCol++)
        {
          if (votingArray[oldRow][newCol] > votingArray[rowtoelim][newCol])
          {
            newArray[newRow][newCol] = votingArray[oldRow][newCol] - 1;
          }
          else
          {
          newArray[newRow][newCol] = votingArray[oldRow][newCol];
          }
        }
        newRow++;
      }
      }

      System.out.println("PRINTING NEW ARRAY: ");
      votingArray = newArray;
      printArray(votingArray);
      System.out.println("END ROUND " + i);
      System.out.println();
      System.out.println();
      System.out.println();
      System.out.println();

      // Update goldenresults with results from the round
      goldenresults[itergoldenresults++] = candidates[roundwinner];
      goldenresults[itergoldenresults++] = candidates[rowtoelim];

      // Remove the losing candidate from the candidates array
      // Since we are essentially deleting the loser from the array, we have a separate array of candidates that will stay consistent
      // Candidate array would be just [1,2,3] for three candidates
      int[] newcandidates = new int[candidates.length-1];
      int newindex = 0;
      for (int m = 0; m < candidates.length; m++)
      {
        if (candidates[m] != rowtoelim+1)
        {
          newcandidates[newindex] = candidates[m];
          newindex++;
        }
      }
      candidates = newcandidates;
    } // END OUTER FOR LOOP

    System.out.println("WINNER FOUND");
    printResults(goldenresults);
  } // END MAIN

  public static void printArray(int[][] arraytoPrint)
  {
    for (int i = 0; i < arraytoPrint.length; i++)
    {
      for (int j = 0; j < arraytoPrint[0].length; j++)
      {
        System.out.print(arraytoPrint[i][j] + "\t");
      }
      System.out.println();
    }
  }

  public static void printResults(int[] goldenresults)
  {
    for (int i = 0; i < goldenresults.length; i++) {
      System.out.print(goldenresults[i] + " ");
    }
    System.out.println();
  }
}
