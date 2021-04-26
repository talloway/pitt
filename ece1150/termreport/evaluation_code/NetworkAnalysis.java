import java.io.*;
import java.util.*;

public class NetworkAnalysis {
  public static final int LIGHT_SPEED = 300000000;

  public static void main(String[] args) throws Exception {

    if (args.length != 1) {
      System.out.println("\nIncorrect number of args entered.");
      System.out.println("\t1. network_data1.txt");
      System.out.println("\t2. network_data2.txt");
      System.out.println("Run the program as: 'java NetworkAnalysis network_data1.txt'.");
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
      System.out.println("\t\t\t     Network Analysis     ");
      System.out.println("1. Find the lowest latency path between any two points.");
      System.out.println("2. Quit the program.");
      System.out.println("############################################################################################\n\n\n");
      System.out.print("Enter your choice: ");
      int choice = kbd.nextInt();

      if (choice == 2) System.exit(0);

      if (choice < 1 || choice > 2) {
        System.out.println("Wrong input.");
        System.exit(0);
      }

      if (choice == 1) {
        System.out.println("Network Architecture Options:");
        System.out.println("1. Traditional Network (Hardware-defined, finds local optimal path)");
        System.out.println("2. Software-defined Network (Finds global optimal path using Djikstra's algorithm)\n\n\n");
        System.out.print("Enter your choice: ");
        int network_choice = kbd.nextInt();

        if (network_choice != 1 && network_choice != 2) {
          System.out.println("Invalid input for network choice.");
          System.exit(0);
        }

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
        System.out.println("Shortest path from vertex " + vertex1 + " to vertex " + vertex2 + " is " + (network_choice == 1 ? shortestPathHDN(graph, vertex1, vertex2) : shortestPathSDN(graph, vertex1, vertex2)));
      }

      try {  Thread.sleep(1500);  }
      catch(InterruptedException ex) {  Thread.currentThread().interrupt();  }
    } // End while
  } // End main

  public static String shortestPathHDN(EdgeLinkedList[] graph, int vertex1, int vertex2) {
    String path = "";
    if (graph.length == 0) return path;
    if (vertex1 == vertex2) return path + vertex1;

    int cur = vertex1;
    int totalLength = 0;
    double[] timeArr = new double[graph.length];
    int[] visitArr = new int[graph.length];
    double minBitRate = Double.MAX_VALUE;

    path += cur;

    while (cur != vertex2) {
      // Reset timeArr
      for (int i = 0; i < timeArr.length; i++) {
        timeArr[i] = (i == vertex1) ? 0 : Double.MAX_VALUE;
      }

      visitArr[cur] = -1;
      Node c = graph[cur].head;
      totalLength += c.getLength();

      while (c != null) {
        if (visitArr[c.getTo()] != -1 && c.getTime() < timeArr[c.getTo()]) {
          timeArr[c.getTo()] = c.getTime();

          if (c.getBandwidth() < minBitRate) {
            minBitRate = c.getBandwidth();
          }
        }
        c = c.getNext();
      }

      double lowestDist = Double.MAX_VALUE;
      int lowestIndex = -1;

      for (int i = 0; i < timeArr.length; i++) {
        if (visitArr[i] != -1 && timeArr[i] < lowestDist) {
          lowestDist = timeArr[i];
          lowestIndex = i;
        }
      }

      cur = lowestIndex;
      visitArr[lowestIndex] = -1;
      path += " ---> " + cur;
    }

    System.out.println("\nMinimum bit rate available = " + minBitRate + " bits/second.");
    System.out.println("Total length of link = " + totalLength + " meters.");
    return path;
  }

  // Globally optimal path calculated using Djikstra's shortest path algorithm
  public static String shortestPathSDN(EdgeLinkedList[] graph, int vertex1, int vertex2) {
    String path = "";
    if (graph.length == 0) return path;
    if (vertex1 == vertex2) return path + vertex1;
    double[] timeArr = new double[graph.length];
    int[] viaArr = new int[graph.length];
    int[] visitArr = new int[graph.length];
    int cur = vertex1;
    int visitCount = 0;
    int totalLength = 0;
    double minBitRate = Double.MAX_VALUE;

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
        if (c.getBandwidth() < minBitRate) {
          minBitRate = c.getBandwidth();
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
    path = pathCur + "";
    pathCur = viaArr[pathCur];
    totalLength += graph[pathCur].head.getLength();

    while (pathCur != vertex1) {
      path = pathCur + " --> " + path;
      pathCur = viaArr[pathCur];
      totalLength += graph[pathCur].head.getLength();
    }
    path = vertex1 + " --> " + path;
    System.out.println("\nMinimum bit rate available = " + minBitRate + " bits/second.");
    System.out.println("Total length of link = " + totalLength + " meters.");
		return path;
	}
}
