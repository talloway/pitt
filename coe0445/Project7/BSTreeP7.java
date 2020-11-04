import java.io.*;
import java.util.*;

///////////////////////////////////////////////////////////////////////////////
class BSTNode<T>
{	T key;
	BSTNode<T> left,right;
	BSTNode( T key, BSTNode<T> left, BSTNode<T> right )
	{	this.key = key;
		this.left = left;
		this.right = right;
	}
}
///////////////////////////////////////////////////////////////////////////////////////
class Queue<T>
{	LinkedList<BSTNode<T>> queue;
	Queue() { queue =  new LinkedList<BSTNode<T>>(); }
	boolean empty() { return queue.size() == 0; }
	void enqueue( BSTNode<T>  node ) { queue.addLast( node ); }
	BSTNode<T>  dequeue() { return queue.removeFirst(); }
	// THROWS NO SUCH ELEMENT EXCEPTION IF Q EMPTY
}
////////////////////////////////////////////////////////////////////////////////
class BSTreeP7<T>
{
	static boolean removeAttempt = false;
	private BSTNode<T> root;
	private boolean addAttemptWasDupe=false;
	@SuppressWarnings("unchecked")
	public BSTreeP7( String infileName ) throws Exception
	{
		root=null;
		Scanner infile = new Scanner( new File( infileName ) );
		while ( infile.hasNext() )
			add( (T) infile.next() ); // THIS CAST RPODUCES THE WARNING
		infile.close();
	}

	// DUPES BOUNCE OFF & RETURN FALSE ELSE INCR COUNT & RETURN TRUE
	@SuppressWarnings("unchecked")
	public boolean add( T key )
	{	addAttemptWasDupe=false;
		root = addHelper( this.root, key );
		return !addAttemptWasDupe;
	}
	@SuppressWarnings("unchecked")
	private BSTNode<T> addHelper( BSTNode<T> root, T key )
	{
		if (root == null) return new BSTNode<T>(key,null,null);
		int comp = ((Comparable)key).compareTo( root.key );
		if ( comp == 0 )
			{ addAttemptWasDupe=true; return root; }
		else if (comp < 0)
			root.left = addHelper( root.left, key );
		else
			root.right = addHelper( root.right, key );

		return root;
    } // END addHelper

		public int countLevels()
	   {
	     return countLevels( root );
	   }
	   private int countLevels( BSTNode root)
	   {
	     if (root==null) return 0;
	     return 1 + Math.max( countLevels(root.left), countLevels(root.right) );
	   }

		 public void printLevelOrder()
	 	{	if (this.root == null) return;
	 		Queue<T> q = new Queue<T>();
	 		q.enqueue( this.root ); // this. just for emphasis/clarity
	 		while ( !q.empty() )
	 		{	BSTNode<T> n = q.dequeue();
	 			System.out.print( n.key + " " );
	 			if ( n.left  != null ) q.enqueue( n.left );
	 			if ( n.right != null ) q.enqueue( n.right );
	 		}
	 		System.out.println();
	 	}

		public void printInOrder()
		{
			printInOrder( this.root );
			System.out.println();
		}
		private void printInOrder( BSTNode<T> root )
		{
			if (root == null) return;
			printInOrder( root.left );
			System.out.print( root.key + " " );
			printInOrder( root.right );
		}

		public int[] calcLevelCounts()
		{
			int levelCounts[] = new int[countLevels()];
			calcLevelCounts( root, levelCounts, 0 );
			return levelCounts;
		}
		private void calcLevelCounts( BSTNode root, int levelCounts[], int level )
		{
			if (root==null)return;
			++levelCounts[level];
			calcLevelCounts( root.left, levelCounts, level+1 );
			calcLevelCounts( root.right, levelCounts, level+1 );
		}

		public int countNodes() // DYNAMIC COUNT ON THE FLY TRAVERSES TREE
		{
			return countNodes( this.root );
		}
		private int countNodes( BSTNode<T> root )
		{
			if (root==null) return 0;
			return 1 + countNodes( root.left ) + countNodes( root.right );
		}

	//////////////////////////////////////////////////////////////////////////////////////
	// # # # #   WRITE THE REMOVE METHOD AND ALL HELPERS / SUPPORTING METHODS   # # # # #

	public boolean remove(T keytoremove)
	{

	   removeAttempt = false;
		 remove(keytoremove, root);

		 return removeAttempt;
	}

	public void remove(T keytoremove, BSTNode<T> root)
	{

		if (root == null) return;

		if (keytoremove.equals(root.key))
		{
			if (root.left == null && root.right == null)
			{
			  this.root = null;
				removeAttempt = true;
				return;
		  }
			if (root.left != null && root.right != null)
			{
			  root.key = twoChildHelper(root, root.left);
				removeAttempt = true;
		  	return;
		  }

			if (root.left != null)
			{
				this.root = root.left;
				removeAttempt = true;
				return;
			}

			if (root.right != null) 
			{
				this.root = root.right;
				removeAttempt = true;
				return;
			}
		}

		if (null != root.left && keytoremove.equals(root.left.key))
		{
			classifyL(root, root.left);
			return;
		}
		if (null != root.right && keytoremove.equals(root.right.key))
		{
			classifyR(root, root.right);
			return;
		}
		remove(keytoremove, root.left);
		remove(keytoremove, root.right);
		return;
	}

	public void classifyL (BSTNode<T> parent, BSTNode<T> child) // CHILD IS LEFT OF THE PARENT
	{
		if (child.left == null && child.right == null) // Node to delete has no children
		{
			parent.left = null;
			removeAttempt = true;
			return;
		}
		if (child.left != null && child.right != null) // Node to delete has two children
		{
			child.key = twoChildHelper(child, child.left);
			removeAttempt = true;
			return;
		}
		if (child.left != null) // Node to delete has one child
		{
			parent.left = child.left;
			removeAttempt = true;
			return;
		}
		if (child.right != null) // Node to delete has one child
		{
			parent.left = child.right;
			removeAttempt = true;
			return;
		}
		return;
	}

	public void classifyR(BSTNode<T> parent, BSTNode<T> child)
	{
		if (child.left == null && child.right == null)
		{
			parent.right = null;
			removeAttempt = true;
			return;
		}
		if (child.left != null && child.right != null)
		{
			child.key = twoChildHelper(child, child.left);
			removeAttempt = true;
			return;
		}
		if (child.left != null)
		{
			parent.right = child.left;
			removeAttempt = true;
			return;
		}
		if (child.right != null)
		{
			parent.right = child.right;
			removeAttempt = true;
			return;
		}
		return;
	}

	public T twoChildHelper(BSTNode<T> root, BSTNode<T> leftofroot)
	{
		root = root.left;
		while (leftofroot.right != null)
		{
			leftofroot = leftofroot.right;
			if (leftofroot.right == null) break;
			root = root.right;
		}
		root.right = null;

		return leftofroot.key;
	}
} // END BSTREEP7 CLASS
