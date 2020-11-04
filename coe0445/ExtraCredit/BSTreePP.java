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
class BSTreePP<T>
{
  private BSTNode<T> root;
  private int nodeCount;
  private boolean addAttemptWasDupe=false;


  public BSTreePP()
  {
    nodeCount=0;
    root=null;
  }


	@SuppressWarnings("unchecked")
	public BSTreePP( String infileName ) throws Exception
	{
		root=null;
		Scanner infile = new Scanner( new File( infileName ) );
		while ( infile.hasNext() )
			add( (T) infile.next() );
		infile.close();
	}


	@SuppressWarnings("unchecked")
	public boolean add( T key )
	{	addAttemptWasDupe=false;
		root = addHelper( this.root, key );
		if (!addAttemptWasDupe) ++nodeCount;
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
    }

		public int size()
		{
			return nodeCount;
		}


    public BSTreePP<T> makeBalancedCopyOf( )
  	{
  		// define an ArrayList<T>
  		ArrayList<T> keys = new ArrayList<T>();
  		// traverse this tree IN-ORDER adding A B C D E F G in that order to ArrayList
  		// you'll need a recursive in order helper. The visitation operation will be
  		// to add the key of each root to the ArrayList
  		addToArrayList(keys, this.root);
  		// define a new BSTreeL8<T>
  		BSTreePP<T> balancedBST = new BSTreePP<T>();


  		addKeysInBalancedOrder(keys, 0, keys.size() - 1, balancedBST);

  		// now call a recursive method (you write it below) that looks a lot like a binary
  		// search that  visits the elememnts of the ArrayList likea bserach would and
  		// the visitation operation is to add that ArrayList element to the BST in an
  		// ordering that will produce a balanced BST

  		return balancedBST;   // return that balancedBST;
  	}

  	private void addToArrayList(ArrayList<T> keys, BSTNode<T> root)
  	{
  		if (root == null) return;
  		addToArrayList(keys, root.left);
  		keys.add(root.key);
  		addToArrayList(keys, root.right);
  		return;
  	}


  	 private void addKeysInBalancedOrder ( ArrayList<T> keys, int lo, int hi, BSTreePP<T> balancedBST )  // V L R
  	 {
  		 if (hi < lo) return;
  		 balancedBST.add(keys.get(lo + (hi - lo)/2));


  		 addKeysInBalancedOrder(keys, lo, lo + (hi - lo)/2 - 1, balancedBST); // L - hi becomes mid
  		 addKeysInBalancedOrder(keys, lo + (hi - lo)/2 + 1, hi, balancedBST); // R - lo becomes mid

  	 }



 		 public void LevelOrder(ArrayList<T> lOrder)
 	 	{	if (this.root == null) return;
 	 		Queue<T> q = new Queue<T>();
 	 		q.enqueue( this.root ); // this. just for emphasis/clarity
 	 		while ( !q.empty() )
 	 		{	BSTNode<T> n = q.dequeue();
 	 			lOrder.add(n.key);
 	 			if ( n.left  != null ) q.enqueue( n.left );
 	 			if ( n.right != null ) q.enqueue( n.right );
 	 		}
 	 	}

		public int countLevels()
		{
			return countLevels(root);
		}

		private int countLevels(BSTNode<T> root)
		{
			if (null == root) return 0;
			return 1 + Math.max(countLevels(root.left), countLevels(root.right));
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
 			levelCounts[level] += 1;
 			calcLevelCounts( root.left, levelCounts, level+1 );
 			calcLevelCounts( root.right, levelCounts, level+1 );
 		}



     public void prettyPrint()
     {
       ArrayList<T> keys = new ArrayList<T>();
			 addToArrayList(keys, root);

			 ArrayList<T> lOrder = new ArrayList<T>();
			 LevelOrder(lOrder);

			 int[] lCounts = calcLevelCounts();
			 String[][] arr = new String[countLevels()][keys.size()];
			 for (int i = 0; i < arr.length; i++)
			 {
				 for (int j = 0; j < arr[i].length; j++)
				 {
					 arr[i][j] = " ";
				 }
			 }

			 int[] lc = new int[keys.size()];
			 int k = 0;
			 for (int i = 0; i < lCounts.length; i++)
			 {
				 for (int j = 0; j < lCounts[i]; j++)
				 {
					 arr[i][keys.indexOf(lOrder.get(k))] = (String)lOrder.get(k);
					 k++;
				 }
			 }

			 for (int i = 0; i < arr.length; i++)
			 {
				 for (int j = 0; j < arr[i].length; j++)
				 {
					 System.out.print(arr[i][j]);
				 }
				 System.out.println();
			 }
      }

  }
