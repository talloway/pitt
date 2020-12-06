/* CS1555 - Database Management Systems
Fall 2020
Team 11

Lucas Leiby (lwl10)
Avery Peiffer (aep65)
Adarsh Cavale (aac90)
*/

-- Task 1:

-- Drop Table AIRLINE

DROP TABLE IF EXISTS AIRLINE CASCADE;

-- Create Table AIRLINE

CREATE TABLE AIRLINE (
	airline_id INTEGER CHECK (airline_id > 0) NOT NULL, -- make sure the ID is greather than 0 and is not null
	airline_name VARCHAR(50) NOT NULL, -- the name should not be null
	airline_abbreviation VARCHAR(10) NOT NULL, -- abbreviation should not be null
	year_founded INTEGER, -- can be null since it's not relevant to database functionality
	CONSTRAINT AIRLINE_PK
		PRIMARY KEY (airline_id),
	CONSTRAINT AIRLINE_UN
		UNIQUE (airline_abbreviation) -- must be unique for frequent miles in CUSTOMER
);

-- Drop Table PLANE

DROP TABLE IF EXISTS PLANE CASCADE;

-- Create Table PLANE

CREATE TABLE PLANE (
	plane_type CHAR(4) NOT NULL, -- cannot be null because a plane must have a type
	manufacturer VARCHAR(10) NOT NULL, -- cannot be null because every plane has a manufacturer
	plane_capacity INTEGER CHECK (plane_capacity > 0) NOT NULL, -- cannot be null or less than or equal to 0
	last_service DATE,
	year INTEGER,
	owner INTEGER NOT NULL, -- cannot be null since every plane should have an owner
	CONSTRAINT PLANE_PK
		PRIMARY KEY (plane_type),
	CONSTRAINT PLANE_FK
		FOREIGN KEY (owner) REFERENCES AIRLINE(airline_id)
);

-- Drop Table FLIGHT

DROP TABLE IF EXISTS FLIGHT CASCADE;

-- Create Table FLIGHT

CREATE TABLE FLIGHT (
	flight_number INTEGER CHECK (flight_number > 0) NOT NULL, -- make sure the number is greater than 0 and not null
	airline_id INTEGER CHECK (airline_id > 0) NOT NULL, -- same as above
	plane_type CHAR(4), -- can be null since a plane might not have been assigned yet
	departure_city CHAR(3) NOT NULL, -- cannot be null since departure city is necessary
	arrival_city CHAR(3) CHECK (NOT departure_city = arrival_city) NOT NULL, -- cannot be null, same as above and cannot be the same as departure_city
	departure_time VARCHAR(4) NOT NULL, -- same as departure_time
	arrival_time VARCHAR(4) CHECK(NOT departure_time = arrival_time) NOT NULL, -- same as arrival_time
	weekly_schedule VARCHAR(7) NOT NULL, -- cannot be null because a weekly schedule will contain "-" if it is not running a specific day
	CONSTRAINT FLIGHT_PK
		PRIMARY KEY (flight_number),
	CONSTRAINT FLIGHT_FK1
		FOREIGN KEY (plane_type) REFERENCES PLANE(plane_type),
	CONSTRAINT FLIGHT_FK2
		FOREIGN KEY (airline_id) REFERENCES AIRLINE(airline_id)
);

-- Drop Table PRICE

DROP TABLE IF EXISTS PRICE CASCADE;

-- Create Table PRICE

CREATE TABLE PRICE (
	departure_city CHAR(3) NOT NULL,
	arrival_city CHAR(3) NOT NULL,
	airline_id INTEGER CHECK (airline_id > 0) NOT NULL,
	high_price INTEGER NOT NULL,
	low_price INTEGER NOT NULL,
	CONSTRAINT PRICE_PK
		PRIMARY KEY (departure_city, arrival_city),
	CONSTRAINT PRICE_FK
		FOREIGN KEY (airline_id) REFERENCES AIRLINE(airline_id)
);

-- Drop Table CUSTOMER

DROP TABLE IF EXISTS CUSTOMER CASCADE;

-- Create Table Customer

CREATE TABLE CUSTOMER (
	cid INTEGER CHECK (cid > 0) NOT NULL,
	salutation VARCHAR(3) CHECK (salutation in ('Mr', 'Ms', 'Mrs')),
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	credit_card_number VARCHAR(16) NOT NULL,
	credit_card_expired_date DATE NOT NULL,
	street VARCHAR(30),
	city VARCHAR(30),
	state VARCHAR(2),
	phone VARCHAR(10),
	email VARCHAR(30) NOT NULL,
	frequent_miles VARCHAR(10),
	CONSTRAINT CUSTOMER_PK
		PRIMARY KEY (cid),
	CONSTRAINT CUSTOMER_UN
		UNIQUE (credit_card_number),
	CONSTRAINT CUSTOMER_FK
		FOREIGN KEY (frequent_miles) REFERENCES AIRLINE(airline_abbreviation)
);

-- Drop Table RESERVATION

DROP TABLE IF EXISTS RESERVATION CASCADE;

-- Create Table Reservation

CREATE TABLE RESERVATION (
	reservation_number INTEGER CHECK (reservation_number > 0) NOT NULL,
	cid INTEGER CHECK (cid > 0) NOT NULL,
	cost DECIMAL NOT NULL,
	credit_card_number VARCHAR(16) NOT NULL,
	reservation_date TIMESTAMP NOT NULL,
	ticketed BOOLEAN,
	CONSTRAINT RESERVATION_PK
		PRIMARY KEY (reservation_number),
	CONSTRAINT RESERVATION_FK1
		FOREIGN KEY (cid) REFERENCES CUSTOMER(cid),
	CONSTRAINT RESERVATION_FK2
		FOREIGN KEY (credit_card_number) REFERENCES CUSTOMER(credit_card_number)
);

-- Drop Table RESERVATIONDETAIL

DROP TABLE IF EXISTS RESERVATION_DETAIL CASCADE;

-- Create Table RESERVATION_DETAIL

CREATE TABLE RESERVATION_DETAIL (
	reservation_number INTEGER CHECK (reservation_number > 0) NOT NULL,
	flight_number INTEGER CHECK (flight_number > 0) NOT NULL,
	flight_date TIMESTAMP,
	leg INTEGER DEFAULT 0,
	CONSTRAINT RESERVATION_DETAIL_PK
		PRIMARY KEY (reservation_number, leg),
	CONSTRAINT RESERVATION_DETAIL_FK1
		FOREIGN KEY (reservation_number) REFERENCES RESERVATION(reservation_number),
	CONSTRAINT RESERVATION_DETAIL_FK2
		FOREIGN KEY (flight_number) REFERENCES FLIGHT(flight_number)
	);

-- Drop Table OUR_TIME_STAMP

DROP TABLE IF EXISTS OUR_TIME_STAMP CASCADE;

-- Create Table OUR_TIME_STAMP

CREATE TABLE OUR_TIME_STAMP (
c TIMESTAMP NOT NULL,
CONSTRAINT OUR_TIME_STAMP_PK
	PRIMARY KEY (c)
	);