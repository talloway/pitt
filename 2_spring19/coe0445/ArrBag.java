import java.io.*;
import java.util.*;

public class ArrBag<T>
{
	final int NOT_FOUND = -1;
	final int INITIAL_CAPACITY = 10;
	private int count;


	@SuppressWarnings("unchecked")
	T[] theArray = (T[]) new Object[INITIAL_CAPACITY];

	public int size()
	{
		return count;
	}

	// Default constructor
	public ArrBag( )
	{
		count = 0;
	}


  // Constructor accepts filename to load array from
	@SuppressWarnings("unchecked")
	public ArrBag( String filename ) throws Exception
	{
		count = 0;
		Scanner infile = new Scanner( new File( filename ) );
		while ( infile.hasNext() )
			this.add( (T) infile.next() ); // HAD TO CAST OR JAVA WHINES
		infile.close();
	}

	public boolean add( T element )
	{	if (element == null ) return false;
		if (size() == theArray.length) upSize();
		theArray[ count++] = element;
		return true;
	}

	public T get( int index )
	{
		if ( index < 0 || index >=size() )
		{	System.out.println( "attempt to get elem at non-existent index (" + index + ")\n" );
			System.exit(0);
		}
		return theArray[index];
	}

  // Searches for the key. True if found, otherwise false
	public boolean contains( T key )
	{	if (key == null) return false;
		for ( int i=0 ; i < size() ; ++i )
			if ( get(i).equals( key ) )
				return true;
		return false;
	}

	public String toString()
	{
		String toString  = "";
		for ( int i=0 ; i < size() ; ++i  )
		{
			toString += get(i);
			if ( i < size()-1 ) 	// Don't put space after last element
				toString += " ";
		}
		return toString;
	}


	public void clear()
	{
		count = 0;
	}

	public boolean isEmpty()
	{
		if (size() == 0) return true;
		return false;
	}

	private void upSize()
	{
		T[] newArray = (T[]) new Object[2*count];
		for (int i = 0; i < count; i++) {
			newArray[i] = get(i);
		}
		theArray = newArray;
	}

	public ArrBag<T> union( ArrBag<T> other )
	{
		ArrBag unionBag = new ArrBag();

		for (int i = 0; i < count; i++) {
			if (!unionBag.contains(get(i)))
				unionBag.add(get(i));
		}

		for (int j = 0; j < other.size(); j++) {
			if(!unionBag.contains(other.get(j))) unionBag.add(other.get(j));
		}

		return unionBag;
	}

	public ArrBag<T> intersection( ArrBag<T> other )
	{
		ArrBag intersectionBag = new ArrBag();

		for (int i = 0; i < count; i++) {
			if (other.contains(get(i)) && !intersectionBag.contains(get(i)))
				intersectionBag.add(get(i));
		}
		return intersectionBag;
	}

	public ArrBag<T> difference( ArrBag<T> other )
	{
		ArrBag differenceBag = new ArrBag();

		for (int i = 0; i < count; i++) {
			if (!other.contains(get(i)))
				differenceBag.add(get(i));
		}
		return differenceBag;
	}

	public ArrBag<T> xor( ArrBag<T> other )
	{
		return difference(other).union(other.difference(this));
	}

} // END ARRBAG CLASS
