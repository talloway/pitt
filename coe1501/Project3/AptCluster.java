import java.io.*;
import java.util.*;

public class AptCluster {
    public HashMap<String, AptSet> clusterMap;
    public AptQueue overallRentQueue;
    public AptQueue overallSqFootQueue;
    public HashMap<String, String> keyToCityMap;

    AptCluster() {
      this.clusterMap = new HashMap<String, AptSet>();
      this.keyToCityMap = new HashMap<String, String>();
      this.overallRentQueue = new AptQueue(false);
      this.overallSqFootQueue = new AptQueue(true);
    }

    public void addToCluster(Apartment newApt) {
      String s = newApt.getAptCity();
      this.overallRentQueue.addToQueue(newApt);
      this.overallSqFootQueue.addToQueue(newApt);
      String t = newApt.getAdd() + " " + newApt.getAptNum() + " " + newApt.getZipCode();
      keyToCityMap.put(t, s);
      if (clusterMap.containsKey(s)) {
        this.clusterMap.get(s).addToSet(newApt);
      }
      else {
        AptSet newSet = new AptSet();
        newSet.addToSet(newApt);
        this.clusterMap.put(s, newSet);
      }
      return;
    }

    public void removeFromCluster(String key) {
      this.overallRentQueue.removeApt(key);
      this.overallSqFootQueue.removeApt(key);
      String city = keyToCityMap.get(key);
      clusterMap.get(city).removeFromSet(key);
      return;
    }

    public void updateInCluster(String key, double rent) {
      this.overallRentQueue.updateApt(key, rent);
      this.overallSqFootQueue.updateApt(key, rent);
      String city = keyToCityMap.get(key);
      clusterMap.get(city).updateInSet(key, rent);
      return;
    }

    public void printCluster() {
      for (String s : this.clusterMap.keySet()) {
        System.out.println("CITY = " + s);
        this.clusterMap.get(s).printSet();
      }
      return;
    }

    public Apartment getLowestRentOverall() {
      return this.overallRentQueue.getHighestPriority();
    }

    public Apartment getHighestSqFootOverall() {
      return this.overallSqFootQueue.getHighestPriority();
    }

}
