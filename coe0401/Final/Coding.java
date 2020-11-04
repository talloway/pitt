import java.io.*;
import java.util.*;

public class Coding
{
	public static void main(String args[]) throws Exception
	{
			BufferedReader athlete2sportsFile = new BufferedReader( new FileReader( "athlete2sports.txt" ) );
			BufferedReader whoPlayedFile = new BufferedReader( new FileReader( "whoPlayed.txt" ) );

			TreeMap<String, TreeSet<String>> athlete2sports = new TreeMap<String, TreeSet<String>>();
			TreeMap<String, TreeSet<String>> sport2athletes = new TreeMap<String, TreeSet<String>>();
			TreeSet<String> allSports = new TreeSet<String>();

			TreeMap<String, TreeSet<String>> whoPlayed = new TreeMap<String, TreeSet<String>>();


			// CODE HERE TO PRINT SECTION #1 OUTPUT
			while (athlete2sportsFile.ready()) {
				String[] tokens = athlete2sportsFile.readLine().split("\\s+");
				TreeSet<String> sports = new TreeSet<String>();
				for (int i = 1; i < tokens.length; i++) {
					String sport = tokens[i];
					sports.add(tokens[i]);

					// Section 2
					TreeSet<String> newsport = new TreeSet<String>();
					if (!sport2athletes.containsKey(sport)) {
						newsport.add(tokens[0]);
					}
					else {
						newsport = sport2athletes.get(sport);
						newsport.add(tokens[0]);
					}
					sport2athletes.put(tokens[i], newsport);
				}
				athlete2sports.put(tokens[0], sports);
			}
			athlete2sportsFile.close();

			for (String s : athlete2sports.keySet()) {
				TreeSet<String> asports = athlete2sports.get(s);
				System.out.print(s + " ");
				for (String t : asports) {
					System.out.print(t + " ");
				}
				System.out.println();
			}

			// CODE HERE TO PRINT SECTION #2 OUTPUT
			System.out.println(); // LEAVE THIS HERE TO SEPARATE SECTIONS
			for (String u : sport2athletes.keySet()) {
				System.out.print(u + " ");
				TreeSet<String> sathletes = sport2athletes.get(u);
				for (String v : sathletes) {
					System.out.print(v + " ");
				}
				System.out.println();
			}


			// CODE HERE TO PRINT SECTION #3 OUTPUT
			System.out.println(); // LEAVE THIS HERE TO SEPARATE SECTIONS
			while (whoPlayedFile.ready()) {
				String line = whoPlayedFile.readLine();
				String[] tokens = line.split("\\s+");
				ArrayList<String> toRemove = new ArrayList<String>();
				TreeSet<String> runninglist = sport2athletes.get(tokens[0]);
				TreeSet<String> sports = new TreeSet<String>();
				for (int i = 1; i < tokens.length; i++) {
					sports = sport2athletes.get(tokens[i]);
					for (String x : runninglist) {
						if (!sports.contains(x))
						toRemove.add(x);
					}
					for (int j = 0; i < toRemove.size(); i++) {
						runninglist.remove(toRemove.get(i));
					}
				}
				whoPlayed.put(line, runninglist);
			}

			for (String s : whoPlayed.keySet()) {
				System.out.print(s + " ");
				TreeSet<String> whoDidPlay = whoPlayed.get(s);
				for (String t : whoDidPlay) {
					System.out.print(t + " ");
				}
				System.out.println();
			}




	} // END MAIN

	// ------------------YOUR METHODS HERE -----------------------------

} // END CLASS
