import java.io.*;
import java.util.*;

public class Knapsack
{
  public static void main(String[] args) throws Exception
  {

    if (args.length < 1) System.exit(0);

    final int ARRAY_SIZE = 16;

    int TOTAL_SUBSETS = -1;
    TOTAL_SUBSETS >>>=16;
    int sum; int count = 0; String runningset;
    int i; int number; int runningtotal;
    int[] bitArray = new int[ARRAY_SIZE];
    

    Scanner infile = new Scanner(new File(args[0]));

    while (infile.hasNextInt() && count < ARRAY_SIZE)
    {
      bitArray[count] = infile.nextInt();
      count++;
    }

    sum = infile.nextInt();

    for (int j = 0; j < bitArray.length; j++)
    {
      System.out.print(bitArray[j] + " ");
    }
    System.out.println();
    System.out.println(sum);

    for (number=0 ; number < TOTAL_SUBSETS ; ++ number)
		{
      runningtotal = 0;
      runningset = "";
			for (i = 15 ; i >=0  ; --i )
			{
				if ( (number >> i) % 2 == 1 )
         {
          runningtotal += bitArray[15-i];
          runningset += bitArray[15-i] + " ";
         }
			}
      if (runningtotal == sum)
      {
        System.out.println(runningset);

      }
    }

  }
}
