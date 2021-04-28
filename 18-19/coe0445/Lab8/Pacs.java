/*	Pacs.java */

import java.io.*;
import java.util.*;

public class Pacs
{
	public static void main( String args[] ) throws Exception
	{
		BufferedReader pacsFile= new BufferedReader(new FileReader("pacs.txt"));
		BufferedReader membersFile= new BufferedReader(new FileReader("members.txt"));
		TreeMap<String, TreeSet<String>> pacs2members = new TreeMap<String, TreeSet<String>>();
		TreeMap<String, TreeSet<String>> members2pacs = new TreeMap<String, TreeSet<String>>();

		while (membersFile.ready())
		{
			String[] tokens = membersFile.readLine().split("\\s+");
			String member = tokens[0];
			TreeSet<String> pacs = new TreeSet<String>();

			for (int i = 1; i < tokens.length; i++)
			{
				pacs.add(tokens[i]);
			}
			members2pacs.put(member, pacs);
		}

		while (pacsFile.ready())
		{
			String word = pacsFile.readLine();
			TreeSet<String> people = new TreeSet<String>();
			for (String memb : members2pacs.keySet())
			{
				if (members2pacs.get(memb).contains(word)) people.add(memb);
			}
			pacs2members.put(word, people);
		}

		for (String pac : pacs2members.keySet())
		{
			System.out.print(pac + " ");
			for (String ppl : pacs2members.get(pac))
			{
				System.out.print(ppl + " ");
			}
			System.out.println();
		}

	} // END MAIN
} // PACS CLASS
