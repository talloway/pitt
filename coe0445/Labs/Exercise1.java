import java.io.*;
import java.util.*;
public class Exercise1
{
	public static void main( String args[] )
	{
		if (args.length < 1)
		{
			System.out.println("\nYou must enter an input filename on cmd line!\n");
			System.exit(0);
		}


    Scanner kbd = new Scanner(System.in);
    Scanner infile;


    String filename = args[0];
    do {

    try
    {
      infile = new Scanner(new File(filename));
      break;
    }

    catch (FileNotFoundException ioe)
    {
      System.out.print(filename + " not found. Please enter valid filename: ");
      filename = kbd.next();
    }
    } while (true);



		while (infile.hasNext())
		{
			String token = infile.next();
			System.out.printf("%s\n", token);
		}
	}
} //END CLASS
