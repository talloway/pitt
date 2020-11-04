public class AptSet {
  public AptQueue rentQueue;
  public AptQueue sqFootQueue;


  public AptSet() {
    rentQueue = new AptQueue(false);
    sqFootQueue = new AptQueue(true);
  }

  public void addToSet(Apartment newApt) {
    rentQueue.addToQueue(newApt);
    sqFootQueue.addToQueue(newApt);
    return;
  }

  public void removeFromSet(String key) {
    this.rentQueue.removeApt(key);
    this.sqFootQueue.removeApt(key);
  }

  public void updateInSet(String key, double rent) {
    this.rentQueue.updateApt(key, rent);
    this.sqFootQueue.updateApt(key, rent);
    return;
  }

  public void printSet() {
    System.out.println("Printing rent queue");
    this.rentQueue.printQueue();

    System.out.println("Printing square footage queue");
    this.sqFootQueue.printQueue();
    return;
  }

  public Apartment getLowestRent() {
    return this.rentQueue.getHighestPriority();
  }

  public Apartment getHighestSqFoot() {
    return this.sqFootQueue.getHighestPriority();
  }
}
