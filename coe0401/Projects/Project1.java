// Project1.java

import java.io.*; // BufferedReader
import java.util.*; // Scanner to read from a text file

public class Project1
{
	public static void main (String args[]) throws Exception // we NEED this 'throws' clause
	{
		// ALWAYS TEST FIRST TO VERIFY USER PUT REQUIRED CMD ARGS
		if (args.length < 3)
		{
			System.out.println("\nusage: C:\\> java Lab2 <input file name> <lo>  <hi>\n\n"); 
			// i.e. C:\> java Lab2 L2input.txt 1 30
			System.exit(0);
		}
			String inFileName = args[0];
			
			int lo = Integer.parseInt(args[1]);
			
		    int hi = Integer.parseInt(args[2]);

			
		// STEP #1: OPEN THE INPUT FILE AND COMPUTE THE MIN AND MAX. NO OUTPUT STATMENTS ALLOWED
		Scanner infile = new Scanner( new File(inFileName) );
		int min,max, temp;
		min=max=infile.nextInt(); // WE ASSUME INPUT FILE HAS AT LEAST ONE VALUE
		
		while ( infile.hasNextInt() )
		{
			temp = infile.nextInt();
			
			if (temp < min) {
				min = temp;
			}
			
			else if (temp > max) {
				max = temp;
			}
			
		}
		
		
		System.out.format("min: %d max: %d\n",min,max); // DO NOT REMOVE OR MODIFY IN ANY WAY


		// STEP #2: DO NOT MODIFY THE REST OF MAIN. USE THIS CODE AS IS 
		// WE ARE TESTING EVERY NUMBER BETWEEN LO AND HI INCLUSIVE FOR
		// BEING PRIME AND/OR BEING PERFECT 
		for ( int i=lo ; i<=hi ; ++i)
		{
			System.out.print( i );
			if ( isPrime(i) ) System.out.print( " prime ");
			if ( isPerfect(i) ) System.out.print( " perfect ");
			System.out.println();
		}
	} // END MAIN
	
	// *************** YOU FILL IN THE METHODS BELOW **********************
	
	// RETURNs true if and only if the number passed in is perfect
	static boolean isPerfect( int n )
	{	
		int sumOfDivisors = 1; // Set to 1 because 1 will always be a divisor
		
		if (n == 1) {
			return false;
		}
		
		for (int i = 2; i <= n/2; i++) // Will not have a factor greater than n/2 
		{	
			if (n % i == 0) {
			sumOfDivisors += i;
			}	
		}
		
		if (sumOfDivisors == n) {
			return true;
		}
		
		return false; // (just to make it compile) YOU CHANGE AS NEEDED
	}
	
	// RETURNs true if and only if the number passed in is prime
	static boolean isPrime( int n )
	{	
		if (n == 1) // Having 1 and 2 as exceptions allows the loop below to make less comparisons
		{
			return false;
		}
		
		else if (n == 2) 
		{
			return true;
		}
		
		for (int i = 2; i <= n/2; i++) // Makes a maximum of (n/2) - 1 comparisons to see if number is prime
		{
			if (n % i == 0) 
			{
				return false;
			}
		}
		
		return true;
	}
} // END Project1 CLASS











