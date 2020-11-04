import java.io.*;
import java.util.*;

public class CDLL_JosephusList<T>
{
	private CDLL_Node<T> head;  // pointer to the front (first) element of the list
	private int count=0;
	// private Scanner kbd = new Scanner(System.in); // FOR DEBUGGING. See executeRitual() method
	public CDLL_JosephusList()
	{
		head = null; // compiler does this anyway. just for emphasis
	}

	// LOAD LINKED LIST FORM INCOMING FILE

	public CDLL_JosephusList( String infileName ) throws Exception
	{
		BufferedReader infile = new BufferedReader( new FileReader( infileName ) );
		while ( infile.ready() )
		{	@SuppressWarnings("unchecked")
			T data = (T) infile.readLine(); // CAST CUASES WARNING (WHICH WE CONVENIENTLY SUPPRESS)
			insertAtTail( data );
		}
		infile.close();
	}



	// ########################## Y O U   W R I T E / F I L L   I N   T H E S E   M E T H O D S ########################

	// TACK ON NEW NODE AT END OF LIST
	@SuppressWarnings("unchecked")
	public void insertAtTail(T data)
	{
		if (this.search(data) != null) return; // Don't allow duplicates into list
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


	public int size()
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

	// RETURN REF TO THE FIRST NODE CONTAINING  KEY. ELSE RETURN NULL
	public CDLL_Node<T> search( T key )
	{
		if (null == head) return null;

		CDLL_Node curr = head;
		CDLL_Node stop = head.getPrev();
		if (Objects.equals((T)curr.getData(), key)) return curr;
		if (Objects.equals((T)stop.getData(), key)) return stop;

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

	// RETURNS CONATENATION OF CLOCKWISE TRAVERSAL
	@SuppressWarnings("unchecked")
	public String toString()
	{
		String str = "";
		if (head == null) return str;
		CDLL_Node curr  = head;
		CDLL_Node stop = head.getPrev();

		while (curr != stop) // While loop used here because of <=> connector
		{
		 str += curr.getData();
		 str += "<=>";
		 curr = curr.getNext();
		}
		str += head.getPrev().getData();
		return str;

	}

	void removeNode( CDLL_Node<T> deadNode )
	{

		deadNode.getPrev().setNext(deadNode.getNext());
		deadNode.getNext().setPrev(deadNode.getPrev());
	}

	public void executeRitual( T first2Bdeleted, int skipCount )
	{
		if (size() < 1 ) return;
		if (skipCount == 0) return; // ADDED
		CDLL_Node<T> curr = search( first2Bdeleted );
		if ( curr==null ) return;

		// OK THERE ARE AT LEAST 2 NODES AND CURR IS SITING ON first2Bdeleted
		do
		{
			CDLL_Node<T> deadNode = curr;
			T deadName = deadNode.getData();

			// ** println( "stopping on Misurda to delete Misurda");
			System.out.println("Stopping on " + deadName + " to delete " + deadName);

			removeNode(deadNode);
			if (deadNode == head)
			{
				if (skipCount > 0)
				{
					head = deadNode.getNext();
				}

				else if (skipCount < 0)
				{
					head = deadNode.getPrev();
				}
			
			}

			// remove the deadNode
			// now you gotta worry about what if head was pointinng to the same node as DeadNode pointed to?
			// if it was them make head point to whicher node you are about to make curr point to

			// adjust head to point to either deadNodes prev or deadNodes next ( hint are you CLOCKWISE or COUNTER )
			// you HAVE/MUST do this now cuase you are about to print the list. If you don't - list is FUBAR!!

			// ** println("deleted. list now:   HoffmanT<=>Lange<=>Lee<=>Litman<=>Melhem<=>Mosse<=>Novacky<=>Ramirez");
			System.out.println("deleted. list now: " + this.toString());
			if (size() == 1) break;
			// if the list size has reached 1 break out of this loop YOU ARE DONE


			// othewise make curr point to same thing you just made head point to so you can resume the ritual
			if (skipCount > 0) curr = curr.getNext();
			else if (skipCount < 0) curr = curr.getPrev();

			System.out.print("resuming at " + curr.getData() + ", skipping " + curr.getData() + " + ");
			if (skipCount > 0) System.out.println((skipCount - 1) + " nodes CLOCKWISE after");
			else if (skipCount < 0) System.out.println((-1*(skipCount+1)) + " nodes COUNTER_CLOCKWISE after");
			// ** println("resuming at Mosse, skipping Mosse + 4 nodes CLOCKWISE after");

			// write loop that advance curr skipCount times (be sure of CLOCKWISE or COUNTER)
			int i = 0;
			while (i != skipCount)
			{
			  if (skipCount > 0)
				{
					curr = curr.getNext();
					i++;
				}

				else if (skipCount < 0)
				{
					curr = curr.getPrev();
					i--;
				}
			}

			//String junk = kbd.nextLine();  <= MIGHT FIND THis HELPFUL. FOR DEBUGGING. WAITS FOR YOU TO HIT RETUN KEY

		}
		while (size() > 1 );

	}

} // END CDLL_LIST CLASS
