import java.util.*;
import java.io.*;

public class Potus
{
	public static void main( String[] args )  throws Exception
	{
		BufferedReader state2PresidentsFile = new BufferedReader( new FileReader("state2presidents.txt") );
		BufferedReader allPresidentsFile = new BufferedReader( new FileReader("allPresidents.txt") );
		BufferedReader allStatesFile = new BufferedReader( new FileReader("allStates.txt") );

		


		// ------------------ CODE I ADDED FOR YOU TO USE AND IMITATE -------------------------
		TreeMap<String,TreeSet<String>> state2Presidents = new TreeMap<String,TreeSet<String>>();
    TreeMap<String, String> presidents2State = new TreeMap<String, String>();
		TreeSet<String> presNoState = new TreeSet<String>();
		TreeSet<String> stateNoPres = new TreeSet<String>();
		// LOOK AT HOW MUCH WORK WE SAVE BY SPLITTING LINE INTO ARRAY INTO ARRAYLIST
		// WE DONT HAVE TO WRITE LOOP TO ADD PRESIDENTS INTO THE TREESET
		//
		while (state2PresidentsFile.ready())
		{	// WE TRIM THE LINE REMOVING LEAD & TRAIL WHITESPACE (WHICH WOULD MESSE UP THE SPLIT)
			ArrayList<String> presidents = new ArrayList<String>( Arrays.asList( state2PresidentsFile.readLine().trim().split(" ")));
			String state = presidents.get(0);
			presidents.remove(0); // the first element was state - not president
			state2Presidents.put( state, new TreeSet<String>(presidents) ); // YOU CAN FEED AN ARRAYLIST TO A TRESSET CONSTRUCTOR
		}


		// MAP IS BUILT. DUMP IT
		System.out.println( "\nSTATE TO PRESIDENTS BORN IN THAT STATE\n");
		for ( String state : state2Presidents.keySet() )
		{
			System.out.print( state + " ");
			for ( String pres : state2Presidents.get( state ) )
				System.out.print( pres + " ");
			System.out.println();
		}


		System.out.println( "\nPRESIDENT TO STATE BORN IN\n");
    while (allPresidentsFile.ready())
    {
      String word = allPresidentsFile.readLine();
      for (String state : state2Presidents.keySet())
      {
        if (state2Presidents.get(state).contains(word))
          presidents2State.put(word, state);
      }
      if (!presidents2State.containsKey(word)) presNoState.add(word);
    }

    for (String pres : presidents2State.keySet())
    {
      System.out.println(pres + " " + presidents2State.get(pres));
    }

		System.out.println( "\nPRESIDENTS BORN BEFORE STATES FORMED\n");
		sortAndPrint(presNoState);

		System.out.println( "\nSTATES HAVING NO PRESIDENT BORN IN THEM\n");
		while (allStatesFile.ready())
		{
			String state = allStatesFile.readLine();
			if (!state2Presidents.containsKey(state)) stateNoPres.add(state);
		}
		sortAndPrint(stateNoPres);
	} // END MAIN
	static void sortAndPrint(TreeSet<String> tree)
	{
		for (String s : tree) System.out.println(s);
	}
}	// END POTUS CLASS
