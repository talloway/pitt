import java.util.*;
import java.io.*;

public class Potus
{
	public static void main( String[] args )  throws Exception
	{
		BufferedReader infile1 = new BufferedReader( new FileReader(args[0]) );
		BufferedReader infile2 = new BufferedReader( new FileReader(args[1]) );
		BufferedReader infile3 = new BufferedReader( new FileReader(args[2]) );

		TreeMap<String, TreeSet<String>> state2Presidents = new TreeMap<String, TreeSet<String>>();
		TreeMap<String, String> presidents2State = new TreeMap<String, String>();
		TreeSet<String> presNoState = new TreeSet<String>();
		TreeSet<String> stateNoPres = new TreeSet<String>();

		// Step 1
		//System.out.println();
		//System.out.println("STATE TO PRESIDENTS BORN IN THAT STATE");
		//System.out.println();
		while(infile1.ready()) {
			String[] tokens = infile1.readLine().split("\\s+");
			String state = tokens[0];
			TreeSet<String> presidents = new TreeSet<String>();

			for (int i = 1; i < tokens.length; i++) {
				presidents.add(tokens[i]);
			}
			state2Presidents.put(state,presidents);
		}

		for (String state : state2Presidents.keySet()) {
			System.out.print(state + " ");
			for (String president : state2Presidents.get(state))
				System.out.print(president + " ");
			System.out.println();
		}

		//System.out.println();

		// Step 2
		//System.out.println("PRESIDENT TO STATE BORN IN");
		//System.out.println();
		while(infile2.ready()) {

			String word = infile2.readLine();
			for (String state : state2Presidents.keySet()) {
				if (state2Presidents.get(state).contains(word))
					presidents2State.put(word, state);
			}
			if (!presidents2State.containsKey(word)) presNoState.add(word); // Step 3
		}

			for (String pres : presidents2State.keySet()) {
			System.out.println(pres + " " + presidents2State.get(pres));
		}

		//System.out.println();

		// Step 3
		//System.out.println("PRESIDENTS BORN BEFORE STATES FORMED");
		//System.out.println();
		sortAndPrint(presNoState);

		//System.out.println();

		// Step 4
		//System.out.println("STATES HAVING NO PRESIDENT BORN IN THEM");
		//System.out.println();
		while (infile3.ready()) {
			String state = infile3.readLine();
			if (!state2Presidents.containsKey(state)) stateNoPres.add(state);
		}
		sortAndPrint(stateNoPres);


	} // END MAIN

	//              - - - - - - - - - - -  H E L P E R    M E T H O D S     D O W N    H E R E  - - - - - - - - - -
	static void sortAndPrint(TreeSet<String> tree) {
		for (String s : tree) System.out.println(s);
	}
}	// END POTUS CLASS
