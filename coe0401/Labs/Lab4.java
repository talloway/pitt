/* 
	Lab4.java Canonical form of words using arraylist
	Avery Peiffer 4042056
*/

import java.util.*;
import java.io.*;

public class Lab4 {
	
	public static void main(String args[]) throws Exception 
	{
		if (args.length < 1 ) 
		{
			System.out.println("\nusage: C:\\> java Lab4 <input filename>\n\n"); // i.e. C:\> java Lab4 jumbles.txt
			System.exit(0);
		}
		
		
		BufferedReader infile = new BufferedReader( new FileReader(args[0]) );
		
		
		ArrayList<String> jumbledWords = new ArrayList<String>();
		
		
		while(infile.ready()) 
		{  
			String word = infile.readLine();
			jumbledWords.add(word + " " + canonicalForm(word)); // Add regular word and canonical form of word into array list on one line
		}
		
		Collections.sort(jumbledWords); // Sort array list
		
		for(int i = 0; i < jumbledWords.size(); i++) 
		{
			System.out.println(jumbledWords.get(i));
		}
	}
	
	static String canonicalForm(String word)
	{
		char[] letters = word.toCharArray(); // Sort word to form canonical form 
		Arrays.sort(letters);
		
		return new String(letters);
	}
}