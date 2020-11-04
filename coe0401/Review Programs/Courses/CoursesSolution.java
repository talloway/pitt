import java.util.*;
import java.io.*;

public class CoursesSolution
{
	public static void main( String args[] ) throws Exception
	{
		// ###########################################################################################################################################
		System.out.println("\nSTEP #1:\n");

		// THE PRINT OF THIS MAP WILL BE STEP#1 OUTPUT
		TreeMap<String,TreeSet<String>> student2courseNums = new TreeMap<String,TreeSet<String>>();

		// THE PRINT OF THIS MAP WILL BE STEP#2 OUTPUT. WE BULD IT WHILE BUILING STEP1s MAP
		TreeMap<String,TreeSet<String>> courseNum2students = new TreeMap<String,TreeSet<String>>();
		TreeSet<String> allCourses = new TreeSet<String>();  // NEEDED TO BUILD THE ABOVe MAP

		BufferedReader student2courseNumsFile = new BufferedReader( new FileReader( "student2courseNums.txt" ) );
		while (student2courseNumsFile.ready())
		{
			String[] tokens = student2courseNumsFile.readLine().split("\\s+");		// tokens = [Hector][CS1555][CS1510][CS1653][CS1652]
			String thisStudentName = tokens[0];                   		// studentName -> "Hector"
			TreeSet<String> thisStudentCourses= new TreeSet<String>();
			for (int i=1 ; i<tokens.length ; i++ )
			{	String courseNum = tokens[i];
				thisStudentCourses.add(courseNum);	// sorted set of -> [CS1510][CS1555][CS1652][CS1653]
				student2courseNums.put( thisStudentName, thisStudentCourses );

				// AND WHILE WE'RE IN HERE BUILD THE STEP#2 MAP
				TreeSet<String> studentsWhoTookThisCourse = new TreeSet<String>();
				if ( !courseNum2students.containsKey(courseNum) )
					studentsWhoTookThisCourse.add( thisStudentName );  // FIRST STUDENT WHO TOOK THIS COURSE
				else
				{
					studentsWhoTookThisCourse = courseNum2students.get( courseNum );
					studentsWhoTookThisCourse.add( thisStudentName ); // 2nd 3rd 4th ... WHO TOOK IT
				}
				courseNum2students.put( courseNum, studentsWhoTookThisCourse );  // ADD || OVERWRITE A ROw IN TABLE
			}
		}
		student2courseNumsFile.close();

		for (String thisStudentName : student2courseNums.keySet() )  //
		{
			System.out.print( thisStudentName + " " );
			TreeSet<String> coursesThisStudentTook = student2courseNums.get( thisStudentName ); //  sorted set of -> [CS1510][CS1555][CS1652][CS1653]
			for ( String course : coursesThisStudentTook )
				System.out.print( course + " " );
			System.out.println();
		}

		// ###########################################################################################################################################
		System.out.println("\nSTEP #2:\n");


		for (String courseNum : courseNum2students.keySet() )  //
		{
			System.out.print( courseNum + " " );
			TreeSet<String> studentsWhoTookThisCourse = courseNum2students.get( courseNum );
			for ( String studentName : studentsWhoTookThisCourse )
				System.out.print( studentName + " " );
			System.out.println();
		}


		// ###########################################################################################################################################
		System.out.println("\nSTEP #3:\n");


		Scanner courseNum2courseNameFile = new Scanner( new File( "courseNum2courseName.txt" ) );
		TreeMap<String,String> courseNum2courseName = new TreeMap<String,String>(); // WE DONT CARE ABOUT SORTING JUST MAPPING
		while ( courseNum2courseNameFile.hasNext() )
		{
			String courseNum   = courseNum2courseNameFile.next();
			String courseName  = courseNum2courseNameFile.next();
			courseNum2courseName.put( courseNum, courseName );
		}

		for (String courseNum : courseNum2students.keySet() )  //
		{
			String courseName = courseNum2courseName.get( courseNum );
			System.out.print( courseName + " " ); // print courseName instead of courseNum

			TreeSet<String> studentsWhoTookThisCourse = courseNum2students.get( courseNum );
			for ( String studentName : studentsWhoTookThisCourse )
				System.out.print( studentName + " " );
			System.out.println();
		}

		// ###########################################################################################################################################
		System.out.println("\nSTEP #4:\n");


		for (String thisStudentName : student2courseNums.keySet() )  //
		{
			System.out.print( thisStudentName + " " );
			TreeSet<String> coursesThisStudentTook = student2courseNums.get( thisStudentName ); //  sorted set of -> [CS1510][CS1555][CS1652][CS1653]
			TreeSet<String> courseNamesThisStudentTook = new TreeSet<String>();
			for ( String courseNum : coursesThisStudentTook )
				courseNamesThisStudentTook.add( courseNum2courseName.get( courseNum ) );
			for ( String courseName : courseNamesThisStudentTook )
				System.out.print( courseName + " ");
			System.out.println();
		}

	} // END MAIN
} // END CLASS
