/*
	Coin.java THIS IS THE ONLY FILE YOU HAND IN
	THERE IS NO MAIN METHOD IN THIS CLASS!
*/
import java.util.Random;
public class Coin
{

  private final int TAILS = 0;
  private final int HEADS = 1;
  private int numHeads; private int numTails; private int seed;
  private Random r;

  public Coin(int seed) {
    r = new Random(seed);
    reset();
  }

  public String flip() {
    int side = r.nextInt(2);

    if (side == HEADS) {
      setNumHeads(getNumHeads()+1);
      return ("H");
    }

    setNumTails(getNumTails()+1);
    return ("T");
  }

  private void setNumHeads(int heads) {
    numHeads = heads;
  }

  private void setNumTails(int tails) {
    numTails = tails;
  }

  public int getNumHeads() {
      return numHeads;
  }

  public int getNumTails() {
      return numTails;
  }

  public void reset() {
    setNumHeads(0);
    setNumTails(0);

  }
} // END COIN CLASS
