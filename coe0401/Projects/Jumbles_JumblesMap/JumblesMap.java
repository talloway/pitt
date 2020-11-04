import java.util.*;
import java.io.*;

public class JumblesMap {
  public static void main(String args[]) throws Exception {

    if (args.length < 2 )
		{
			System.out.println("\nusage: C:\\> java Jumbles <input filename>\n\n");
			System.exit(0);
		}

    TreeMap<String, TreeSet<String>> canons2Words = new TreeMap<String, TreeSet<String>>();
    TreeMap<String, TreeSet<String>> wJumbles = new TreeMap<String, TreeSet<String>>();
    BufferedReader dfile = new BufferedReader(new FileReader(args[0]));
    BufferedReader jfile = new BufferedReader(new FileReader(args[1]));

    while (dfile.ready()) {
        String dword = dfile.readLine();
        String canon = toCanonical(dword);

        if (canons2Words.containsKey(canon) == false) {
          TreeSet<String> xwords = new TreeSet<String>();
          xwords.add(dword);
          canons2Words.put(canon, xwords);
        }

        else {
          canons2Words.get(canon).add(dword);
        }
    }
    dfile.close();

    while(jfile.ready()) {
      String jword = jfile.readLine();
      String canon2 = toCanonical(jword);

      if (canons2Words.containsKey(canon2)) {
        wJumbles.put(jword, canons2Words.get(canon2));
      }
      else {
        wJumbles.put(jword, new TreeSet<String>());
      }
    }
    jfile.close();

    for (String key : wJumbles.keySet()) {
      System.out.print(key + " ");
      
      TreeSet<String> tr = wJumbles.get(key);
      for (String word : tr) {
        System.out.print(word + " ");
      }
      System.out.println();
    }

  }

  static String toCanonical(String word)
  {
    char[] letters = word.toCharArray();
    Arrays.sort(letters);

    return new String(letters);
  }
}
