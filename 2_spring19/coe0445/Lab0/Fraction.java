public class Fraction
{
	private int numer;
	private int denom;

	public int getNumer()
	{	return numer;
	}
	public int getDenom()
	{	return denom;
	}

	public void setNumer( int n )
	{	numer = n;
	}
	public void setDenom( int d )
	{
		if (d==0) { System.out.println("Can't have 0 in denom"); System.exit(0); }
		else denom=d;
	}


	public Fraction( int n, int d )
	{	int gcd = gcd( n, d );
		setNumer(n/gcd);
		setDenom(d/gcd);
	}

	// Default Constructor - 0/1
	public Fraction( )
	{
		this( 0, 1 ); // Defer to full constructor
	}

	// Iterative gcd method
	public int gcd( int n, int d )
	{	int gcd = n<d ? n : d;    // same as => if (n<d) gcd=n; else gcd=d;
		while( gcd > 0 )
		{	if (n%gcd==0 && d%gcd==0)
				return gcd;
			else --gcd;
		}
		return 1; // they were co-prime no GCD except 1 :(
	}

	public String toString() 
	{
		return getNumer() +  "/" + getDenom() + "\t=" +  + ((double)getNumer()/(double)getDenom());
	}
}// EOF
