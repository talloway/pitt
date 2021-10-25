import java.io.*;
import java.util.*;

public class AptQueue {
  public HashMap<String, Integer> indirectionTable;
  public int size = 10;
  public int index;
  public Apartment[] aptArray;
  public boolean orderingType;

  public AptQueue() {
    this(true); // Maybe should change default value
  }

  public AptQueue(boolean ordering) {
    indirectionTable = new HashMap<String, Integer>();
    this.index = 0;
    this.aptArray = new Apartment[this.size];
    this.orderingType = ordering;
  }

  public void addToQueue(Apartment newApt) {
    if (this.index >= this.size) this.aptArray = this.upsizeArray(this.aptArray);
    this.aptArray[this.index] = newApt;
    String key = newApt.getAdd() + " " + newApt.getAptNum() + " " + newApt.getZipCode();
    this.indirectionTable.put(key, index);
    this.heapify(index, this.orderingType);
    this.index++;
    return;
  }

  public void updateApt(String key, double newRent) {
    int updatedIndex = this.indirectionTable.get(key);
    this.aptArray[updatedIndex].setRentCost(newRent);
    heapify(updatedIndex, this.orderingType);
    return;
  }

  public void removeApt(String key) {
    int removeIndex = indirectionTable.get(key);
    if (removeIndex != --(this.index)) switchApts(removeIndex, index);
    this.aptArray[this.index] = null;
    if (this.index > 1) heapify(removeIndex, this.orderingType); // Didn't have this when project was turned in
    return;
  }

  public Apartment getHighestPriority() {
    return this.aptArray[0];
  }

  public Apartment[] upsizeHP(Apartment[] oldArray) {
    Apartment[] newArray = new Apartment[2*oldArray.length];
    for (int i = 0; i < oldArray.length; i++) {
      newArray[i] = oldArray[i];
    }
    return newArray;
  }

  public Apartment[] upsizeArray(Apartment[] oldArray) {
    this.size *= 2;
    Apartment[] newArray = new Apartment[this.size];
    for (int i = 0; i < this.index; i++) {
      newArray[i] = oldArray[i];
    }
    return newArray;
  }

  public void printQueue() {
    for (int i = 0; i < this.index; i++) {
      Apartment temp = this.aptArray[i];
      System.out.println("\t" + temp.getAdd() + " " + temp.getAptNum() + " " + temp.getAptCity() + " " + temp.getZipCode() + " " + temp.getRentCost() + " " + temp.getSqFoot() + " ");
    }
    return;
  }

  private void heapify(int point, boolean ordering) {
    if (ordering) heapifyMax(point);
    else if (!ordering) heapifyMin(point);
    return;
  }

  private void heapifyMax(int point) {
    if (((point - 1) / 2) >= 0 && this.aptArray[point].getSqFoot() > this.aptArray[((point-1)/2)].getSqFoot()) { //
      switchApts(point, ((point - 1) / 2));
      heapifyMax(((point - 1) / 2));
    }
    if (((2*point + 1) < this.index) && this.aptArray[point].getSqFoot() < this.aptArray[2*point + 1].getSqFoot()) {
      switchApts(point, 2 * point + 1);
      heapifyMax(2*point + 1);
    }
    if ((2*point + 2) < this.index && this.aptArray[point].getSqFoot() < this.aptArray[2 * point + 2].getSqFoot()) {
      switchApts(point, 2 * point + 2);
      heapifyMax(2 * point + 2);
    }
    return;
  }

  private void heapifyMin(int point) {
    if (((point - 1) / 2) >= 0 && this.aptArray[point].getRentCost() < this.aptArray[((point - 1) / 2)].getRentCost()) {
      switchApts(point, ((point - 1) / 2));
      heapifyMin(((point - 1) / 2));
    }

    if (2 * point + 1 < this.index && this.aptArray[point].getRentCost() > this.aptArray[2 * point + 1].getRentCost()) {
      switchApts(point, 2 * point + 1);
      heapifyMin(2 * point + 1);
    }

    if (2 * point + 2 < this.index && this.aptArray[point].getRentCost() > this.aptArray[2 * point + 1].getRentCost()) {
      switchApts(point, 2 * point + 2);
      heapifyMin(2 * point + 2);
    }
    return;
  }

  private void switchApts(int index1, int index2) {
    String key1 = aptArray[index1].getAdd() + " " + aptArray[index1].getAptNum() + " " + aptArray[index1].getZipCode();
    String key2 = aptArray[index2].getAdd() + " " +  aptArray[index2].getAptNum() + " " +  aptArray[index2].getZipCode();
    indirectionTable.put(key2, index1);
    indirectionTable.put(key1, index2);
    Apartment temp = new Apartment(aptArray[index1]);
    this.aptArray[index1] = this.aptArray[index2];
    this.aptArray[index2] = temp;
    return;
  }
}
