import java.io.*;
import java.util.*;

public class ac_test {
  public static final int NANO_TO_SEC = 1000000000;
  public static int count = 0;
  public static ArrayList<String> dictSuggestions = new ArrayList<String>();
  public static ArrayList<String> histSuggestions = new ArrayList<String>();
  public static HashMap<String, Integer> freqMap = new HashMap<String, Integer>();

  public static void main(String[] args) throws Exception {

     // Check number of args entered
     if (args.length < 1) {
       System.out.println("Not enough args.");
       System.exit(0);
     }

     // Initialize the two tries and vars to check if the file exists
     DLBtrie dictTrie = new DLBtrie(args[0]);
     DLBtrie userHistoryTrie;
     File testFile = new File("user_history.txt");
     boolean exists = testFile.exists();

     // Populate DLBtrie and HashMap if there is a history file present
     if (exists) {
       userHistoryTrie = new DLBtrie("user_history.txt");
       BufferedReader reader = new BufferedReader(new FileReader("user_history.txt"));
       while (reader.ready()) {
         String line = reader.readLine();
         if (freqMap.containsKey(line)) {
           freqMap.put(line, freqMap.get(line) + 1);
         }
         else {
           freqMap.put(line, 1);
         }
       }
     }
     else userHistoryTrie = new DLBtrie();

     // Initialize everything else
     float runningTimeTotal = 0;
     float runningCount = 0;
     String userInput = "";
     Scanner kbd = new Scanner(System.in);
     Node curr = dictTrie.head;
     Node histCurr = userHistoryTrie.head;
     boolean alreadyInTrie = false;

     // Output message to get first character
     System.out.println("Enter your first character: ");

     while (true) {

       // Reset some values
       count = 0;
       char c = kbd.next().charAt(0);
       int a = Character.getNumericValue(c);
       alreadyInTrie = false;

       // User has made a selection
       if (a >= 1 && a <= 5) {
         String strToEnter = "";

         // Figure out if selection was from histSuggestions or dictSuggestions
         if (a > histSuggestions.size()) {
           strToEnter = dictSuggestions.get(a - histSuggestions.size() - 1);
           for (int i = userInput.length(); i < strToEnter.length(); i++) { // Put in a new word
             histCurr = userHistoryTrie.addToTrie(histCurr, strToEnter.charAt(i));
           }
         }
         else {
           strToEnter = histSuggestions.get(a - 1);
         }

         if (freqMap.containsKey(strToEnter)) {
           freqMap.put(strToEnter, freqMap.get(strToEnter) + 1);
         }
         else {
           freqMap.put(strToEnter, 1);
         }

         // Write selected input to file
         BufferedWriter appender = new BufferedWriter(new FileWriter("user_history.txt", true));
         appender.append(strToEnter + "\n");
         appender.close();

         // Reset everything & continue
         if (!alreadyInTrie) histCurr = userHistoryTrie.addToTrie(histCurr, '^');
         histSuggestions = new ArrayList<String>();
         dictSuggestions = new ArrayList<String>();
         curr = dictTrie.head;
         histCurr = userHistoryTrie.head;
         userInput = ""; // Make sure that userInput is supposed to be resetting after a word is selected
         System.out.println("\n\n\nWORD COMPLETED: " + strToEnter);
         System.out.println("\nEnter first character of the next word: ");
         continue;
       }

       // Write current word into history file and HashMap and reset
       if (c == '$') {

         // Write user history to file
         BufferedWriter appender = new BufferedWriter(new FileWriter("user_history.txt", true));
         appender.append(userInput + "\n");
         appender.close();

         // Put into freqMap
         if (freqMap.containsKey(userInput)) {
           freqMap.put(userInput, freqMap.get(userInput) + 1);
         }
         else {
           freqMap.put(userInput, 1);
         }

         // Finish entering into userHistoryTrie and reset curr pointers
         System.out.println("\n\n\nWORD COMPLETED: " + userInput);
         userInput = "";
         histCurr = userHistoryTrie.addToTrie(histCurr, '^');
         curr = dictTrie.head;
         histCurr = userHistoryTrie.head;

         System.out.println("\nEnter first character of the next word: ");
         continue;
       }

       // Print out average time and break
       if (c == '!') {
         String avgTime = String.format("%.9f", runningTimeTotal/(NANO_TO_SEC*runningCount));
         System.out.println("Average Time: " + avgTime + " s.");
         break;
       }

       // Add c to userHistoryTrie and update curr pointers
       histCurr = userHistoryTrie.addToTrie(histCurr, c);
       curr = dictTrie.find(curr, c);
       char wordTest = (char) curr.data;

       // Start timing
       long startTime = System.nanoTime();

       // Reset suggestions in preparation of searching
       histSuggestions = new ArrayList<String>();
       dictSuggestions = new ArrayList<String>();

       // Only get dict suggestions if there are predictions to be made
       if (wordTest == c && curr.nextLL != null) getSuggestions(curr, userInput, dictSuggestions);

       // Get hist suggestions and sort the ArrayList
       if (histCurr.nextLL != null) getHistSuggestions(histCurr, userInput, histSuggestions);
       if (histSuggestions.size() > 1) sortByFreq(histSuggestions);

       userInput += c;

       // No predictions at all
       if (dictSuggestions.size() == 0 && histSuggestions.size() == 0) {
         System.out.println("No predictions were found.\nEnter the next character: ");
         continue;
       }

       // Stop timing
       float estimatedTime = System.nanoTime() - startTime;

       // Print out the predictions from userHistoryTrie
       for (int i = 0; i < histSuggestions.size(); i++) {
         System.out.print("(" + (i+1) + ") " + histSuggestions.get(i) + "    ");
       }

       // Print out however many predictions are still needed from dictTrie
       if (dictSuggestions.size() > 0) {

         int sizeCount = histSuggestions.size() + 1;
         ArrayList<String> condensedDict = new ArrayList<String>();

         // Up to 10 elements have returned, but we need to filter out ones that aren't unique
         for (int i = 0; i < 10; i++) {
           if (i >= dictSuggestions.size()) break;
           if (histSuggestions.contains(dictSuggestions.get(i))) continue;
           System.out.print("(" + sizeCount + ") " + dictSuggestions.get(i) + "    ");
           condensedDict.add(dictSuggestions.get(i));

           // Once we get to 5 we don't care anymore
           sizeCount++;
           if (sizeCount > 5) break;
         }

         // Copy back into dictSuggestions - now the only elements in dictSuggestions are the ones that are
         // being displayed
         dictSuggestions.clear();
         for (int i = 0; i < condensedDict.size(); i++) {
           dictSuggestions.add(condensedDict.get(i));
         }
         System.out.println();
       }

       // Update time values and output time for individual search
       runningTimeTotal += estimatedTime;
       runningCount++;
       String formatNano = String.format("%.9f", estimatedTime/NANO_TO_SEC);
       System.out.println("\n(" + formatNano + "s)");

       // Get next character
       System.out.println("\nEnter the next character: ");
     } // End while
  } // End main


  public static void getSuggestions(Node curr, String userInput, ArrayList<String> suggestions) {

    if (count >= 10) return;

    // Found the end of a word - See if the null terminator has any siblings and check them
    if (curr.nextLL != null && curr.nextLL.find('^') != null) {
      suggestions.add(userInput + curr.data);
      count++;
      if (count >= 10) return;
    }

    if (curr.nextLL != null) {
      getSuggestions(curr.nextLL.head, userInput + curr.data, suggestions);
    }

    // Now check all of the children
    if (curr.nextNode != null) {
      getSuggestions(curr.nextNode, userInput, suggestions);
    }

    return;
  }

  // Get all predictions from histTrie for a given curr and put these in an AL
  public static void getHistSuggestions(Node curr, String userInput, ArrayList<String> histSuggestions) {

    // Existing null terminator character means that a prediction has been found
    if (curr.nextLL != null && curr.nextLL.find('^') != null) {
      histSuggestions.add(userInput + curr.data);
    }

    if (curr.nextLL != null) {
      getHistSuggestions(curr.nextLL.head, userInput + curr.data, histSuggestions);
    }

    if (curr.nextNode != null) {
      getHistSuggestions(curr.nextNode, userInput, histSuggestions);
    }

    return;
  }

  // Sort histSuggestions into the most frequently used by consulting Hash Table
  public static void sortByFreq(ArrayList<String> histSuggestions) {

    ArrayList<String> sortedSuggestions = new ArrayList<String>();
    String mostFreq = ""; String word;
    int freq = 0;

    // Pretty inefficient way of sorting unfortunately
    while (!histSuggestions.isEmpty()) {
      freq = 0;
      mostFreq = "";

      for (int j = 0; j < histSuggestions.size(); j++) {
        word = histSuggestions.get(j);
        if (freqMap.get(word) > freq) {
          mostFreq = word;
          freq = freqMap.get(word);
        }
      }

      sortedSuggestions.add(mostFreq);
      histSuggestions.remove(mostFreq);
    }

    // Add sorted predictions back to histSuggestions
    for (int i = 0; i < sortedSuggestions.size(); i++) {
      histSuggestions.add(sortedSuggestions.get(i));
    }


    return;
  }
}
