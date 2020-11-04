import java.io.*;
import java.util.*;

public class EdgePQ {
  public HashMap<Node, Integer> indirectionTable;
  public int size = 10;
  public int index;
  public Node[] edgeArr;

  public EdgePQ(EdgeLinkedList[] graph) {
    indirectionTable = new HashMap<Node, Integer>();
    index = 0;
    edgeArr = new Node[size];
    addEdgesToPQ(graph);
  }

  public Node getFront() {  return this.edgeArr[0];  }

  public void pop() {
    switchEdges(0, index - 1);
    this.edgeArr[index - 1] = null;
    index--;
    if (index > 1) swim(0);
  }

  public void printPQ() {
    System.out.println("PRINTING");
    for (int i = 0; i < index; i++) {
      System.out.println("From: " + edgeArr[i].getFrom() + ". To: " + edgeArr[i].getTo() + ". Time: " + edgeArr[i].getTime());
    }
  }

  public void addEdgesToPQ(EdgeLinkedList[] graph) {
    for (int i = 0; i < graph.length; i++) {
      Node cur = graph[i].head;
      while (cur != null) {
        if (index >= size) edgeArr = upsizeArr(edgeArr);
        edgeArr[index] = cur;
        indirectionTable.put(cur, index);
        if (index > 0) sink(index);
        if (index > 1) swim(index);
        cur = cur.getNext();
        index++;
      }
    }
    return;
  }

  public Node[] upsizeArr(Node[] oldArr) {
    this.size *= 2;
    Node[] newArr = new Node[this.size];
    for (int i = 0; i < oldArr.length; i++) {
      newArr[i] = oldArr[i];
    }
    return newArr;
  }

  public void sink(int point) {
    if ((point - 1) / 2 >= 0 && edgeArr[point].getTime() < edgeArr[(point - 1) / 2].getTime()) {
      switchEdges(point, (point - 1) / 2);
      sink((point - 1) / 2);
    }
  }

  public void swim(int point) {
    if (2 * point + 1 < this.index && edgeArr[point].getTime() > edgeArr[2*point+1].getTime()) {
      switchEdges(point, 2*point + 1);
      swim(2*point + 1);
    }
    if (2 * point + 2 < this.index && edgeArr[point].getTime() > edgeArr[2*point+2].getTime()) {
      switchEdges(point, 2*point + 2);
      swim(2*point + 2);
    }
  }

  private void switchEdges(int index1, int index2) {
    Node temp = new Node(this.edgeArr[index1]);
    this.edgeArr[index1] = this.edgeArr[index2];
    this.edgeArr[index2] = temp;
    indirectionTable.put(this.edgeArr[index1], index1);
    indirectionTable.put(this.edgeArr[index2], index2);
    return;
  }

}
