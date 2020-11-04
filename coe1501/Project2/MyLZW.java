/*************************************************************************
 *  Compilation:  javac LZW.java
 *  Execution:    java LZW - < input.txt   (compress)
 *  Execution:    java LZW + < input.txt   (expand)
 *  Dependencies: BinaryIn.java BinaryOut.java
 *
 *  Compress or expand binary input from standard input using LZW.
 *
 *  WARNING: STARTING WITH ORACLE JAVA 6, UPDATE 7 the SUBSTRING
 *  METHOD TAKES TIME AND SPACE LINEAR IN THE SIZE OF THE EXTRACTED
 *  SUBSTRING (INSTEAD OF CONSTANT SPACE AND TIME AS IN EARLIER
 *  IMPLEMENTATIONS).
 *
 *  See <a href = "http://java-performance.info/changes-to-string-java-1-7-0_06/">this article</a>
 *  for more details.
 *
 *************************************************************************/

public class MyLZW {

    // Constants
    private static final int R = 256;
    private static final int MIN_WIDTH = 9;
    private static final int MAX_WIDTH = 16;
    private static final int MIN_LENGTH = 512;
    private static final double RATIO_THRESHOLD = 1.1;
    private static final int BITS_IN_BYTE = 8;

    // Static variables
    private static int W = MIN_WIDTH;
    private static int L = MIN_LENGTH;
    private static double expanded_old = 0;
    private static double compressed_old = 0;
    private static double ratio_old = 0;
    private static double expanded_new = 0;
    private static double compressed_new = 0;
    private static double ratio_new = 0;

    public static void compress(char mode) {
        BinaryStdOut.write(mode);
        W = MIN_WIDTH;
        L = MIN_LENGTH;

        String input = BinaryStdIn.readString();
        TST<Integer> st = new TST<Integer>();
        for (int i = 0; i < R; i++)
            st.put("" + (char) i, i);
        int code = R+1;                                     // R is codeword for EOF

        while (input.length() > 0) {
            String s = st.longestPrefixOf(input);           // Find max prefix match s.
            BinaryStdOut.write(st.get(s), W);

            if (mode == 'r' && (code == (L-1) && W == MAX_WIDTH)) {
                st = codebookReset();
                code = R + 1;
            }

            else if (mode == 'm') {
                if (W < MAX_WIDTH) {                        // Only add to old ratio if it isn't filled
                    expanded_old += s.length() * BITS_IN_BYTE;
                    compressed_old += W;
                    ratio_old = expanded_old / compressed_old;
                }
                expanded_new += s.length() * BITS_IN_BYTE;
                compressed_new += W;
                ratio_new = expanded_new / compressed_new;
                if (W == MAX_WIDTH && ratio_old / ratio_new > RATIO_THRESHOLD) {
                    //System.err.println("RATIO_OLD = " + ratio_old + ". RATIO_NEW = " + ratio_new);
                    st = codebookReset();
                    expanded_old = 0;
                    compressed_old = 0;
                    expanded_new = 0;
                    compressed_new = 0;
                    code = R + 1;
                }
            }

            if (code == (L-1) && W < MAX_WIDTH) {           // Increase size up to 16 bits
                W++;
                L *= 2;
            }
            int t = s.length();

            if (t < input.length() && code < L)             // Add s to symbol table regardless of mode
                st.put(input.substring(0, t + 1), code++);  // Put in codeword with next character

            input = input.substring(t);                     // Scan past s in input
        }
        BinaryStdOut.write(R, W);
        BinaryStdOut.close();
    }


    public static void expand() {
        char mode = BinaryStdIn.readChar();
        W = MIN_WIDTH;
        L = MIN_LENGTH;
        String[] st = new String[L];
        int i;                                              // Next available codeword value

        for (i = 0; i < R; i++)
            st[i] = "" + (char) i;
        st[i++] = "";                                       // (unused) lookahead for EOF

        int codeword = BinaryStdIn.readInt(W);
        if (codeword == R) return;                          // expanded message is empty string
        String val = st[codeword];
        while (true) {
            BinaryStdOut.write(val);

            if (mode == 'r' && (i == (L-1) && W == MAX_WIDTH)) {
                st = codebookResetStr();
                i = R;
                st[i++] = "";
            }

            else if (mode == 'm') {
                if (W < MAX_WIDTH) {
                    compressed_old += W;
                    expanded_old += val.length() * BITS_IN_BYTE;
                    ratio_old = expanded_old / compressed_old;
                }
                compressed_new += W;
                expanded_new += val.length() * BITS_IN_BYTE;
                ratio_new = expanded_new / compressed_new;

                if (W == MAX_WIDTH && ratio_old / ratio_new > RATIO_THRESHOLD) {
                    //System.err.println("RATIO_OLD = " + ratio_old + ". RATIO_NEW = " + ratio_new);
                    st = codebookResetStr();
                    i = R;
                    st[i++] = "";
                    // Reset both old and new ratios
                    // Continuing to use the old and new ratios would be measuring the compression of a codebook that no longer exists
                    expanded_old = 0;
                    compressed_old = 0;
                    expanded_new = 0;
                    compressed_new = 0;

                }
            }

            if (i == (L-1) && W < MAX_WIDTH) {
                W++;
                L *= 2;
                st = codebookUpsize(st);
            }

            codeword = BinaryStdIn.readInt(W);
            if (codeword == R) break;
            String s = st[codeword];
            if (i == codeword) s = val + val.charAt(0);     // special case hack
            if (i < L) st[i++] = val + s.charAt(0);
            val = s;

        }
        BinaryStdOut.close();
    }

    private static String[] codebookUpsize(String[] st) {
      String[] stNew = new String[st.length * 2];
      for (int i = 0; i < st.length; i++) {
        stNew[i] = st[i];
      }
      return stNew;
    }

    private static String[] codebookResetStr() {
      W = MIN_WIDTH;
      L = MIN_LENGTH;
      String[] stNew = new String[MIN_LENGTH];
      for (int i = 0; i < R; i++) {
        stNew[i] = "" + (char) i;
      }
      return stNew;
    }

    private static TST<Integer> codebookReset() {
        W = MIN_WIDTH;
        L = MIN_LENGTH;
        TST<Integer> stnew = new TST<Integer>();
        for (int i = 0 ; i < R; i++)
            stnew.put("" + (char) i, i);
        return stnew;
    }



    public static void main(String[] args) {
        if      (args[0].equals("-")) compress(args[1].charAt(0));
        else if (args[0].equals("+")) expand();
        else throw new IllegalArgumentException("Illegal command line argument");
    }

}
