import java.io.*;
import java.util.*;

public class LinkedList<T> {
	public Node<T> head;

	public LinkedList() {
		head = null;
	}

  public LinkedList(char c) {
    head = new Node(c);
  }

  public void insertAtFront(T data) {
		head = new Node(data);
	}

  public void insertAtTail(T data) {
		Node<T> tail = new Node<T>(data);
		if (head == null) insertAtFront(data);

		else {
  		Node curr = head;
  		while (curr.getNextNode() != null) {
  			curr = curr.getNextNode();
  		}

  		curr.setNextNode(tail);
	  }
  }

  public boolean contains(T data) {
    Node<T> curr = head;

		while (curr != null) {
		  if (curr.data == data) {
        return true;
      }
      curr = curr.getNextNode();
    }
    return false;
  }

  public Node end() {
    Node<T> curr = head;
    if (curr == null) return curr;

	  while (curr.nextNode != null) {
      curr = curr.nextNode;
    }
    return curr;
  }

  public Node find(T data) {
    Node curr = this.head;

	  while (curr != null) {
      if (curr.data == data) return curr;
      curr = curr.nextNode;
    }
    return null;
  }
}
