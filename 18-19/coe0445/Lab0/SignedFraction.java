public class SignedFraction extends Fraction
{
	private int sign;

	// Full Constructor - stores sign of fraction then sets both numer and denom as positive
	public SignedFraction( int n, int d )
	{
		if ((n < 0 && d > 0) || (n > 0 && d < 0)) {
			setSign(-1);
		}
		else {
			setSign(1);
		}

		n = Math.abs(n);
		d = Math.abs(d);

		int gcd = gcd( n, d );
		setNumer(n/gcd);
		setDenom(d/gcd);
	}

	private void setSign( int s )
	{
		if (s!=1 && s!=-1)
		{
			System.out.println( "FATAL ERROR: Attempt to assign invalid sign value: " + s );
			System.exit(0);
		}
		sign = s;
	}

	private int getSign()
	{
		return sign;
	}

	// OVERWRITE/RIDE PARENT toString
	public String toString()
	{
		return getSign() * getNumer() + "/" + getDenom() + "\t=" + (getSign()*(double)getNumer()/(double)getDenom());  // REPLACE WITH YOUR CODE
	}

}// EOF
