import java.io.*;
import java.util.*;

public class Pacs // Inverting a map
{
	public static void main( String args[] ) throws Exception
	{
		BufferedReader infile1 = new BufferedReader(new FileReader("members.txt"));
		BufferedReader infile2 = new BufferedReader(new FileReader("PACS.txt"));

		TreeMap<String, TreeSet<String>> org2mems = new TreeMap<String, TreeSet<String>>();

		while (infile2.ready()) {
				org2mems.put(infile2.readLine(), new TreeSet<String>());
		}

		while (infile1.ready()) {
			String[] tokens = infile1.readLine().split("\\s+");
			for (int i = 1; i < tokens.length; i++) {
				if (org2mems.containsKey(tokens[i])) {
					org2mems.get(tokens[i]).add(tokens[0]);
				}
			}
		}

		for (String s : org2mems.keySet()) {
			System.out.print(s + " ");
			TreeSet<String> memsOfOrg = org2mems.get(s);
			for (String t : memsOfOrg) {
				System.out.print(t + " ");
			}
			System.out.println();
		}
	} // END MAIN

} // CLASS

/*
	// Exam problem will be somewhat similar to this, can use code from earlier in class to reference (Pull code out onto desktop)
	// First column will inherently be sorted because it is a tree, same thing with rest of line when declared as below

	map.put(pacName, new TreeSet<String>());

	for every line in second file
		String[] tokens = infile.readLine.split("\\s+"); //kjohnson SAVE_THE_WHALES MADD
		for (i == 1; i < tokens.length; i++) {
			if tokens[i] is a key in the map // if map.containsKey(tokens[i])
				map.get(tokens[i]).add(tokens[0]);
	  }
*/
