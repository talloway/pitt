import java.util.*;
import java.io.*;
import java.text.*;

public class Problem2
{
	public static void main( String args[] ) throws Exception
	{
			// close/reuse this file handle on the next file
			BufferedReader infile = new BufferedReader( new FileReader( "ExamScores.txt" ) );

			// you declare all needed ArrayLists and other variables from here on
			ArrayList<String> students = new ArrayList<String>();
			ArrayList<Integer> exams = new ArrayList<Integer>();
			HashMap<String, ArrayList<Double>> map = new HashMap<String,ArrayList<Double>>();
			TreeMap<Double, String> studentaverages = new TreeMap<Double, String>();
			TreeMap<Double, Integer> testaverages= new TreeMap<Double, Integer>();

			System.out.println("\nSTEP #1: 50%");  // 50%
			while (infile.ready())
			{
				students.add(infile.readLine());
			}

			infile.close();

			for (String name : students)
				System.out.println(name);

			System.out.println("\nSTEP #2: 25%");  // 75 %
			Collections.sort(students);

			for (String name : students)
				System.out.println(name);


			System.out.println("\nSTEP #3: 10%");  // 85

			for (String name : students)
			{
				String[] grades= name.split(" ");
				ArrayList<Double> scores = new ArrayList<Double>();
					for (int i=1; i<grades.length; i++)
					{ 	if(grades[i].length()>0)
						{
							//System.out.println(grades[i]);
							double temp= Double.parseDouble(grades[i]);
							scores.add(temp);
						}
					}
				map.put(grades[0], scores);
			}

			infile = new BufferedReader(new FileReader("query.txt"));

			while (infile.ready())
			{
				String[] avgtests= infile.readLine().split(" ");
					for (int i=0; i<avgtests.length; i++)
						{ //System.out.println(avgtests[i]);
						exams.add(Integer.parseInt(avgtests[i]));
						}
			}

			for (String name : map.keySet())
			{
				double total=0;
				int count=0;
				for(Integer test: exams)
				{
					double a= map.get(name).get(test-1);
					total+=a;
					count++;
				}

				double avg= total/count;


				studentaverages.put(avg, name);
			}

			for (Double average : studentaverages.keySet())
			{
				DecimalFormat d=new DecimalFormat("0.00");
				System.out.println(studentaverages.get(average) + " " + d.format(average));
			}

			System.out.println("\nSTEP #4: 15%"); // 100%

			for(Integer test : exams)
			{
				double d=0.0;
				int count=0;
				for(String name : map.keySet())
				{
					double e= map.get(name).get(test-1);
					d+=e;
					count++;
				}

				double tavg= d/count;
				testaverages.put(tavg, test);
			}

			System.out.println("exam"+testaverages.get(testaverages.firstKey())+ " "+ "had the lowest average");



	} // END MAIN

	// - - - - - - H E L P E R   M E T H O D S   H E R E - - - - -


} // END PROBLEM1 CLASS
