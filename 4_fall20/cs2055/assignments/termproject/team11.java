import java.util.*;
import java.text.*;
import java.io.*;
import java.sql.*;

public class team11 {
	public static void main(String[] args) throws Exception {
		Class.forName("org.postgresql.Driver");
		int option;
		char group;
		boolean continueLooping = true;
		Scanner kbd = new Scanner(System.in);

		String url = "jdbc:postgresql://localhost:5432/";

		Properties props = new Properties();
    	props.setProperty("user", "postgres");				// Your username here
    	props.setProperty("password", "");			// Your password here
    	Connection dbcon =  DriverManager.getConnection(url, props);

    	// Turn off auto commit
    	dbcon.setAutoCommit(false);

		System.out.println("\n*******************************************");
		System.out.println("Team 11 Term Project Driver Program");
		System.out.println("Adarsh Cavale, Lucas Leiby, Avery Peiffer");
		System.out.println("*******************************************\n");

		System.out.println("Enter C/c to run program as customer, A/a to run program as administrator.");
		System.out.print("Your input: ");
		group = kbd.next().charAt(0);

		while (continueLooping) {
			if (group == 'c' || group == 'C') {
				System.out.println("\n*******************************************");
				System.out.println("Customer interface");
				System.out.println("1 - Add customer");
				System.out.println("2 - Show customer info, given customer name");
				System.out.println("3 - Find price for flights between two cities");
				System.out.println("4 - Find all routes between two cities");
				System.out.println("5 - Find all routes between two cities of a given airline");
				System.out.println("6 - Find all routes with available seats between two cities on a given date");
				System.out.println("7 - Add reservation");
				System.out.println("8 - Delete reservation");
				System.out.println("9 - Show reservation info, given reservation number");
				System.out.println("10 - Buy ticket from existing reservation");
				System.out.println("11 - Find the top-k customers for each airline");
				System.out.println("12 - Find the top-k traveled customers for each airline");
				System.out.println("13 - Rank the airlines based on customer satisfaction");
				System.out.println("*******************************************\n");

				System.out.print("Your input: ");
				option = Integer.parseInt(kbd.next());

				if (option == 1) {
					// TODO: Figure out date
					System.out.println("Option 1 - Add customer");

					String salutation, fName, lName, street, city, state, phone, email, ccNumber, ccExpDate, freqMiles;
					System.out.print("Salutation (Mr/Mrs/Ms): ");
					salutation = kbd.next();
					kbd.nextLine();
					System.out.print("First name: ");
					fName = kbd.next();
					kbd.nextLine();
					System.out.print("Last name: ");
					lName = kbd.next();
					kbd.nextLine();
					System.out.print("Street Address (e.g.: 111 Main St");
					street = kbd.next();
					kbd.nextLine();
					System.out.print("Phone number: ");
					phone = kbd.next();
					kbd.nextLine();
					System.out.print("City: ");
					city = kbd.next();
					kbd.nextLine();
					System.out.print("State: ");
					state = kbd.next();
					kbd.nextLine();
					System.out.print("Email: ");
					email = kbd.next();
					kbd.nextLine();
					System.out.print("Credit card number: ");
					ccNumber = kbd.next();
					kbd.nextLine();
					System.out.print("Credit card expiration date: ");
					ccExpDate = kbd.next();
					kbd.nextLine();
					System.out.print("Frequent miles: ");
					freqMiles = kbd.next();
					kbd.nextLine();

					// Might have to get largest CID so we can increment?
					PreparedStatement st = dbcon.prepareStatement("INSERT INTO CUSTOMER (cid, salutation, first_name, last_name, street, city, state, phone, email, credit_card_num, credit_card_expire, frequent_miles) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
					PreparedStatement getLargestCID = dbcon.prepareStatement("SELECT cid FROM CUSTOMER ORDER BY cid DESC FETCH FIRST ROW ONLY");
					int largestCID = 1; // Keep 1 as default in case there are no tuples in the table
					ResultSet rs = getLargestCID.executeQuery();
					if ( rs.next() ) {
						largestCID = rs.getInt("cid");
						System.out.println(largestCID);
					}

					st.setInt(1, largestCID + 1);
					st.setString(2, salutation);
					st.setString(3, fName);
					st.setString(4, lName);
					st.setString(5, street);
					st.setString(6, city);
					st.setString(7, state);
					st.setString(8, phone);
					st.setString(9, email);
					st.setString(10, ccNumber);
					st.setDate(11, convertDate(ccExpDate));
					st.setString(12, freqMiles);

					try {
						int result = st.executeUpdate();
						if ( result > 0 ) {
							System.out.println("Added customer " + fName + " " + lName);
						}
						dbcon.commit();
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 2) {
					System.out.println("Option 2 - Show customer info, given customer name");

					String fName, lName;
					System.out.print("Enter first name: ");
					fName = kbd.next();
					System.out.print("Enter last name: ");
					lName = kbd.next();

					PreparedStatement st = dbcon.prepareStatement("SELECT * FROM CUSTOMER WHERE first_name = \'" + fName + "\' AND last_name = \'" + lName + "\'");

					try {
						ResultSet rs = st.executeQuery();
						dbcon.commit();

						if (rs.next()) {
					    	System.out.println("\nName: " + rs.getString("salutation") + ". " + rs.getString("first_name") + " " + rs.getString("last_name"));
							System.out.println("Credit card number: " + rs.getString("credit_card_num"));
							System.out.println("Credit card expiration date: " + rs.getString("credit_card_expire"));
							System.out.println("Location: " + rs.getString("street") + ", " + rs.getString("city") + ", " + rs.getString("state"));
							System.out.println("Phone number: " + rs.getString("phone"));
							System.out.println("Email: " + rs.getString("email"));
							System.out.println("Frequent miles: " + rs.getString("frequent_miles") + "\n");
					    }
					    else {
					    	System.out.println("\nThere is no user in the database with that name.\n");
					    }
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 3) {
					System.out.println("Option 3 - Find price for flights between two cities");

					String cityA, cityB;
					System.out.print("Enter city A: ");
					cityA = kbd.next();
					System.out.print("Enter city B: ");
					cityB = kbd.next();

					boolean roundTrip = true;
					int highPriceRoundTrip = 0;
					int lowPriceRoundTrip = 0;

					// Find one way prices from A to B
					PreparedStatement st_AtoB = dbcon.prepareStatement("SELECT high_price, low_price FROM PRICE WHERE departure_city = \'" + cityA + "\' AND arrival_city = \'" + cityB + "\'");

					try {
						ResultSet rs = st_AtoB.executeQuery();
						dbcon.commit();

						if (rs.next()) {
							highPriceRoundTrip += Integer.parseInt(rs.getString("high_price"));
							lowPriceRoundTrip += Integer.parseInt(rs.getString("low_price"));

					    	System.out.println("\nHigh price from " + cityA + " to " + cityB + ": " + rs.getString("high_price"));
					    	System.out.println("Low price from " + cityA + " to " + cityB + ": " + rs.getString("low_price") + "\n");
					    }
					    else {
					    	roundTrip = false;
					    	System.out.println("\nThere are no flights going from " + cityA + " to " + cityB + ".\n");
					    }
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}

					// Find one way prices from B to A
					PreparedStatement st_BtoA = dbcon.prepareStatement("SELECT high_price, low_price FROM PRICE WHERE departure_city = \'" + cityB + "\' AND arrival_city = \'" + cityA + "\'");

					try {
						ResultSet rs = st_BtoA.executeQuery();
						dbcon.commit();

						if (rs.next()) {
							highPriceRoundTrip += Integer.parseInt(rs.getString("high_price"));
							lowPriceRoundTrip += Integer.parseInt(rs.getString("low_price"));

					    	System.out.println("\nHigh price from " + cityB + " to " + cityA + ": " + rs.getString("high_price"));
					    	System.out.println("Low price from " + cityB + " to " + cityA + ": " + rs.getString("low_price") + "\n");
					    }
					    else {
					    	roundTrip = false;
					    	System.out.println("\nThere are no flights going from " + cityB + " to " + cityA + ".\n");
					    }
					}
					catch(SQLException e2) {
						System.out.println("SQL Error");
						while (e2 != null) {
							System.out.println("Message = " + e2.toString());
							System.out.println("SQLState = " + e2.getSQLState());
							System.out.println("SQLState = " + e2.getErrorCode());
							e2 = e2.getNextException();
						}
					}

					// Find round trip prices

					/*** NOTE: I am assuming that the round trip prices is the sum of both one way prices ***/

					if (roundTrip) {
						System.out.println("\nHigh price for a round trip between " + cityA + " and " + cityB + ": " + highPriceRoundTrip);
						System.out.println("Low price for a round trip between " + cityA + " and " + cityB + ": " + lowPriceRoundTrip + "\n");
					}
					else {
						System.out.println("\nThere is no round trip between " + cityA + " and " + cityB + ".\n");
					}

				}

				else if (option == 4) {
					System.out.println("Option 4 - Find all routes between two cities");

					String departCity, arriveCity;
					System.out.print("Departure city (YYY): ");
					departCity = kbd.next();
					System.out.print("Arrival city (YYY): ");
					arriveCity = kbd.next();

					// Direct routes
					PreparedStatement st = dbcon.prepareStatement("SELECT flight_number, departure_city, departure_time, arrival_time FROM FLIGHT WHERE departure_city = ? AND arrival_city = ?");
					st.setString(1, departCity);
					st.setString(2, arriveCity);

					// Flights that have one connection
					PreparedStatement st2 = dbcon.prepareStatement("SELECT f1.flight_number, f1.departure_city, f1.departure_time, f2.arrival_time FROM FLIGHT f1 JOIN FLIGHT f2 ON f1.arrival_city = f2.departure_city WHERE f1.departure_city = ? AND f2.arrival_city = ? AND (CAST(f2.departure_time AS INTEGER) - CAST(f1.arrival_time AS INTEGER) >= 100) AND sameDayOncePerWeek(f1.weekly_schedule, f2.weekly_schedule)");
					st2.setString(1, departCity);
					st2.setString(2, arriveCity);

					try {
						ResultSet rs = st.executeQuery();
						ResultSet rs2 = st2.executeQuery();

						ResultSetMetaData rsmd = rs.getMetaData();
						int columnsNumber = rsmd.getColumnCount();

						System.out.println("Direct flights");
						for (int i = 1; i <= columnsNumber; i++) {
							System.out.printf("%-40s", rsmd.getColumnName(i));
						}
						System.out.println();

						while (rs.next()) {
							for (int i = 1; i <= columnsNumber; i++) {
								System.out.printf("%-40s", rs.getString(i));
       				}
       				System.out.println();
						}

						System.out.println("Flights with one connection");

						for (int i = 1; i <= columnsNumber; i++) {
							System.out.printf("%-40s", rsmd.getColumnName(i));
						}
						System.out.println();

						while (rs2.next()) {
							for (int i = 1; i <= columnsNumber; i++) {
								System.out.printf("%-40s", rs2.getString(i));
       				}
       				System.out.println();
						}
					}

					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 5) {
					System.out.println("Option 5 - Find all routes between two cities of a given airline");

					String departCity, arriveCity, airline;
					int airlineID = 0;
					System.out.print("Departure city (YYY): ");
					departCity = kbd.next();
					System.out.print("Arrival city (YYY): ");
					arriveCity = kbd.next();
					System.out.print("Airline (Abbreviation): ");
					airline = kbd.next();

					PreparedStatement st = dbcon.prepareStatement("SELECT airline_id FROM AIRLINE WHERE airline_abbreviation = ?");
					st.setString(1, airline);

					try {
						ResultSet rs = st.executeQuery();

						while(rs.next()) {
							airlineID = rs.getInt(1);
						}

						// Direct Routes
						PreparedStatement st2 = dbcon.prepareStatement("SELECT flight_number, departure_city, departure_time, arrival_time FROM FLIGHT WHERE departure_city = ? AND arrival_city = ? AND airline_id = ?");
						st2.setString(1, departCity);
						st2.setString(2, arriveCity);
						st2.setInt(3, airlineID);

						// Routes with one connection
						PreparedStatement st3 = dbcon.prepareStatement("SELECT f1.flight_number, f1.departure_city, f1.departure_time, f2.arrival_time FROM FLIGHT f1 JOIN FLIGHT f2 ON f1.arrival_city = f2.departure_city WHERE f1.departure_city = ? AND f2.arrival_city = ? AND (CAST(f2.departure_time AS INTEGER) - CAST(f1.arrival_time AS INTEGER) >= 100) AND sameDayOncePerWeek(f1.weekly_schedule, f2.weekly_schedule) AND f1.airline_id = ?");
						st3.setString(1, departCity);
						st3.setString(2, arriveCity);
						st3.setInt(3, airlineID);

						ResultSet rs2 = st2.executeQuery();
						ResultSet rs3 = st3.executeQuery();

						ResultSetMetaData rsmd = rs2.getMetaData();
						int columnsNumber = rsmd.getColumnCount();

						System.out.println("Direct flights");
						for (int i = 1; i <= columnsNumber; i++) {
							System.out.printf("%-40s", rsmd.getColumnName(i));
						}
						System.out.println();

						while (rs2.next()) {
							for (int i = 1; i <= columnsNumber; i++) {
								System.out.printf("%-40s", rs2.getString(i));
       				}
       				System.out.println();
						}

						System.out.println("Flights with one connection");

						for (int i = 1; i <= columnsNumber; i++) {
							System.out.printf("%-40s", rsmd.getColumnName(i));
						}
						System.out.println();

						while (rs3.next()) {
							for (int i = 1; i <= columnsNumber; i++) {
								System.out.printf("%-40s", rs3.getString(i));
       				}
       				System.out.println();
						}
					}

					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 6) {
					System.out.println("Option 6 - Find all routes with available seats between two cities on a given date");

					String departCity, arriveCity, date;
					System.out.print("Departure city: ");
					departCity = kbd.next();
					System.out.print("Arrival city: ");
					arriveCity = kbd.next();
					System.out.print("Date (MM-DD-YYYY): ");
					date = kbd.next();

					// Direct routes
					PreparedStatement st = dbcon.prepareStatement("SELECT flight_number, departure_city, departure_time, arrival_time FROM FLIGHT NATURAL JOIN RESERVATION_DETAIL WHERE departure_city = ? AND arrival_city = ? AND DATE(flight_date) = ?::date");
					st.setString(1, departCity);
					st.setString(2, arriveCity);
					st.setString(3, date);

					PreparedStatement st2 = dbcon.prepareStatement("SELECT f1.flight_number, f1.departure_city, f1.departure_time, f2.arrival_time FROM (RESERVATION_DETAIL NATURAL JOIN FLIGHT) f1 JOIN FLIGHT f2 ON f1.arrival_city = f2.departure_city WHERE f1.departure_city = ? AND f2.arrival_city = ? AND (CAST(f2.departure_time AS INTEGER) - CAST(f1.arrival_time AS INTEGER) >= 100) AND sameDayOncePerWeek(f1.weekly_schedule, f2.weekly_schedule) AND DATE(flight_date) = ?::date");
					st2.setString(1, departCity);
					st2.setString(2, arriveCity);
					st2.setString(3, date);

					try {
						ResultSet rs = st.executeQuery();
						ResultSet rs2 = st2.executeQuery();

						ResultSetMetaData rsmd = rs.getMetaData();
						int columnsNumber = rsmd.getColumnCount();

						System.out.println("Direct flights");
						for (int i = 1; i <= columnsNumber; i++) {
							System.out.printf("%-40s", rsmd.getColumnName(i));
						}
						System.out.println();

						while (rs.next()) {
							for (int i = 1; i <= columnsNumber; i++) {
								System.out.printf("%-40s", rs.getString(i));
       				}
       				System.out.println();
						}

						System.out.println("Flights with one connection");

						for (int i = 1; i <= columnsNumber; i++) {
							System.out.printf("%-40s", rsmd.getColumnName(i));
						}
						System.out.println();

						while (rs2.next()) {
							for (int i = 1; i <= columnsNumber; i++) {
								System.out.printf("%-40s", rs2.getString(i));
       				}
       				System.out.println();
						}
					}

					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 7) {
					System.out.println("Option 7 - Add reservation");

					int numLegs = 0;
					int[] flightNumbers = new int[4];
					String[] departureDates = new String[4];
					String departureDate;
					int flightNumber;
					int res_num = 0;

					for (int i = 0; i < 4; i++) {
						System.out.print("Flight number (enter 0 if there are no more legs to the trip): ");
						flightNumber = Integer.parseInt(kbd.next());

						if (flightNumber == 0) {
							System.out.println("Done adding legs to trip.");
							break;
						}
						else {
							flightNumbers[i] = flightNumber;
							numLegs++;
						}

						System.out.print("Departure date ('MM-DD-YYYY HH:MM'): ");
						departureDates[i] = kbd.next();

						PreparedStatement st1 = dbcon.prepareStatement("SELECT reservation_number FROM RESERVATION_DETAIL WHERE flight_number = " + flightNumbers[i] + " AND flight_date = \'" + departureDates[i] + ":00.000000\'");

						try {
							if (st1.executeUpdate() != 0) {
								ResultSet rs = st1.executeQuery();
								res_num = Integer.parseInt(rs.getString("reservation_number"));
								dbcon.commit();
							}
							else {
								System.out.println("\nWe could not add your reservation.\n");
							}
						}
						catch(SQLException e1) {
							System.out.println("SQL Error");
							while (e1 != null) {
								System.out.println("Message = " + e1.toString());
								System.out.println("SQLState = " + e1.getSQLState());
								System.out.println("SQLState = " + e1.getErrorCode());
								e1 = e1.getNextException();
							}
						}
					}

					for (int i = 0; i < numLegs; i++) {
						PreparedStatement st2 = dbcon.prepareStatement("INSERT INTO RESERVATION_DETAIL (reservation_number, flight_number, flight_date, leg) VALUES (" + res_num + ", " + flightNumbers[i] + ", TO_TIMESTAMP(\'" + departureDates[i]+ "\', \'MM-DD-YYYY HH24:MI\'), " + (i + 1) + ")");

						try {
							if (st2.executeUpdate() != 0) {
								System.out.println("\nReservation successfully created.\n");
								dbcon.commit();
							}
							else {
								System.out.println("\nWe could not add your reservation.\n");
							}
						}
						catch(SQLException e2) {
							System.out.println("SQL Error");
							while (e2 != null) {
								System.out.println("Message = " + e2.toString());
								System.out.println("SQLState = " + e2.getSQLState());
								System.out.println("SQLState = " + e2.getErrorCode());
								e2 = e2.getNextException();
							}
						}
					}
				}

				else if (option == 8) {
					System.out.println("Option 8 - Delete reservation");

					int reservationNumber;
					System.out.print("Reservation number: ");
					reservationNumber = Integer.parseInt(kbd.next());

					// Foreign key constraint says "ON DELETE CASCADE", so dependencies should be taken care of"
					PreparedStatement st = dbcon.prepareStatement("DELETE FROM RESERVATION WHERE reservation_number = \'" + reservationNumber + "\'");

					try {
						if (st.executeUpdate() != 0) {
							System.out.println("\nReservation successfully deleted.\n");
							dbcon.commit();
						}
						else {
							System.out.println("\nThis reservation number does not exist in the database.\n");
						}
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 9) {
					// TODO: Figure out timestamp
					System.out.println("Option 9 - Show reservation info, given reservation number");

					int reservationNumber;
					System.out.print("Reservation number: ");
					reservationNumber = Integer.parseInt(kbd.next());

					PreparedStatement st = dbcon.prepareStatement("SELECT * FROM RESERVATION WHERE reservation_number = ?");
					st.setInt(1, reservationNumber);
					PreparedStatement st2 = dbcon.prepareStatement("SELECT * FROM RESERVATION_DETAIL WHERE reservation_number = ?");
					st2.setInt(1, reservationNumber);

					try {
						ResultSet rs = st.executeQuery();
						ResultSet rs2 = st2.executeQuery();
						if ( rs.next() ) {
							System.out.println("General Reservation Information:");
							System.out.printf("%-20s %-20s %-20s %-20s %-20s %-20s\n", "Reservation Number", "Customer ID", "Cost", "Credit Card Number", "Reservation Date", "Ticketed");
							System.out.printf("%-20d %-20d ", rs.getInt("reservation_number"), rs.getInt("cid"));
							System.out.printf("$%,-20.2f %-20s ", rs.getBigDecimal("cost"), rs.getString("credit_card_num"));
							System.out.printf("%-20s %-20b\n", rs.getTimestamp("reservation_date").toString(), rs.getBoolean("ticketed"));

							System.out.println("Reservation Details");
							System.out.printf("%-20s %-20s %-20s %-20s\n", "Reservation Number", "Flight Number", "Flight Date", "Leg");
							while ( rs2.next() ) {
								System.out.printf("%-20d %-20d ", rs2.getInt("reservation_number"), rs2.getInt("flight_number"));
								System.out.printf("%-20s %-20d\n", rs2.getTimestamp("flight_date").toString(), rs2.getInt("leg"));
							}
						}
						else {
							System.out.println("No reservation was found.");
						}
						dbcon.commit();
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 10) {
					System.out.println("Option 10 - Buy ticket from existing reservation");

					int reservationNumber;
					System.out.print("Reservation number: ");
					reservationNumber = Integer.parseInt(kbd.next());

					PreparedStatement st = dbcon.prepareStatement("UPDATE RESERVATION SET ticketed = TRUE where reservation_number = ?");
					st.setInt(1, reservationNumber);
					PreparedStatement st2 = dbcon.prepareStatement("SELECT ticketed FROM reservation WHERE reservation_number = ?");
					st2.setInt(1, reservationNumber);


					try {
						ResultSet rs = st2.executeQuery();
						if ( rs.next() && rs.getBoolean("ticketed") == false ) {
							st.executeUpdate();
							System.out.println("Reservation status updated to ticketed = TRUE.");
						}
						else {
							System.out.println("Unable to purchase ticket.");
							System.out.println("Either the ticket is already purchased, or the reservation doesn't exist.");
						}
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 11) {
					System.out.println("Option 11 - Find the top-k customers for each airline (including ties)");

					int k;
					System.out.print("Specify k: ");
					k = Integer.parseInt(kbd.next());

					PreparedStatement st = dbcon.prepareStatement("SELECT airline_name, salutation, first_name, last_name, money_spent, rank FROM (SELECT airline_name, salutation, first_name, last_name, money_spent, RANK() OVER (PARTITION BY airline_name ORDER BY money_spent DESC) AS rank FROM (SELECT airline_name, salutation, first_name, last_name, SUM(flight_cost) AS money_spent FROM (SELECT airline_name, salutation, first_name, last_name, CASE WHEN DATE(reservation_date) = DATE(flight_date) THEN high_price WHEN DATE(reservation_date) <> DATE(flight_date) THEN low_price END flight_cost FROM customer NATURAL JOIN (airline NATURAL JOIN (flight NATURAL JOIN (price NATURAL JOIN (reservation NATURAL JOIN reservation_detail))))) AS t3 GROUP BY airline_name, salutation, first_name, last_name) AS t2) AS t1 WHERE rank <= ?");
					st.setInt(1, k);

					try {
						ResultSet rs = st.executeQuery();

						ResultSetMetaData rsmd = rs.getMetaData();
						int columnsNumber = rsmd.getColumnCount();

						for (int i = 1; i <= columnsNumber; i++) {
							System.out.printf("%-40s", rsmd.getColumnName(i));
						}
						System.out.println();

						while (rs.next()) {
							for (int i = 1; i <= columnsNumber; i++) {
								System.out.printf("%-40s", rs.getString(i));
       				}
       				System.out.println();
						}
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 12) {
					System.out.println("Option 12 - Find the top-k traveled customers for each airline (includes ties)");

					int k;
					System.out.print("Specify k: ");
					k = Integer.parseInt(kbd.next());

					PreparedStatement st = dbcon.prepareStatement("SELECT airline_name, first_name, last_name, legs FROM (SELECT airline_name, first_name, last_name, rank() OVER (PARTITION BY airline_name ORDER BY legs DESC), legs FROM (SELECT airline_name, first_name, last_name, COUNT(*) as legs FROM AIRLINE NATURAL JOIN (FLIGHT NATURAL JOIN (CUSTOMER NATURAL JOIN (RESERVATION NATURAL JOIN RESERVATION_DETAIL))) GROUP BY airline_name, first_name, last_name) AS t) as t2 WHERE rank <= ? ORDER BY airline_name");
					st.setInt(1, k);

					try {
						ResultSet rs = st.executeQuery();

						ResultSetMetaData rsmd = rs.getMetaData();
						int columnsNumber = rsmd.getColumnCount();

						for (int i = 1; i <= columnsNumber; i++) {
							System.out.printf("%-40s", rsmd.getColumnName(i));
						}
						System.out.println();

						while (rs.next()) {
							for (int i = 1; i <= columnsNumber; i++) {
								System.out.printf("%-40s", rs.getString(i));
       				}
       				System.out.println();
						}
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 13) {
					System.out.println("Option 13 - Rank the airlines based on customer satisfaction");

					PreparedStatement st = dbcon.prepareStatement("SELECT airline_name, count(*) AS num_tickets FROM reservation_detail NATURAL JOIN FLIGHT NATURAL JOIN airline GROUP BY airline_name ORDER BY count(*) DESC");

					try {
						ResultSet rs = st.executeQuery();
						dbcon.commit();

						while (rs.next()) {
							System.out.println("Airline name: "+ rs.getString("airline_name") +"\t\tNumber of bought tickets: " + rs.getString("num_tickets"));
						}
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else {
					System.out.println("Invalid input. Exiting program.");
					System.exit(0);
				}
			}

			else if (group == 'a' || group == 'A') {
				System.out.println("\n*******************************************");
				System.out.println("Administrator interface");
				System.out.println("1 - Erase the database");
				System.out.println("2 - Load airline information");
				System.out.println("3 - Load schedule information");
				System.out.println("4 - Load pricing information");
				System.out.println("5 - Load plane information");
				System.out.println("6 - Generate passenger manifest for specific flight on given day");
				System.out.println("7 - Update the current timestamp");
				System.out.println("*******************************************\n");

				System.out.print("Your input: ");
				option = Integer.parseInt(kbd.next());

				if (option == 1) {
					System.out.println("Option 1 - Erase the database");
					char confirmation;

					System.out.print("Are you sure you want to delete all the data? (y/n): ");
					confirmation = kbd.next().charAt(0);

					if (confirmation != 'y' && confirmation != 'Y') {
						System.out.println("Data will not be deleted.");
					}

					else {
						PreparedStatement stAirline = dbcon.prepareStatement("TRUNCATE TABLE AIRLINE CASCADE");
						PreparedStatement stFlight = dbcon.prepareStatement("TRUNCATE TABLE FLIGHT CASCADE");
						PreparedStatement stPlane = dbcon.prepareStatement("TRUNCATE TABLE PLANE CASCADE");
						PreparedStatement stPrice = dbcon.prepareStatement("TRUNCATE TABLE PRICE CASCADE");
						PreparedStatement stCustomer = dbcon.prepareStatement("TRUNCATE TABLE CUSTOMER CASCADE");
						PreparedStatement stReservation = dbcon.prepareStatement("TRUNCATE TABLE RESERVATION CASCADE");
						PreparedStatement stResDetail = dbcon.prepareStatement("TRUNCATE TABLE RESERVATION_DETAIL CASCADE");
						PreparedStatement stOurTP = dbcon.prepareStatement("TRUNCATE TABLE OURTIMESTAMP CASCADE");

						try {
							int rsAirline = stAirline.executeUpdate();
							int rsFlight = stFlight.executeUpdate();
							int rsPlane = stPlane.executeUpdate();
							int rsPrice = stPrice.executeUpdate();
							int rsCustomer = stCustomer.executeUpdate();
							int rsReservation = stReservation.executeUpdate();
							int rsResDetail = stResDetail.executeUpdate();
							int rsOurTP = stOurTP.executeUpdate();

							dbcon.commit();
						}
						catch(SQLException e1) {
							System.out.println("SQL Error");
							while (e1 != null) {
								System.out.println("Message = " + e1.toString());
								System.out.println("SQLState = " + e1.getSQLState());
								System.out.println("SQLState = " + e1.getErrorCode());
								e1 = e1.getNextException();
							}
						}
					}
				}

				else if (option == 2) {
					System.out.println("Option 2 - Load airline information");
					String filename;

					System.out.print("Specify filename where the airline information is stored: ");
					filename = kbd.next();

					// Load the information from the file and put each value in a String ArrayList
					ArrayList<String> values = readFileAndParse(filename);

					// We are guaranteed to know that the AIRLINE relation has 4 attributes
					// So we can expect our ArrayList of strings to be divisible by 4
					if ( values.size() % 4 != 0 ) {
						System.out.println("It looks like your file might not follow the format to insert airline data.");
						System.out.println("Check your file and make sure it follows the proper format.");
					}
					else {
						// Jump ahead 4 values to point to the next tuple to be inserted
						for ( int i = 0; i < values.size(); i += 4 ) {
							PreparedStatement st = dbcon.prepareStatement("INSERT INTO AIRLINE(airline_id, airline_name, airline_abbreviation, year_founded) VALUES(?, ?, ?, ?)");

							st.setInt(1, Integer.parseInt(values.get(i)));
							st.setString(2, values.get(i + 1));
							st.setString(3, values.get(i + 2));
							st.setInt(4, Integer.parseInt(values.get(i + 3)));

							try {
								int result = st.executeUpdate();
								if ( result > 0 ) {
									System.out.println("The airline " + values.get(i + 1) + " has been added.");
								}
								dbcon.commit();
							}
							catch(SQLException e1) {
								System.out.println("SQL Error");
								while (e1 != null) {
									System.out.println("Message = " + e1.toString());
									System.out.println("SQLState = " + e1.getSQLState());
								System.out.println("SQLState = " + e1.getErrorCode());
									e1 = e1.getNextException();
								}
							}
						}
					}
				}

				else if (option == 3) {
					System.out.println("Option 3 - Load schedule information");
					String filename;

					System.out.print("Specify filename where the schedule information is stored: ");
					filename = kbd.next();

					// Same deal as #2
					// Load the information from the file and put each value in a String ArrayList
					ArrayList<String> values = readFileAndParse(filename);

					// We are guaranteed to know that the FLIGHT relation has 8 attributes
					// So we can expect our ArrayList of strings to be divisible by 8
					if ( values.size() % 8 != 0 ) {
						System.out.println("It looks like your file might not follow the format to insert flight schedule data.");
						System.out.println("Check your file and make sure it follows the proper format.");
					}
					else {
						// Jump ahead 8 values to point to the next tuple to be inserted
						for ( int i = 0; i < values.size(); i += 8 ) {
							PreparedStatement st = dbcon.prepareStatement("INSERT INTO FLIGHT(flight_number, airline_id, plane_type, departure_city, arrival_city, departure_time, arrival_time, weekly_schedule) VALUES(?, ?, ?, ?, ?, ?, ?, ?)");

							st.setInt(1, Integer.parseInt(values.get(i)));
							st.setInt(2, Integer.parseInt(values.get(i + 1)));
							st.setString(3, values.get(i + 2));
							st.setString(4, values.get(i + 3));
							st.setString(5, values.get(i + 4));
							st.setInt(6, Integer.parseInt(values.get(i + 5)));
							st.setInt(7, Integer.parseInt(values.get(i + 6)));
							st.setString(8, values.get(i + 7));

							try {
								int result = st.executeUpdate();
								if ( result > 0 ) {
									System.out.println("The flight with number " + values.get(i) + " has been added.");
								}
								dbcon.commit();
							}
							catch(SQLException e1) {
								System.out.println("SQL Error");
								while (e1 != null) {
									System.out.println("Message = " + e1.toString());
									System.out.println("SQLState = " + e1.getSQLState());
								System.out.println("SQLState = " + e1.getErrorCode());
									e1 = e1.getNextException();
								}
							}
						}
					}
				}

				else if (option == 4) {
					System.out.println("Option 4 - Load pricing information");
					char option_t4;

					System.out.print("Type L to load pricing information, or C to change the price of an existing flight: ");
					option_t4 = kbd.next().charAt(0);

					if (option_t4 == 'C' || option_t4 == 'c' ) {
						System.out.println("Change price information");
						String departureCity, arrivalCity;
						int highPrice, lowPrice;

						System.out.print("Departure city: ");
						departureCity = kbd.next();
						System.out.print("Arrival city: ");
						arrivalCity = kbd.next();
						System.out.print("High price: ");
						highPrice = Integer.parseInt(kbd.next());
						System.out.print("Low price: ");
						lowPrice = Integer.parseInt(kbd.next());

						PreparedStatement st = dbcon.prepareStatement("UPDATE PRICE SET high_price = ?, low_price = ? WHERE departure_city = ? AND arrival_city = ?");
						st.setInt(1, highPrice);
						st.setInt(2, lowPrice);
						st.setString(3, departureCity);
						st.setString(4, arrivalCity);

						try {
							int result = st.executeUpdate();
							if ( result > 0 ) {
								System.out.println("The prices have been changed.");
							}
							dbcon.commit();
						}
						catch(SQLException e1) {
							System.out.println("SQL Error");
							while (e1 != null) {
								System.out.println("Message = " + e1.toString());
								System.out.println("SQLState = " + e1.getSQLState());
								System.out.println("SQLState = " + e1.getErrorCode());
								e1 = e1.getNextException();
							}
						}
					}

					else if (option_t4 == 'L' || option_t4 == 'l' ) {
						System.out.println("Load price information");
						String filename;
						System.out.print("Specify filename where the pricing information is stored: ");
						filename = kbd.next();

						// Same deal as option 2 and option 3
						// Load the information from the file and put each value in a String ArrayList
						ArrayList<String> values = readFileAndParse(filename);

						// We are guaranteed to know that the PRICE relation has 5 attributes
						// So we can expect our ArrayList of strings to be divisible by 5
						if ( values.size() % 5 != 0 ) {
							System.out.println("It looks like your file might not follow the format to insert price data.");
							System.out.println("Check your file and make sure it follows the proper format.");
						}
						else {
							// Jump ahead 5 values to point to the next tuple to be inserted
							for ( int i = 0; i < values.size(); i += 5 ) {
								PreparedStatement st = dbcon.prepareStatement("INSERT INTO PRICE (departure_city, arrival_city, airline_id, high_price, low_price) VALUES(?, ?, ?, ?, ?)");
								st.setString(1, values.get(i));
								st.setString(2, values.get(i + 1));
								st.setInt(3, Integer.parseInt(values.get(i + 2)));
								st.setInt(4, Integer.parseInt(values.get(i + 3)));
								st.setInt(5, Integer.parseInt(values.get(i + 4)));

								try {
									int result = st.executeUpdate();
									if ( result > 0 ) {
										System.out.println("The flight from " + values.get(i) + " going to " + values.get(i + 1) + " has been added.");
									}
									dbcon.commit();
								}
								catch(SQLException e1) {
									System.out.println("SQL Error");
									while (e1 != null) {
										System.out.println("Message = " + e1.toString());
										System.out.println("SQLState = " + e1.getSQLState());
									System.out.println("SQLState = " + e1.getErrorCode());
										e1 = e1.getNextException();
									}
								}
							}
						}
					}
				}

				else if (option == 5) {
					System.out.println("Option 5 - Load plane information");
					String filename;

					System.out.print("Specify filename where the plane information is stored: ");
					filename = kbd.next();

					// Same deal again
					// Load the information from the file and put each value in a String ArrayList
					ArrayList<String> values = readFileAndParse(filename);

					// We are guaranteed to know that the PLANE relation has 6 attributes
					// So we can expect our ArrayList of strings to be divisible by 6
					if ( values.size() % 6 != 0 ) {
						System.out.println("It looks like your file might not follow the format to insert airline data.");
						System.out.println("Check your file and make sure it follows the proper format.");
					}
					else {
						// Jump ahead 6 values to point to the next tuple to be inserted
						for ( int i = 0; i < values.size(); i += 6 ) {
							PreparedStatement st = dbcon.prepareStatement("INSERT INTO PLANE (plane_type, manufacturer, plane_capacity, last_service, year, owner_id) VALUES(?, ?, ?, ?, ?, ?)");

							st.setString(1, values.get(i));
							st.setString(2, values.get(i + 1));
							st.setInt(3, Integer.parseInt(values.get(i + 2)));
							st.setDate(4, convertDate(values.get(i + 3)));
							st.setInt(5, Integer.parseInt(values.get(i + 4)));
							st.setInt(6, Integer.parseInt(values.get(i + 5)));

							try {
								int result = st.executeUpdate();
								if ( result > 0 ) {
									System.out.println("The flight with number " + values.get(i) + " has been added.");
								}
								dbcon.commit();
							}
							catch(SQLException e1) {
								System.out.println("SQL Error");
								while (e1 != null) {
									System.out.println("Message = " + e1.toString());
									System.out.println("SQLState = " + e1.getSQLState());
									System.out.println("SQLState = " + e1.getErrorCode());
									e1 = e1.getNextException();
								}
							}
						}
					}
				}

				else if (option == 6) {
					System.out.println("Option 6 - Generate passenger manifest for specific flight on given day");
					int flightNumber;
					String date;

					System.out.print("Flight number: ");
					flightNumber = Integer.parseInt(kbd.next());
					System.out.print("Date (MM-DD-YYYY): ");
					date = kbd.next();

					PreparedStatement st = dbcon.prepareStatement("SELECT salutation, first_name, last_name FROM RESERVATION_DETAIL NATURAL JOIN (RESERVATION NATURAL JOIN CUSTOMER) WHERE flight_number = ? AND flight_date::date = DATE(?)");
					st.setInt(1, flightNumber);
					st.setString(2, date);

					try {
						ResultSet rs = st.executeQuery();
						ResultSetMetaData rsmd = rs.getMetaData();
						int columnsNumber = rsmd.getColumnCount();

						for (int i = 1; i <= columnsNumber; i++) {
							System.out.printf("%-40s", rsmd.getColumnName(i));
						}
						System.out.println();

						while (rs.next()) {
							for (int i = 1; i <= columnsNumber; i++) {
								System.out.printf("%-40s", rs.getString(i));
       				}
       				System.out.println();
						}
					}

					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}

				else if (option == 7) {
					System.out.println("Option 7 - Update the current timestamp");
					String date, time, timestamp;

					System.out.print("Date (MM-DD-YYYY): ");
					date = kbd.next();
					System.out.print("Time (HH24:MI): ");
					time = kbd.next();
					timestamp = date + " " + time;

					PreparedStatement st = dbcon.prepareStatement("UPDATE OURTIMESTAMP SET c_timestamp = TO_TIMESTAMP(?, 'MM-DD-YYYY HH24:MI')");
					st.setString(1, timestamp);

					try {
						st.executeUpdate();
						dbcon.commit();
						System.out.println("Timestamp updated.");
					}
					catch(SQLException e1) {
						System.out.println("SQL Error");
						while (e1 != null) {
							System.out.println("Message = " + e1.toString());
							System.out.println("SQLState = " + e1.getSQLState());
							System.out.println("SQLState = " + e1.getErrorCode());
							e1 = e1.getNextException();
						}
					}
				}
			}

			else {
				System.out.println("Invalid input. Exiting program.");
				System.exit(0);
			}

			System.out.print("Do you want to perform another operation? (y/n): ");
			char continueInput = kbd.next().charAt(0);
			if (continueInput != 'y' && continueInput != 'Y') {
				System.out.println("Exiting program.");
				continueLooping = false;
			}
		}

		dbcon.close();
	}

	public static ArrayList<String> readFileAndParse(String fileName) {
		ArrayList<String> vals = new ArrayList<>();
		String lineJustFetched = null;
		String[] valuesArray;
		try{
			BufferedReader buf = new BufferedReader(new FileReader(fileName));

			lineJustFetched = buf.readLine();

			while ( lineJustFetched != null ) {
				if(lineJustFetched == null){
					break;
				}
				else {
					valuesArray = lineJustFetched.split("\t");
					for(String val : valuesArray){
						if(!"".equals(val)){
							vals.add(val);
						}
					}
				}
				lineJustFetched = buf.readLine();
			}

			buf.close();

		}
		catch(Exception e){
			e.printStackTrace();
		}

		return vals;
	}

	// Luke
	// I neglected to realize I could've used to_date() when I wrote the queries
	// I was trying to process date objects directly and not strings
	// In other words, I spent a significant amount of time wasted on doing something that should've taken two seconds
	// Just flexing here I guess
	public static java.sql.Date convertDate(String myDate) throws Exception {
		java.util.Date utilDate = new SimpleDateFormat("MM/dd/yyyy").parse(myDate);
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		return sqlDate;
	}
}