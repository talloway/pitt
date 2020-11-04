import java.io.*;
import java.util.*;
public class Lab9
{
  public static void main(String args[]) throws Exception
  {
    if (args.length < 1)
      System.exit(0);

    HashSet<String> wordSet = new HashSet<String>();
    BufferedReader infile = new BufferedReader((new FileReader(args[0])));

    while (infile.ready()) {
      String word = infile.readLine();

      if (wordSet.add(word) == false) {
        System.out.println("NOT UNIQUE");
        System.exit(0);
      }
    }

    System.out.println("UNIQUE");
    infile.close();
  }
}
