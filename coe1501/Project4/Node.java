public class Node
{
  public static final int COPPER_SPEED = 230000000; // Both m/s
  public static final int OPTICAL_SPEED = 200000000;
  private int from;
  private int to;
  private String type;
  private int bandwidth;
  private double length;
  private double time;
  private Node next;

  public Node() {  this (0, 0, null, 0, 0.0, null);  }

  public Node(int from, int to, String type, int bandwidth, double length, Node next) { 
    setFrom(from);
    setTo(to);
    setType(type);
    setBandwidth(bandwidth);
    setLength(length);
    setNext(next);
    setTime();
  }

  public Node(Node other) {
    this.setFrom(other.getFrom());
    this.setTo(other.getTo());
    this.setType(other.getType());
    this.setBandwidth(other.getBandwidth());
    this.setLength(other.getLength());
    this.setNext(other.getNext());
    this.setTime();
  }

  public int getFrom() {  return from;  }

  public int getTo() {  return to;  }

  public String getType() {  return type;  }

  public int getBandwidth() {  return bandwidth;  }

  public double getLength() {  return length;  }

  public Node getNext() {  return next;  }

  public double getTime() {  return time;  }

  public void setFrom(int from) {  this.from = from;  }

  public void setTo(int to) {  this.to = to;  }

  public void setType(String type) {  this.type = type;  }

  public void setBandwidth(int bandwidth) {  this.bandwidth = bandwidth;  }

  public void setLength(double length) {  this.length = length;  }

  public void setNext(Node next)  {  this.next = next;  }

  public void setTime() {  this.time = this.getType().equals("copper") ? this.getLength() / COPPER_SPEED : this.getLength() / OPTICAL_SPEED;  }

  public String toString() {  return getFrom() + " " + getTo() + " " + getType() + " " + getBandwidth() + " " + getTime();  }
} //EOF
