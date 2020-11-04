import java.util.*;
import java.io.*;

public class Drugs
{
	public static void main( String[] args ) throws Exception
	{
		BufferedReader foodDrug2CatFile = new BufferedReader(new FileReader("foodDrug2Category.txt"));
		BufferedReader patient2DrugFile = new BufferedReader(new FileReader("patient2FoodDrug.txt"));
		BufferedReader dontMixFile = new BufferedReader(new FileReader("dontMix.txt"));

		TreeMap<String, TreeSet<String>> cat2Drug = new TreeMap<String, TreeSet<String>>();
		TreeMap<String, TreeSet<String>> patient2Drug = new TreeMap<String, TreeSet<String>>();
		TreeMap<String, String> drug2Cat = new TreeMap<String, String>();
		TreeMap<String, TreeSet<String>> patient2Cat = new TreeMap<String, TreeSet<String>>();

		while(foodDrug2CatFile.ready()) {
			String[] tokens = foodDrug2CatFile.readLine().split(",");
			String cat = tokens[0];
			TreeSet<String> drug = new TreeSet<String>();

			for (int i = 1; i < tokens.length; i++) {
				drug.add(tokens[i]);
				drug2Cat.put(tokens[i], tokens[0]);
			}
			cat2Drug.put(cat, drug);
		}

		while(patient2DrugFile.ready()) {
			String[] tokens = patient2DrugFile.readLine().split(",");
			String patient = tokens[0];

			TreeSet<String> patDrug = new TreeSet<String>();
			TreeSet<String> patCat = new TreeSet<String>();

			for(int i = 1; i < tokens.length; i++) {
				patDrug.add(tokens[i]);
				patCat.add(drug2Cat.get(tokens[i]));
			}

			patient2Cat.put(patient, patCat);
			patient2Drug.put(patient, patDrug);
		}

		for (String cat : cat2Drug.keySet()) {
			System.out.print(cat + " ");
			for (String drug : cat2Drug.get(cat)) {
				System.out.print(drug + " ");
			}
			System.out.println();
		}

		System.out.println();

		for (String pat : patient2Drug.keySet()) {
			System.out.print(pat + " ");
			for (String drug : patient2Drug.get(pat)) {
				System.out.print(drug + " ");
			}
			System.out.println();
		}

		System.out.println();

		while (dontMixFile.ready()) {

			String[] tokens = dontMixFile.readLine().split(",");
			TreeSet<String> dontMixLine = new TreeSet<String>();
			for (int i = 0; i < tokens.length; i++) {
				dontMixLine.add(tokens[i]);
			}

			for (String s : patient2Cat.keySet()) {
				if (patient2Cat.get(s).containsAll(dontMixLine)) {
					System.out.println(s);
				}
			}
			}




	} // END MAIN

} // END CLASS
