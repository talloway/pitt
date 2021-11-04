import java.io.*;
import java.util.*;

public class AptTracker {
  public static void main(String[] args) throws Exception {
    AptCluster cluster = new AptCluster();
    BufferedReader infile = new BufferedReader(new FileReader("apartments.txt"));
    infile.readLine();
    while (infile.ready()) {
      String[] tokens = infile.readLine().split(":");
      Apartment temp = new Apartment(tokens[0], tokens[1], tokens[2], tokens[3], Double.parseDouble(tokens[4]), Double.parseDouble(tokens[5]));
      cluster.addToCluster(temp);
    }
    infile.close();

    while (true) {
      System.out.println("\n****** Apartment Menu ******");
      System.out.println("1 - Add an apartment.");
      System.out.println("2 - Update an apartment.");
      System.out.println("3 - Remove an apartment from consideration.");
      System.out.println("4 - Retrieve the lowest rent apartment.");
      System.out.println("5 - Retrieve the highest square footage apartment.");
      System.out.println("6 - Retrieve the lowest rent apartment by city.");
      System.out.println("7 - Retrieve the highest square footage apartment by city.");
      System.out.println("8 - Exit program.");
      System.out.print("\nEnter number corresponding to option: ");

      try {
        Scanner kbd = new Scanner(System.in);
        int choice = Integer.parseInt(kbd.next());
        if (choice < 1 || choice > 8) {
          System.out.println("\nInput format error. Enter number corresponding to option: ");
          continue;
        }
        if (choice == 8) break;
        aptOperations(choice, cluster);
      }

      catch(NumberFormatException e) {
        System.out.println("\nInput format error. Stop doing that.\n");
        Thread.sleep(2000);
        continue;
      }
    } // End while
  }

  public static void aptOperations(int choice, AptCluster cluster) {
    Scanner kbd = new Scanner(System.in);
    if (choice == 1) {
      System.out.print("Enter apartment address: ");
      String address = kbd.nextLine();
      System.out.print("Enter apartment number: ");
      String num = kbd.nextLine();
      System.out.print("Enter city: ");
      String city = kbd.nextLine();
      System.out.print("Enter zip: ");
      String zip = kbd.nextLine();
      System.out.print("Enter rent: ");
      double rent = kbd.nextDouble();
      System.out.print("Enter square footage: ");
      double sqfoot = kbd.nextDouble();
      cluster.addToCluster(new Apartment(address, num, city, zip, rent, sqfoot));
      System.out.println("\n\nApartment added.");

    }
    else if (choice == 2) {
      System.out.print("Enter apartment address: ");
      String address = kbd.nextLine();
      System.out.print("Enter apartment number: ");
      String num = kbd.nextLine();
      System.out.print("Enter zip: ");
      String zip = kbd.nextLine();
      System.out.print("Enter new rent: ");
      double rent = kbd.nextDouble();
      cluster.updateInCluster(address + " " + num + " " + zip, rent);
      System.out.println("Apartment updated.");
    }
    else if (choice == 3) {
      System.out.print("Enter apartment address: ");
      String address = kbd.nextLine();
      System.out.print("Enter apartment number: ");
      String num = kbd.nextLine();
      System.out.print("Enter zip: ");
      String zip = kbd.nextLine();
      cluster.removeFromCluster(address + " " + num + " " + zip);
      System.out.println("\n\nApartment removed.");
    }
    else if (choice == 4) {
      Apartment lowest = cluster.getLowestRentOverall();
      System.out.println("\n\nLowest rent apartment overall: ");
      System.out.print("Address = " + lowest.getAptNum() + " " + lowest.getAdd() + " " + lowest.getAptCity() + " " + lowest.getZipCode());
      System.out.print(" Rent = " + lowest.getRentCost() + ". Square footage = " + lowest.getSqFoot());
      System.out.println();
    }
    else if (choice == 5) {
      Apartment highest = cluster.getHighestSqFootOverall();
      System.out.println("\n\nHighest square footage apartment overall: ");
      System.out.print("Address = " + highest.getAptNum() + " " + highest.getAdd() + " " + highest.getAptCity() + " " + highest.getZipCode());
      System.out.print(" Rent = " + highest.getRentCost() + ". Square footage = " + highest.getSqFoot());
      System.out.println();
    }
    else if (choice == 6) {
      System.out.print("Enter city: ");
      String city = kbd.nextLine();
      Apartment lowest = cluster.clusterMap.get(city).getLowestRent();
      System.out.println("\n\nLowest rent apartment in " + city + ": ");
      System.out.print("Address: " + lowest.getAdd());
      System.out.print(" Number: " + lowest.getAptNum());
      System.out.print(" Zip Code: " + lowest.getZipCode());
      System.out.print(" Rent: " + lowest.getRentCost());
      System.out.print(" Square Footage: " + lowest.getSqFoot());
      System.out.println();
    }
    else if (choice == 7) {
      System.out.print("Enter city: ");
      String city = kbd.nextLine();
      Apartment highest = cluster.clusterMap.get(city).getHighestSqFoot();
      System.out.println("\n\nHighest square footage apartment in " + city + ": ");
      System.out.print("Address: " + highest.getAdd());
      System.out.print(" Number: " + highest.getAptNum());
      System.out.print(" Zip Code: " + highest.getZipCode());
      System.out.print(" Rent: " + highest.getRentCost());
      System.out.print(" Square Footage: " + highest.getSqFoot());
      System.out.println();
    }
    return;
  }
}
