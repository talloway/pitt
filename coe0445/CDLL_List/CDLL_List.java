import java.io.*;
import java.util.*;

public class CDLL_List<T>
{
	private CDLL_Node<T> head;
	private int count=0;

	public CDLL_List()
	{
		head = null;
	}

	public CDLL_List( String fileName, String insertionMode ) throws Exception
	{
			BufferedReader infile = new BufferedReader( new FileReader( fileName ) );
			while ( infile.ready() )
			{	@SuppressWarnings("unchecked")
				T data = (T) infile.readLine();
				if ( insertionMode.equals("atFront") )
					insertAtFront( data );
				else if ( insertionMode.equals( "atTail" ) )
					insertAtTail( data );
				else
					die( "FATAL ERROR: Unrecognized insertion mode <" + insertionMode + ">. Aborting program" );
			}
			infile.close();
	}

	private void die( String errMsg )
	{
		System.out.println( errMsg );
		System.exit(0);
	}


	@SuppressWarnings("unchecked") // End template

	public int size() // Find the size of CDLL
	{
		if (null == head) return 0;
		CDLL_Node curr = head;

		int i = 0;
		do // Walk around loop until head is found
		{
		  curr = curr.getNext();
		  i++;
	  } while (curr != head);

		return i;
	}

	@SuppressWarnings("unchecked")
	public void insertAtFront(T data)
	{

		CDLL_Node<T> newNode = new CDLL_Node( data,null,null);
		if (head==null) // List is empty
		{
			newNode.setNext( newNode );
			newNode.setPrev( newNode );
			head = newNode;
			return;
		}

		newNode.setNext(head); // List isn't empty - slot in at front and have head point to it
		newNode.setPrev(head.getPrev());
		head.getPrev().setNext(newNode);
		head = newNode;
		return;
	}


	@SuppressWarnings("unchecked")
	public void insertAtTail(T data)
	{
		CDLL_Node<T> newNode = new CDLL_Node( data,null,null);
		if (head==null) // List is empty
		{
			newNode.setNext( newNode );
			newNode.setPrev( newNode );
			head = newNode;
			return;
		}

		newNode.setNext(head); // List isn't empty - slot in at tail and have it point to head
		newNode.setPrev(head.getPrev());
		head.getPrev().setNext(newNode);
		head.setPrev(newNode);
		return;

	}


	public boolean contains( T key ) // Return true if key is found in CDLL, false otherwise
	{
		return (this.search(key) != null);
	}

	public CDLL_Node<T> search( T key )
	{
		if (null == head) return null; // No nodes so nothing to return

		CDLL_Node curr = head;
		CDLL_Node stop = head.getPrev();

		// Check head and head.getPrev quick for the key
		if (Objects.equals((T)curr.getData(), key)) return curr;
		if (Objects.equals((T)stop.getData(), key)) return stop;

		// Walk through rest of list to check for the key
		while (curr != stop)
		{
			if (Objects.equals((T)curr.getData(), key))
			{
				return curr;
			}
			curr = curr.getNext();
		}

		return null;
	}


	@SuppressWarnings("unchecked")
	public String toString()
	{
		String str = "";
		if (head == null) return str;
		CDLL_Node curr  = head;
		CDLL_Node stop = head.getPrev();

		while (curr != stop) // While loop used here over d0-while because of <=> connector
		{
		 str += curr.getData();
		 str += "<=>";
		 curr = curr.getNext();
		}
		str += head.getPrev().getData();
		return str;

	}

} // END CDLL_LIST CLASS
