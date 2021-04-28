import java.io.*;
import java.util.*;

public class Boggle
{
  static String[][] board;
  static TreeSet<String> dict = new TreeSet<String>();
  static TreeSet<String> hits = new TreeSet<String>();

  public static void main(String[] args) throws Exception
  {
    if (args.length < 2) System.exit(0);
    dict = loadDict(args[0]);
    board = loadBoard(args[1]);


    for (int i = 0; i < board.length; i++)
    {
      for (int j = 0; j < board.length; j++)
      {
        dfs(i, j, "");
      }
    }

    for (String s : hits)
    {
      System.out.println(s);
    }

  }

  private static TreeSet<String> loadDict(String infilename) throws Exception
  {
    BufferedReader infile = new BufferedReader(new FileReader(infilename));
    while (infile.ready())
    {
      dict.add(infile.readLine());
    }
    return dict;
  }

  private static String[][] loadBoard(String infilename) throws Exception
  {
    Scanner infile = new Scanner(new File(infilename));
    int size;

    size = infile.nextInt();
    board = new String[size][size];

    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        board[i][j] = infile.next();
      }
    }
    return board;
  }

  static void dfs(int r, int c, String word)
  {
    String temp;
    word += board[r][c];
    if (word.length() >= 3 && dict.contains(word))
    {
      hits.add(word);
    }

    // N
    if (r - 1 >= 0 && board[r-1][c] != null)
    {
      temp = board[r][c];
      board[r][c] = null;
      dfs(r-1, c, word);
      board[r][c] = temp; // Should still be pointing to original object because shallow copy was made
    }

    // NE
    if (r - 1 >= 0 && c + 1 < board.length && board[r-1][c+1] != null) // Assuming array is square
    {
      temp = board[r][c];
      board[r][c] = null;
      dfs(r-1, c+1, word);
      board[r][c] = temp;
    }

    // E
    if (c + 1 < board.length && board[r][c+1] != null)
    {
      temp = board[r][c];
      board[r][c] = null;
      dfs(r, c+1, word);
      board[r][c] = temp;
    }

    //SE
    if (r + 1 < board.length && c + 1 < board.length && board[r+1][c+1] != null)
    {
      temp = board[r][c];
      board[r][c] = null;
      dfs(r+1, c+1, word);
      board[r][c] = temp;
    }

    //S
    if (r + 1 < board.length && board[r+1][c] != null)
    {
      temp = board[r][c];
      board[r][c] = null;
      dfs(r+1, c, word);
      board[r][c] = temp;
    }

    // SW
    if (r + 1 < board.length && c - 1 >= 0 && board[r+1][c-1] != null)
    {
      temp = board[r][c];
      board[r][c] = null;
      dfs(r+1, c-1, word);
      board[r][c] = temp;
    }

    // W
    if (c - 1 >= 0 && board[r][c-1] != null)
    {
      temp = board[r][c];
      board[r][c] = null;
      dfs(r, c-1, word);
      board[r][c] = temp;
    }

    // NW
    if (r - 1 >= 0 && c - 1 >= 0 && board[r-1][c-1] != null)
    {
      temp = board[r][c];
      board[r][c] = null;
      dfs(r-1, c-1, word);
      board[r][c] = temp;
    }

  }
}
