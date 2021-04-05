/* CS1555 - Database Management Systems
Fall 2020
Team 11

Lucas Leiby (lwl10)
Avery Peiffer (aep65)
Adarsh Cavale (aac90)
*/

INSERT INTO airline(airline_id, airline_name, airline_abbreviation, year_founded) VALUES
    (1, 'Alaska Airlines', 'ASA', 1932);
INSERT INTO airline(airline_id, airline_name, airline_abbreviation, year_founded) VALUES
    (2, 'Allegiant Air', 'AAY', 1997);
INSERT INTO airline(airline_id, airline_name, airline_abbreviation, year_founded) VALUES
    (3, 'American Airlines', 'AAL', 1926);
INSERT INTO airline(airline_id, airline_name, airline_abbreviation, year_founded) VALUES
    (4, 'Delta Air Lines', 'DAL', 1924);
INSERT INTO airline(airline_id, airline_name, airline_abbreviation, year_founded) VALUES
    (5, 'United Airlines', 'UAL', 1926);

INSERT INTO plane(plane_type, manufacturer, plane_capacity, last_service, year, owner) VALUES
    ('A320', 'Airbus', 186, '11-03-2020', 1988, 1);
INSERT INTO plane(plane_type, manufacturer, plane_capacity, last_service, year, owner) VALUES
    ('E175', 'Emraer', 76, '10-22-2020', 2004, 2);
INSERT INTO plane(plane_type, manufacturer, plane_capacity, last_service, year, owner) VALUES
    ('B737', 'Boeing', 125, '09-09-2020', 2006, 3);
INSERT INTO plane(plane_type, manufacturer, plane_capacity, last_service, year, owner) VALUES
    ('E145', 'Embraer', 50, '06-15-2020', 2018, 4);
INSERT INTO plane(plane_type, manufacturer, plane_capacity, last_service, year, owner) VALUES
    ('B777', 'Boeing', 368, '09-16-2020', 1995, 5);

INSERT INTO flight(flight_number, airline_id, plane_type, departure_city, arrival_city, departure_time, arrival_time, weekly_schedule) VALUES
    (1, 1, 'A320', 'PIT', 'JFK', '1355', '1730', 'SMTWTFS');
INSERT INTO flight(flight_number, airline_id, plane_type, departure_city, arrival_city, departure_time, arrival_time, weekly_schedule) VALUES
    (2, 2, 'E175', 'JFK', 'LAX', '0825', '1845', '-MTWTFS');
INSERT INTO flight(flight_number, airline_id, plane_type, departure_city, arrival_city, departure_time, arrival_time, weekly_schedule) VALUES
    (3, 3, 'B737', 'LAX', 'SEA', '1415', '1725', 'SMT-TFS');
INSERT INTO flight(flight_number, airline_id, plane_type, departure_city, arrival_city, departure_time, arrival_time, weekly_schedule) VALUES
    (4, 4, 'E145', 'SEA', 'IAH', '1005', '2035', 'SMTW--S');
INSERT INTO flight(flight_number, airline_id, plane_type, departure_city, arrival_city, departure_time, arrival_time, weekly_schedule) VALUES
    (5, 5, 'B777', 'IAH', 'PIT', '0630', '1620', '-MTW--S');

INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('PIT', 'JFK', 1, 300, 165);
INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('JFK', 'LAX', 2, 480, 345);
INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('LAX', 'SEA', 3, 380, 270);
INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('SEA', 'IAH', 4, 515, 365);
INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('IAH', 'PIT', 5, 435, 255);
INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('JFK', 'PIT', 1, 440, 315);
INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('LAX', 'PIT', 2, 605, 420);
INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('SEA', 'LAX', 3, 245, 150);
INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('IAH', 'SEA', 4, 395, 260);
INSERT INTO price(departure_city, arrival_city, airline_id, high_price, low_price) VALUES
    ('PIT', 'IAH', 5, 505, 350);

INSERT INTO customer(cid, salutation, first_name, last_name, credit_card_number, credit_card_expired_date, street, city, state, phone, email, frequent_miles) VALUES
    (1, 'Mr', 'Jon', 'Smith', '6859941825383380', '04-13-2022', 'Bigelow Boulevard', 'Pittsburgh', 'PA', '4122222222', 'jsmith@gmail.com', 'ASA');
INSERT INTO customer(cid, salutation, first_name, last_name, credit_card_number, credit_card_expired_date, street, city, state, phone, email, frequent_miles) VALUES
    (2, 'Mrs', 'Latanya', 'Wood', '7212080255339668', '07-05-2023', 'Houston Street', 'New York', 'NY', '7187181717', 'lw@aol.com', 'AAY');
INSERT INTO customer(cid, salutation, first_name, last_name, credit_card_number, credit_card_expired_date, street, city, state, phone, email, frequent_miles) VALUES
    (3, 'Ms', 'Gabriella', 'Rojas', '4120892825130802', '09-22-2024', 'Melrose Avenue', 'Los Angeles', 'CA', '2133234567', 'gar@yahoo.com', 'AAL');
INSERT INTO customer(cid, salutation, first_name, last_name, credit_card_number, credit_card_expired_date, street, city, state, phone, email, frequent_miles) VALUES
    (4, 'Mr', 'Abbas', 'Malouf', '4259758505178751', '10-17-2021', 'Pine Street', 'Seattle', 'WA', '2066170345', 'malouf.a@outlook.com', 'DAL');
INSERT INTO customer(cid, salutation, first_name, last_name, credit_card_number, credit_card_expired_date, street, city, state, phone, email, frequent_miles) VALUES
    (5, 'Ms', 'Amy', 'Liu', '2538244543760285', '03-24-2022', 'Amber Drive', 'Houston', 'TX', '2818880102', 'amyliu45@icloud.com', 'UAL');

INSERT INTO reservation(reservation_number, cid, cost, credit_card_number, reservation_date, ticketed) VALUES
    (1, 1, 1160, '6859941825383380', '11-02-2020 19:45:25.000000', TRUE);
INSERT INTO reservation(reservation_number, cid, cost, credit_card_number, reservation_date, ticketed) VALUES
    (2, 2, 620, '7212080255339668', '11-22-2020 20:00:30.000000', TRUE);
INSERT INTO reservation(reservation_number, cid, cost, credit_card_number, reservation_date, ticketed) VALUES
    (3, 3, 380, '4120892825130802', '11-05-2020 09:30:05.000000', FALSE);
INSERT INTO reservation(reservation_number, cid, cost, credit_card_number, reservation_date, ticketed) VALUES
    (4, 4, 255, '4259758505178751', '12-01-2020 13:15:10.000000', TRUE);
INSERT INTO reservation(reservation_number, cid, cost, credit_card_number, reservation_date, ticketed) VALUES
    (5, 5, 615, '2538244543760285', '10-28-2020 15:50:15.000000', FALSE);

INSERT INTO reservation_detail(reservation_number, flight_number, flight_date, leg) VALUES
    (1, 1, '11-02-2020', 1);
INSERT INTO reservation_detail(reservation_number, flight_number, flight_date, leg) VALUES
    (1, 2, '11-04-2020', 2);
INSERT INTO reservation_detail(reservation_number, flight_number, flight_date, leg) VALUES
    (1, 3, '11-05-2020', 3);
INSERT INTO reservation_detail(reservation_number, flight_number, flight_date, leg) VALUES
    (2, 4, '12-14-2020', 1);
INSERT INTO reservation_detail(reservation_number, flight_number, flight_date, leg) VALUES
    (2, 5, '12-15-2020', 2);
INSERT INTO reservation_detail(reservation_number, flight_number, flight_date, leg) VALUES
    (3, 3, '11-05-2020', 1);
INSERT INTO reservation_detail(reservation_number, flight_number, flight_date, leg) VALUES
    (4, 5, '12-15-2020', 1);
INSERT INTO reservation_detail(reservation_number, flight_number, flight_date, leg) VALUES
    (5, 2, '11-04-2020', 1);
INSERT INTO reservation_detail(reservation_number, flight_number, flight_date, leg) VALUES
    (5, 3, '11-05-2020', 2);

INSERT INTO our_time_stamp(c) VALUES
    ('11-05-2020 02:15');
INSERT INTO our_time_stamp(c) VALUES
    ('11-03-2020 20:25');
INSERT INTO our_time_stamp(c) VALUES
    ('12-13-2020 22:05');