import java.io.*;
import java.util.*;

class BSTree<T>
{
	private BSTNode<T> root;
	private int nodeCount;
	private boolean addAttemptWasDupe=false;
	@SuppressWarnings("unchecked")
	public BSTree( String infileName ) throws Exception
	{
		nodeCount=0;
		root=null;
		BufferedReader infile = new BufferedReader( new FileReader( infileName ) );

		while ( infile.ready() )
			add( (T) infile.readLine() ); // THIS CAST CAUSES THE WARNING
		infile.close();
	}

	public int size()
	{
		return nodeCount;
	}

	// DUPES BOUNCE OFF RETURN FALSE ELSE INCR COUNT RETURH TRUE
	@SuppressWarnings("unchecked")
	public boolean add( T key )
	{
		addAttemptWasDupe=false;
		if (null==this.root)
		{
			root = new BSTNode<T>(key,null,null);
			++nodeCount;
			return true;
		}
		addHelper( this.root, key );
		if (addAttemptWasDupe) return false; // IT WAS REJECTED (DUPE)
		++nodeCount;
		return true;
	}
	@SuppressWarnings("unchecked")
	private void addHelper( BSTNode<T> root, T key )
	{

		int comp = ((Comparable)key).compareTo( root.getKey() );

		// RECALL HOW WE HAD TO STOP ONE NODE SHORT TO
		// INSERT OR REMOVE? SAME IDEA HERE

		if (comp < 0) // go left
		{
			if (root.getLeft() == null)
				root.setLeft( new BSTNode<T>( key,null,null ) );
			else
				addHelper( root.getLeft(), key );
		}
		if (comp > 0) // go right
		{
			if (root.getRight() == null)
				root.setRight( new BSTNode<T>( key,null,null ) );
			else
				addHelper( root.getRight(), key );
		}
		if ( comp == 0 ) addAttemptWasDupe=true;
    } // END insertHelper


	// GOTTA DO INORDER TRAVERSAL REQUIRING RECURSION
	public void printInOrder()
	{
		printInOrderHelper( this.root );
		System.out.println();
	}
	// LEFT ROOT RIGHT a.k.a INORDER TAVERSAL
	// PRINTS NODEs IN SORTED ORDER
	private void printInOrderHelper( BSTNode<T> root )
	{
		if (root == null) return;
		printInOrderHelper( root.getLeft() );
		System.out.print( root.getKey() + " " );
		printInOrderHelper( root.getRight() );
	}

	// - - - - - - -  MODIFY NOTHING ABOVE THIS LINE - - - - - - -
	// ITS A SEARCH - ONE OF FEW OPS YOU CAN DO ITERATIVELY
	public boolean contains( T key )
	{
		System.out.println("IN CONTAINS");
		return containsHelper(this.root, key);
	}

	public boolean containsHelper(BSTNode<T> root, key)
	{
		if (Objects.equals(root.getKey(), key)) return true;
		if (root == null) return;
		containsHelper(root.getLeft());
		containsHelper(root.getRight());
		return false;
	}

}
