public class Node<T>
{
  public T data;
  public Node nextNode;
  public LinkedList nextLL;


  public Node() {
    this( null, null, null );
  }

  public Node(T data) {
    this( data, null, null );
  }

  public Node(T data, Node nextNode, LinkedList nextLL) {
    setData( data );
    setNextNode( nextNode );
    setNextLL( nextLL );
  }

  public T getData() {
    return data;
  }

  public Node getNextNode() {
    return nextNode;
  }

  public void setData(T data) {
     this.data = data;
  }

  public void setNextNode(Node nextNode) {
    this.nextNode = nextNode;
  }

  public void setNextLL(LinkedList nextLL) {
    this.nextLL = nextLL;
  }

  public String toString() {
	  return "" + getData();
  }
}
