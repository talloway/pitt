import java.io.*;
import java.util.*;

public class ByteTest {
  public static void main(String[] args) {

    byte[] val = {(byte) (7)};
    byte[] val2 = {(byte) 2};
    byte[] val3 = {(byte) 10};
    LargeInteger l1 = new LargeInteger(val);
    LargeInteger l2 = new LargeInteger(val2);
    LargeInteger l3 = new LargeInteger(val3);

    LargeInteger ans = l1.modularExp(l2, l3);

    for (int i = 0; i < ans.getVal().length; i++) {
       System.out.print(ans.getVal()[i] + " ");
    }

    System.out.println();

  }
}
