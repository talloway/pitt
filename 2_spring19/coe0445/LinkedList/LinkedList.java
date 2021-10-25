import java.io.*;
import java.util.*;

public class LinkedList<T>
{
	private Node<T> head;

	public LinkedList()
	{
		head = null;
	}

	public LinkedList( String fileName, boolean orderedFlag )
	{
		head=null;
		try
		{
			BufferedReader infile = new BufferedReader( new FileReader( fileName ) );
			while ( infile.ready() )
			{
				if (orderedFlag)
					insertInOrder( (T)infile.readLine() );
				else
					insertAtTail( (T)infile.readLine() );
			}
			infile.close();
		}
		catch( Exception e )
		{
			System.out.println( "FATAL ERROR CAUGHT IN C'TOR: " + e );
			System.exit(0);
		}
	}
  // END OF TEMPLATE

	public void insertAtFront(T data) // Insert a node at the front - make head point to it
	{
		head = new Node<T>(data,head);
	}


	public String toString() // Used to print list elements
	{
		String toString = "";

		for (Node curr = head; curr != null; curr = curr.getNext())
		{
			toString += curr.getData();
			if (curr.getNext() != null)
				toString += " ";
		}

		return toString;
	}

	public int size() // Find size of list by walking through it
	{
		Node n = head;
		int i = 0;

		while (n != null)
		{
			i++;
			n = n.getNext();
		}
		return i;
	}

	public boolean empty() // Check if list is empty
	{
		return(this.size() == 0);
	}

	public boolean contains( T key )
	{
		return(this.search(key) != null);
	}

	public Node<T> search( T key ) // Walk through list to see if any of the elements match the key
	{
		if (head == null) return null;
		Node n = head;

		while (n.getNext() != null)
		{
			if (Objects.equals(n.getData(), key)) return n;
			n = n.getNext();
		}
		return null;
	}

	public void insertAtTail(T data) // Insert node at end of list - make prev node (if applicable) point to it
	{
		Node<T> tail = new Node<T>(data);
		if (head == null) insertAtFront(data); // There are no other nodes so we can just do insertAtFront - don't necessarily have to call iAF method though

		else // Have to walk to end of list and add node there
		{
		Node curr = head;

		while (curr.getNext() != null)
		{
			curr = curr.getNext();
		}

		curr.setNext(tail);
	  }
  }

	public void insertInOrder(T data) // Insert node in sorted lexical order
	{
		Comparable dataC = (Comparable) data;

		if (head == null || dataC.compareTo(head.getData()) <= 0) // There are no nodes in the list
		{
			insertAtFront(data);
			return;
	  }

		Node curr = head;

		while (curr != null) { // Walking through list to find the space where the node belongs

			if (curr.getNext() == null) // Reached end of list - can just do equivalent of insertAtTail
			{														// Better to just insertAtTail here because the iAT method has to walk through entire list
				Node<T> tailNode = new Node(data, null);
				curr.setNext(tailNode);
				return;
			}

			if (dataC.compareTo(curr.getNext().getData()) <= 0) // Found where it belongs in the list
			{
				Node<T> newNode = new Node(data, curr.getNext());
				newNode.setNext(curr.getNext());
				curr.setNext(newNode);
				return;
			}

			curr = curr.getNext();
		}

	}

	public boolean remove(T key) // Find node and remove it
	{
		if (null == head) return false; // List is empty - nothing to remove
		Node curr = head;

		if (Objects.equals(curr.getData(), key)) // Key is at first node
		{
			head = head.getNext();
			return true;
		}

		else curr = curr.getNext();

		while (curr != null)
		{
			if (curr.getNext() == null) // We reached last node
			{

				/*
				Key is at last node - the way this is structured, we can't access the previous node
				from this position,  so we have to call removeAtTail.
				*/
				if (Objects.equals(curr.getData(), key))
				{
				this.removeAtTail();
				return true;
			  }
				return false;
			}

			if (Objects.equals(curr.getNext().getData(), key)) // Found key at some node in the list by looking ahead
			{
			curr.setNext(curr.getNext().getNext()); // Skip past the node to be removed
		  return true;
		  }

			curr = curr.getNext();
		}
		return false;
	}

	public boolean removeAtTail() // Remove last node by walking through entire list
	{

		if (null == head) return false; // Nothing to remove

		if (null == head.getNext()) // Head points to only node
		{
			head = null;
			return true;
		}
		Node curr = head;

		while (null != curr.getNext())
		{
			if (null == curr.getNext().getNext()) // Curr is at second-to-last node, can set its next to null
			{
				curr.setNext(null);
				return true;
			}
			curr = curr.getNext();
		}
		return false;
	}


	public boolean removeAtFront() // Remove first node
	{
		if (null == head) return false; // Nothing to remove

	  else
		{
		head = head.getNext(); // Reassign head
		return true;
	  }
	}

	public LinkedList<T> union( LinkedList<T> other ) // Finds union of two linkedlists
	{
		LinkedList<T> unionList = new LinkedList<T>();
		Node curr = head;
		Node curr2 = other.head;

		while (curr != null)
		{
			if (!unionList.contains((T)curr.getData()))
			{
				unionList.insertInOrder((T)curr.getData());
			}
			curr = curr.getNext();
		}

		while (curr2 != null)
		{
			if (!unionList.contains((T)curr2.getData()))
			{
				unionList.insertInOrder((T)curr2.getData());
			}
			curr2 = curr2.getNext();
		}

		return unionList;
	}

	public LinkedList<T> inter( LinkedList<T> other ) // Finds intersection of two linkedlists
	{
		LinkedList<T> interList = new LinkedList<T>();
		Node curr = head;

		while (curr != null)
		{
			if (other.contains((T)curr.getData()) && !interList.contains((T)curr.getData()))
			{

				interList.insertInOrder((T)curr.getData());
			}
			curr = curr.getNext();
		}

		return interList;
	}

	public LinkedList<T> diff( LinkedList<T> other ) // Finds difference of two linkedlists
	{
		LinkedList<T> diffList = new LinkedList<T>();
		Node curr = head;

		while (curr != null)
		{
			if (!other.contains((T)curr.getData()) && !diffList.contains((T)curr.getData()))
			{
				diffList.insertInOrder((T)curr.getData());
			}
			curr = curr.getNext();
		}

		return diffList;
	}

	public LinkedList<T> xor( LinkedList<T> other ) // Returns exclusive-or of two linked lists
	{
		return diff(other).union(other.diff(this));
	}

} //END LINKEDLIST CLASS
