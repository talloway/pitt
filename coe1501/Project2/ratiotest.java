import java.io.*;
import java.util.*;

public class ratiotest {
  public static void main(String[] args) {
    Scanner kbd = new Scanner(System.in);
    {
      System.out.print("Enter number 1: ");
      double first = Double.parseDouble(kbd.next());
      System.out.print("Enter number 2: ");
      double second = Double.parseDouble(kbd.next());
      System.out.println("RATIO = " + (first/second));
      while (kbd.next() != "e")
      {
        System.out.print("Enter number 1: ");
        first = Double.parseDouble(kbd.next());
        System.out.print("Enter number 2: ");
        second = Double.parseDouble(kbd.next());
        System.out.println("RATIO = " + (first/second));
        continue;
      }
    }
  }
}
