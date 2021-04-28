import java.io.*;
import java.util.*;

public class DLBtrie<T> {
  public Node head;

  public DLBtrie() {
    head = new Node();
  }

  public DLBtrie(String filename) throws Exception {
    this.head = new Node();
    BufferedReader reader = new BufferedReader(new FileReader(filename));

    while (reader.ready()) {
      Node curr = head; // Reset curr for every word
      String line = reader.readLine();

      for (char c : line.toCharArray()) {
        curr = this.addToTrie(curr, c);
      }
      this.addToTrie(curr, '^');
    } // End while
    System.out.println("\n\n\n"); // TEST
  } // End file constructor

  public Node addToTrie(Node curr, char c) {

    // Case 1: there is no existing child LL to check for next char
    if (curr != null && curr.nextLL == null) {
      curr.nextLL = new LinkedList(c);
      return curr.nextLL.head;
    }

    // Case 2: there is a child LL to check through
    else if (curr != null && curr.nextLL != null) {
      boolean contains = curr.nextLL.contains(c);

      // Case 2a: the letter isn't in the LL - add it and set curr to it
      if (!contains) {
        curr.nextLL.insertAtTail(c);
        curr = curr.nextLL.end();
      }

      // Case 2b: the letter is already in the LL - set curr to it
      else if (contains) {
        curr = curr.nextLL.find(c);
      }
    }
    return curr;
  } // End addToTrie

  public Node find(Node curr, T data) {
    if (curr == null) curr = head;
    Node findResult = curr.nextLL.find(data);
    if (findResult != null) curr = findResult;
    return curr;
  }
}
