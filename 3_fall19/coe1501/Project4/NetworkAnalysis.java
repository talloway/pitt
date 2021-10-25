import java.io.*;
import java.util.*;

public class NetworkAnalysis {

  public static void main(String[] args) throws Exception {

    if (args.length != 1) {
      System.out.println("\nIncorrect number of args entered. Included files for this project are: ");
      System.out.println("\t1. network_data1.txt");
      System.out.println("\t2. network_data2.txt");
      System.exit(0);
    }

    BufferedReader inFile = new BufferedReader(new FileReader(args[0]));
    Scanner kbd = new Scanner(System.in);
    int arrSize = Integer.parseInt(inFile.readLine());
    EdgeLinkedList[] graph = new EdgeLinkedList[arrSize];

    for (int i = 0; i < arrSize; i++) {  graph[i] = new EdgeLinkedList();  }

    while (inFile.ready()) {
      String[] tokens = inFile.readLine().split("\\s+");
      int from = Integer.parseInt(tokens[0]);
      int to = Integer.parseInt(tokens[1]);
      String type = tokens[2];
      int bandwidth = Integer.parseInt(tokens[3]);
      int length = Integer.parseInt(tokens[4]);
      graph[from].insertAtFront(from, to, type, bandwidth, length);
      graph[to].insertAtFront(to, from, type, bandwidth, length);
    }

    while (true) {
      System.out.println("\n\n\n############################################################################################");
      System.out.println("\t\t\t     Network Analysis Menu     ");
      System.out.println("1. Find the lowest latency path between any two points.");
      System.out.println("2. Determine whether or not the graph is copper-only connected.");
      System.out.println("3. Find the minimum average latency spanning tree for the graph.");
      System.out.println("4. Determine whether the graph would remain connected even if any two vertices fail.");
      System.out.println("5. Quit the program.");
      System.out.println("############################################################################################\n\n\n");
      System.out.print("Enter your choice: ");
      int choice = kbd.nextInt();

      if (choice == 5) System.exit(0);

      if (choice < 1 || choice > 5) {
        System.out.println("Wrong input.");
        System.exit(0);
      }

      if (choice == 1) {
        if (graph.length < 2) {
          System.out.println("The graph is too small for this operation.");
          System.exit(0);
        }
        System.out.print("Enter the first vertex: ");
        int vertex1 = kbd.nextInt();
        System.out.print("Enter the second vertex: ");
        int vertex2 = kbd.nextInt();

        if (vertex1 >= graph.length || vertex2 >= graph.length ) {
          System.out.println("Invalid numbers for one or more vertices. This graph has " + graph.length + " vertices. ");
          System.exit(0);
        }
        System.out.println("Shortest path from vertex " + vertex1 + " to vertex " + vertex2 + " is " + shortestPath(graph, vertex1, vertex2));
      }

      else if (choice == 2) {
        if (graph.length < 2) {
          System.out.println("The graph is too small for this operation.");
          System.exit(0);
        }
        String s = copperOnlyConnected(graph, 0) ? "The graph is copper-only connected." : "The graph is not copper-only connected.";
        System.out.println(s);
      }

      else if (choice == 3) {
        if (graph.length < 1) {
          System.out.println("The graph is too small for this operation.");
          System.exit(0);
        }
        String s = mst(graph);
        System.out.println(s);
      }

      else if (choice == 4) {
        if (graph.length < 3) {
          System.out.println("The graph is too small for this operation.");
          System.exit(0);
        }
        String s = extraBiconnected(graph) ? "SUCCESS - The graph will stay connected even if any two vertices are removed." : "FAIL - There is a pair of vertices that will cause the graph to be not connected when removed.";
        System.out.println(s);
      }

      try {  Thread.sleep(1500);  }
      catch(InterruptedException ex) {  Thread.currentThread().interrupt();  }
    } // End while
  } // End main

  public static String shortestPath(EdgeLinkedList[] graph, int vertex1, int vertex2) {
    String path = "";
    if (graph.length == 0) return path;
    if (vertex1 == vertex2) return path + vertex1;
    double[] timeArr = new double[graph.length];
    int[] viaArr = new int[graph.length];
    int[] visitArr = new int[graph.length];
    int cur = vertex1;
    int visitCount = 0;
    double minBandwidth = Double.MAX_VALUE;
    for (int i = 0; i < timeArr.length; i++) {
      timeArr[i] = (i == vertex1) ? 0 : Double.MAX_VALUE;
    }

    while (visitCount < timeArr.length) {
      visitCount++;
      visitArr[cur] = -1;
      Node c = graph[cur].head;
      while (c != null) {
        if (c.getTime() + timeArr[cur] < timeArr[c.getTo()]) {
          timeArr[c.getTo()] = c.getTime() + timeArr[cur];
          viaArr[c.getTo()] = cur;
        }
        if (c.getBandwidth() < minBandwidth) {
          minBandwidth = c.getBandwidth();
        }
        c = c.getNext();
      }

      double lowestDist = Double.MAX_VALUE;
      int lowestIndex = 0;
      for (int i = 0; i < timeArr.length; i++) {
        if (timeArr[i] < lowestDist && visitArr[i] != -1) {
          lowestIndex = i;
          lowestDist = timeArr[i];
        }
      }
      cur = lowestIndex;
      visitArr[lowestIndex] = -1;
    }

    int pathCur = vertex2;
    while (pathCur != vertex1) {
      path = pathCur + " " + path;
      pathCur = viaArr[pathCur];
    }
    path = vertex1 + " " + path;
    System.out.println("Minimum bandwidth available = " + minBandwidth);
		return path;
	}

  public static boolean copperOnlyConnected(EdgeLinkedList[] graph, int start) {
    int[] visitArray = new int[graph.length];
    for (int i = 0; i < visitArray.length; i++) {
      visitArray[i] = 0;
    }
    dfs(graph, start, visitArray);
    for (int i = 0; i < visitArray.length; i++) {
      if (visitArray[i] == 0) return false;
    }
    return true;
  }

  public static void dfs(EdgeLinkedList[] graph, int start, int[] visitArray) {
    Node c = graph[start].head;
    visitArray[start] = -1;
    while (c != null) {
      if ((visitArray[c.getTo()] == 0) && c.getType().equals("copper")) {
        dfs(graph, c.getTo(), visitArray);
      }
      c = c.getNext();
    }
    return;
  }

  public static String mst(EdgeLinkedList[] graph) {
    String mstStr = "";
    int visitCount = 0;
    int[] visitArr = new int[graph.length];
    EdgePQ edges = new EdgePQ(graph);

    while (visitCount < graph.length - 1) {
      Node temp = edges.getFront();
      int from = temp.getFrom();
      int to = temp.getTo();
      if (visitArr[from] != -1 || visitArr[to] != -1) {
        mstStr += "\n" + from + " ----- " + to;
        visitArr[to] = -1;
        visitArr[from] = -1;
        System.out.println();
        visitCount++;
      }
      edges.pop();
    }
    return mstStr;
  }

  public static boolean extraBiconnected(EdgeLinkedList[] graph) {
    for (int i = 0; i < graph.length; i++) {
      for (int j = 0; j < graph.length; j++) {
        if (i == j) continue;
        EdgeLinkedList[] tempGraph = new EdgeLinkedList[graph.length];
        for (int k = 0; k < tempGraph.length; k++) {  tempGraph[k] = new EdgeLinkedList();  }

        for (int k = 0; k < graph.length; k++) {
          if (k != i && k != j) {
            Node c = graph[k].head;
            while (c != null) {
              Node w = new Node(c);
              if (c.getTo() != i && c.getTo() != j) tempGraph[k].insertAtFront(w.getFrom(), w.getTo(), w.getType(), w.getBandwidth(), w.getLength());
              c = c.getNext();
            }
          }
        }

        if (connected(tempGraph, i, j) == false) return false;
      }
    }
    return true;
  }

  public static boolean connected(EdgeLinkedList[] graph, int vertex1, int vertex2) {
    int[] visitArray = new int[graph.length];

    for (int i = 0; i < visitArray.length; i++) {
      if (i == vertex1 || i == vertex2) visitArray[i] = -1;
      else visitArray[i] = 0;
    }
    int index = 0;
    while (index == vertex1 || index == vertex2) index++;
    dfsConn(graph, index, visitArray);

    for (int i = 0; i < visitArray.length; i++) {
      if (visitArray[i] == 0) {
        return false;
      }
    }
    return true;
  }

  public static void dfsConn(EdgeLinkedList[] graph, int start, int[] visitArray) {
    Node c = graph[start].head;
    visitArray[start] = -1;
    while (c != null) {
      if ((visitArray[c.getTo()] == 0)) {
        dfsConn(graph, c.getTo(), visitArray);
      }
      c = c.getNext();
    }
    return;
  }
}
