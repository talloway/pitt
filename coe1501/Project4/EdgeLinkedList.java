import java.io.*;
import java.util.*;

public class EdgeLinkedList<T>
{
	public Node head;

	public EdgeLinkedList() {  head = null;  }

	public void insertAtFront(Node c) {  head = new Node(c);  }

	public void insertAtFront(int from, int to, String type, int bandwidth, double length) {  head = new Node(from, to, type, bandwidth, length, head);  }

	public String toString()
	{
		String toString = "";
		for (Node curr = head; curr != null; curr = curr.getNext())
		{
			toString += curr.toString();
			if (curr.getNext() != null)
				toString += " ";
		}
		return toString;
	}

	public boolean contains( T key )  {  return(this.search(key) != null);  }

	public Node search( T key )
	{
		if (head == null) return null;
		Node n = head;

		while (n.getNext() != null)
		{
			if (Objects.equals(n.getTo(), key)) return n;
			n = n.getNext();
		}
		return null;
	}
}
