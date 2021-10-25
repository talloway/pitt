/* This class was borrowed and modified as needed with permission from it's original author
   Mark Stelhik ( http:///www.cs.cmu.edu/~mjs ).  You can find Mark's original presentation of
   this material in the links to his S-01 15111,  and F-01 15113 courses on his home page.
*/

import java.io.*;
import java.util.*;


public class Graph // throws Exception
{
	private final int NO_EDGE = -1; // all real edges are positive
	private Edge G[];              // will point to a 2D array to hold our graph data

	private int numEdges;
	public Graph( String graphFileName ) throws Exception
	{
		loadGraphFile( graphFileName );

//		T E M P O R A R Y    C O D E    T O    V E R I F Y    P R I V A T E
// 		M E T H O D S    W E    C A N T    C A L L    F R O M   T E S T E R
//		      ........R E M O V E   A F T E R   T E S T I N G .......
/*
		for (int node = 0 ; node < G.length ; ++node )
		{
			System.out.format( "DEBUG:: in (%d)=%d  ",node,inDegree(node) );
			System.out.format( "out(%d)=%d  ",node,outDegree(node) );
			System.out.format( "deg(%d)=%d\n",node,degree(node) );
		}
*/
	}

	///////////////////////////////////// LOAD GRAPH FILE //////////////////////////////////////////
	//
	// FIRST NUMBER IN GRAPH FILE IS THE SQUARE DIMENSION OF OUR 2D ARRAY
	// THE REST OF THE LINES EACH CONTAIN A TRIPLET <ROW,COL,WEIGHT> REPRESENTING AN EDGE IN THE GRAPH

	private void loadGraphFile( String graphFileName ) throws Exception
	{
		Scanner graphFile = new Scanner( new File( graphFileName ) );

		int dimension = graphFile.nextInt();   	// THE OF OUR N x N GRAPH
		G = new Edge[dimension]; 		// N x N ARRAY OF ZEROS
		numEdges=0;

		// WRITE A LOOP THAT PUTS NO_EDGE VALUE EVERYWHERE EXCPT ON THE DIAGONAL
		// NOW LOOP THRU THE FILE READING EACH TRIPLET row col weight FROM THE LINE
		// USE row & col AS WHERE TO STORE THE weight
		// i.e. g[row][col] = w;

		while ( graphFile.hasNextInt() )
		{
			int row = graphFile.nextInt();
			int col = graphFile.nextInt();
			int w = graphFile.nextInt();
			addEdge(row, col, w);
			// read in the row,col,weight // that eat us this line
			// call add edge
		}

	} // END readGraphFile

	private void addEdge( int r, int c, int w )
	{
		Edge front = G[r];
		G[r] = insertAtFront(front, c, w);
		++numEdges; // only this method adds edges so we do increment counter here only
	}

  private boolean hasEdge(int fromNode, int toNode)
  {
		/*
    if (fromNode > G.length || toNode > G.length) return false;
		if (G[fromNode][toNode] == NO_EDGE) return false;
		*/return true;
  }

	// IN DEGREE IS NUMBER OF ROADS INTO THIS CITY
	// NODE IS THE ROW COL#. IN DEGREE IS HOW MANY POSITIVE NUMBERS IN THAT COL
	private int inDegree(int dest)
	{
		int inD = 0;
		for (int i = 0; i < G.length; i++)
		{
			Edge front = G[i];
			while (null != front)
			{
				if (front.dest == dest) inD++;
				front = front.next;
			}
		}
		return inD;
	}

	// OUT DEGREE IS NUMBER OF ROADS OUT OF THIS CITY
	// NODE IS THE ROW #. IN DEGREE IS HOW MANY POSITIVE NUMBERS IN THAT ROW
	private int outDegree(int from)
	{
		int outD = 0;
		Edge front = G[from];
		while (null != front)
		{
			outD++;
			front = front.next;
		}
		return outD;
	}

	// DEGREE IS TOTAL NUMBER OF ROAD BOTH IN AND OUT OFR THE CITY
	private int degree(int node)
	{
		return inDegree(node) + outDegree(node);
	}

	// PUBLIC METHODS

	public int maxOutDegree()
	{
		int maxOD = 0;
		int result = 0;
		for (int i = 0; i < G.length; i++)
		{
			result = outDegree(i);
			if (result > maxOD) maxOD = result;
		}
		return maxOD;
	}

	public int maxInDegree()
	{
		int maxID = 0;
		int result = 0;
		for (int i = 0; i < G.length; i++)
		{
			result = inDegree(i);
			if (result > maxID) maxID = result;
		}
		return maxID;
	}

	public int minOutDegree()
	{
		int minOD = G.length;
		int result = 0;
		for (int i = 0; i < G.length; i++)
		{
			result = outDegree(i);
			if (result < minOD) minOD = result;
		}
		return minOD;
	}

	public int minInDegree()
	{
		int minID = G.length;
		int result = 0;
		for (int i = 0; i < G.length; i++)
		{
			result = inDegree(i);
			if (result < minID) minID = result;
		}
		return minID;
	}

	public int maxDegree()
	{
		int maxD = 0;
		int result = 0;
		for (int i = 0; i < G.length; i++)
		{
			result = degree(i);
			if (result > maxD) maxD = result;
		}
		return maxD;
	}

	public int minDegree()
	{
		int minD = G.length;
		int result = 0;
		for (int i = 0; i < G.length; i++)
		{
			result = inDegree(i) + outDegree(i);
			if (result < minD) minD = result;
		}
		return minD;
	}

	public void removeEdge(int fromNode, int toNode)
	{
		if (fromNode > G.length)
		{
			new noEdgeException(fromNode, toNode);
			return;
		}

		Edge first = G[fromNode];
		if (first.dest == toNode)
		{
			G[fromNode] = first.next;
			return;
		}

		while (null != first.next)
		{
			if (first.next.dest == toNode)
			{
				first.next = first.next.next;
				return;
			}
			first = first.next;
		}

		new noEdgeException(fromNode, toNode);
		return;
	}

	// TOSTRING
	public String toString()
	{
		String[][] arr = new String[G.length][G.length];
		int c;
		Edge front;

		for (int i = 0; i < G.length; i++)
		{
			c = 0;
			front = G[i];
			System.out.print(i + ":");
			while (null != front)
			{
				System.out.print(" -> [" + front.dest + "," + front.weight +"]");
				front = front.next;
			}
			System.out.println();
		}
		return "";
	} // END TOSTRING

	private Edge insertAtFront(Edge front, int c, int w)
	{
		Edge newfront = new Edge(c, w, front);
		return newfront;
	}

}
class noEdgeException extends Exception
{
	noEdgeException(int fromNode, int toNode)
	{
		System.out.println("java.lang.Exception: Non Existent Edge Exception: removeEdge(" + fromNode +", " + toNode +")");
	}
}

class Edge
{
	int dest, weight;
	Edge next;
	Edge(int dest, int weight, Edge next)
	{
		this.weight = weight;
		this.dest = dest;
		this.next = next;
	}
}
