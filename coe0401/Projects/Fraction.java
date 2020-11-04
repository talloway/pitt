public class Fraction implements Comparable<Fraction>
{
	private int numer;
	private int denom;

	// ACCESSORS (SETTERS)
	public int getNumer()
	{	return numer;
	}
	public int getDenom()
	{	return denom;
	}
	// MUTATORS (GETTERS)
	public void setNumer( int n )
	{	numer = n;
	}
	public void setDenom( int d )
	{
		if (d==0) { System.out.println("Can't have 0 in denom"); System.exit(0); }
		else denom=d;
	}
	// FULL CONSTRUCTOR - an arg for each class data member
	public Fraction( int n, int d )
	{	int gcd = gcd( n, d );
		setNumer(n/gcd);
		setDenom(d/gcd);
	}
	// COPY CONSTRUCTOR - takes ref to some already initialized Comparable<Fraction> object
	public Fraction( Fraction other )
	{
		this( other.getNumer(), other.getDenom() ); // call my full C'Tor with other Fraction's data
	}

	//  GIVING YOU A WORKING (ITERATIVE) GCD J.I.C. YOU NEVER GOT YOURS FROM PROJ 7 TO WORK.
	private int gcd( int n, int d )
	{	int gcd = n<d ? n : d;    // same as => if (n<d) gcd=n; else gcd=d;
		while( gcd > 0 )
		{	if (n%gcd==0 && d%gcd==0)
				return gcd;
			else --gcd;
		}
		return 1; // they were co-prime no GCD exceopt 1 :(
	}

	private Fraction subtract(Fraction other) {
		return new Fraction( (numer*other.denom/gcd(denom, other.denom) - other.numer*denom/gcd(denom, other.denom)), denom*other.denom/gcd(denom,other.denom) );
	}
	// REQUIRED BY THE COMPARABLE INTERFACE

	public int compareTo( Fraction other )
	{
		int n = this.getNumer()*other.getDenom() - other.getNumer()*this.getDenom();
		if (n <0) return -1;
		else if (n > 0) return 1;
		return 0;
	}
	public String toString() // USE AS IS. DO NOT DELETE OR MODIFY
	{
		return getNumer() +  "/" + getDenom() + "\t=" +  + ((double)getNumer()/(double)getDenom());
	}
}// EOF
