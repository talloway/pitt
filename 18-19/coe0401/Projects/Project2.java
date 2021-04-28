/* Project2.java  Dynamic histogram */

import java.io.*;
import java.util.*;

public class Project2
{
	static final int INITIAL_CAPACITY = 10;
	public static void main (String[] args) throws Exception
	{
		// ALWAYS TEST FIRST TO VERIFY USER PUT REQUIRED INPUT FILE NAME ON THE COMMAND LINE
		if (args.length < 1 )
		{
			System.out.println("\nusage: C:\\> java Project2 <input filename>\n\n"); // i.e. C:\> java Project2 dictionary.txt
			System.exit(0);
		}
		int[] histogram = new int[0]; // histogram[i] == # of words of length n

		/* array of String to store the words from the dictionary. 
			We use BufferedReader (not Scanner). With each word read in, examine its length and update word length frequency histogram accordingly.
		*/

		String[] wordList = new String[INITIAL_CAPACITY];
		int wordCount = 0;
		BufferedReader infile = new BufferedReader( new FileReader(args[0]) );
		while ( infile.ready() )
		{
			String word = infile.readLine();
			// # # # # # DO NOT WRITE/MODIFY ANYTHING ABOVE THIS LINE # # # # #

			// Upsizes word list if it is full 
			if (wordCount == wordList.length) {
				wordList = upSizeArr(wordList);
			}
			
			// Adds word into list and increments count
			wordList[wordCount++] = word;
			
			if (histogram.length < (word.length() + 1)) // Upsizes histogram to have length of word length + 1
			{ 
				histogram = upSizeHisto(histogram, (word.length() + 1));
			}
			
			histogram[word.length()]++; // Increments counter in histogram
			
			//  # # # # # DO NOT WRITE/MODIFY ANYTHING BELOW THIS LINE  # # # # #
		} //END WHILE INFILE READY
		infile.close();

		wordList = trimArr( wordList, wordCount );
		System.out.println( "After final trim: wordList length: " + wordList.length + " wordCount: " + wordCount );

		// PRINT WORD LENGTH FREQ HISTOGRAM
		for ( int i = 0; i < histogram.length ; i++ )
			System.out.format("words of length %2d  %d\n", i,histogram[i] );

	} // END main

	// YOU MUST CORRECTLY COPY THE STRING REFS FROM THE OLD ARR TO THE NEW ARR
	static String[] upSizeArr( String[] fullArr )
	{	
		String upsizedStringArray[] = new String[2*fullArr.length]; // Creates new string array twice size of original
		
		for (int i = 0; i < fullArr.length; i++) { // Copies values into upsized array
			upsizedStringArray[i] = fullArr[i];
		}
		
		return upsizedStringArray;
		
	}
	static String[] trimArr( String[] oldArr, int count )
	{
		String trimmedArray[] = new String[count]; 
		for (int i = 0; i < count; i++) // Creates array with no empty indices after all the words have been entered
		{
			trimmedArray[i] = oldArr[i]; 
		}
		return trimmedArray; // Returns trimmed array
	}

	// YOU MUST CORRECTLY COPY THE COUNTS FROM OLD HISTO TO NEW HISTO
	static int[] upSizeHisto( int[] oldArr, int newLength )
	{
		int upSizedHisto[] = new int[newLength]; // Creates new array at specified length
		
		for (int i = 0; i < (oldArr.length); i++) // Copies in values from old array
		{
			upSizedHisto[i] = oldArr[i];
		}
		
		return upSizedHisto; 
		
	}
} // END CLASS PROJECT#2