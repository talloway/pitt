/*
	Jumbles.java Arraylist and jumbled words
	Avery Peiffer 4042056
*/

import java.util.*;
import java.io.*;

public class Jumbles {

	public static void main(String args[]) throws Exception
	{
		if (args.length < 2 )
		{
			System.out.println("\nusage: C:\\> java Jumbles <input filename>\n\n"); // i.e. C:\> java Jumbles jumbles.txt
			System.exit(0);
		}

		ArrayList<String> pairs = new ArrayList<String>();
		BufferedReader dfile = new BufferedReader(new FileReader(args[0]));


		while(dfile.ready())
		{
			String dWord = dfile.readLine();
			pairs.add(canonicalForm(dWord) + " " + dWord);
		}
		Collections.sort(pairs);

		ArrayList<String> dCanons = new ArrayList<String>();
		ArrayList<String> dWords = new ArrayList<String>();
		ArrayList<String> jWords = new ArrayList<String>();
		int index, fIndex;

		for (int i = 0; i < pairs.size(); i++) {

			String line = pairs.get(i);
			String[] linePair = line.split("\\s+");

			dCanons.add(linePair[0]);
			dWords.add(linePair[1]);

		}



		BufferedReader jfile = new BufferedReader(new FileReader(args[1]));

		while(jfile.ready()) {

			String jWord = jfile.readLine();
			jWords.add(jWord);


		}
		Collections.sort(jWords);

		for (int i = 0; i < jWords.size(); i++) {
			System.out.print(jWords.get(i));
			index = Collections.binarySearch(dCanons, canonicalForm(jWords.get(i)));

			if (index >= 0) {
				fIndex = firstIndex(dCanons, index);

				printWords(dCanons, dWords, fIndex);
			}
			else {
				System.out.print("\n");
			}

		}


	}

	static String canonicalForm(String word)
	{
		char[] letters = word.toCharArray(); 
		Arrays.sort(letters);


		return new String(letters);
	}

	static int firstIndex(ArrayList<String> words, int index) {

		if (index == 0) {
			return 0;
		}

		for (int i = index; i > 0; i--) {

			if(!Objects.equals(words.get(i), words.get(i-1))) { // Finds first occurrence of that canonical form
				return i;
			}
		}
		return 0;
	}

	static int printWords(ArrayList<String> canons, ArrayList<String> words, int i) { // PRINT OUT JUMBLE AND THEN DICTIONARY - NOT CANONICAL THEN DICTIONARY

		String refCanon = canons.get(i);

		while(i < canons.size() && Objects.equals(refCanon, canons.get(i))) {

			System.out.print(" " + words.get(i));
			i++;
			}



	System.out.print("\n");
	return 0;
	}
}
