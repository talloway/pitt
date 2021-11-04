-- Avery Peiffer --
--     aep65     --

-- Question 1 --
-- The cardinality of each of the tables is 0, since there are no rows when the tables are created.
-- But I will also do the cardinality based on the data given in sample-data.txt
-- TECH_PERSONNEL: Arity=6, Cardinality=4
-- USERS: Arity=5, Cardinality=4
-- CATEGORIES: Arity=3, Cardinality=13
-- INVENTORY: Arity=5, Cardinality=7
-- LOCATIONS: Arity=4, Cardinality=5
-- TICKETS: Arity=9, Cardinality=16
-- ASSIGNMENTS: Arity=4, Cardinality=21

-- Question 2 --
DROP SCHEMA IF EXISTS CS_Tech CASCADE;
create schema CS_Tech;

DROP TABLE IF EXISTS CS_Tech.TECH_PERSONNEL;
DROP TABLE IF EXISTS CS_Tech.USERS;
DROP TABLE IF EXISTS CS_Tech.CATEGORIES;
DROP TABLE IF EXISTS CS_Tech.INVENTORY;
DROP TABLE IF EXISTS CS_Tech.LOCATIONS;
DROP TABLE IF EXISTS CS_Tech.TICKETS;
DROP TABLE IF EXISTS CS_Tech.ASSIGNMENTS;

DROP TYPE IF EXISTS status_field;

-- Assuming everyone has to have a first name, lname, and a unique Pitt ID
-- Assuming a person could have no area of expertise
-- Assuming a person could not have an office phone
CREATE TABLE CS_Tech.TECH_PERSONNEL (
  pplSoft int,
  fname varchar(15) NOT NULL,
  lname varchar(15) NOT NULL,
  pittID varchar(8) NOT NULL,
  expertise varchar(30),
  office_phone varchar(20),
  CONSTRAINT pk_tech_personnel PRIMARY KEY (pplSoft),
  CONSTRAINT un_pittID UNIQUE (pittID)
);

-- Assuming that users aren't necessarily tech personnel
-- Assuming that a user could not have an office phone
CREATE TABLE CS_Tech.USERS (
  pplSoft int,
  fname varchar(15) NOT NULL,
  lname varchar(15) NOT NULL,
  pittID varchar(8) NOT NULL,
  office_phone varchar(20),
  CONSTRAINT pk_users PRIMARY KEY (pplSoft)
);

-- Assuming a category could be created without a description
CREATE TABLE CS_Tech.CATEGORIES (
  category_id int,
  category varchar(30) NOT NULL,
  description varchar(280),
  CONSTRAINT pk_categories PRIMARY KEY (category_id)
);

-- Assuming all machine names are unique, mac_address or ip_address could be a better PK here
-- but machine_name allows for a FK in tickets
CREATE TABLE CS_Tech.INVENTORY (
  machine_name varchar(30),
  ip_address varchar(15) NOT NULL,
  network_port varchar(15),
  mac_address varchar(30) NOT NULL,
  location_id int,
  constraint pk_inventory PRIMARY KEY (machine_name),
  constraint un_ip_address UNIQUE (ip_address),
  constraint un_mac_address UNIQUE (mac_address)
);

-- Assuming a location could have no notes
-- Assuming there can be multiple locations in the same building, but each
-- location is unique
CREATE TABLE CS_Tech.LOCATIONS (
  location_id varchar(15),
  location varchar(30) NOT NULL,
  building varchar(30) NOT NULL,
  notes varchar(40),
  constraint pk_locations PRIMARY KEY (location_id)
);

-- Assuming that if a user is removed from the system, the ticket should still exist to be worked on
-- Assuming that if a category id is removed from the system, the ticket should still exist to be worked on
-- Assuming that the tickets only are for a single machine, so if a machine is removed from the system,
-- the tickets for that machine should also be removed
CREATE TABLE CS_Tech.TICKETS (
  ticket_number int,
  owner_pplSoft int NOT NULL,
  date_submitted date NOT NULL,
  date_closed date,
  days_worked_on int,
  category_id int NOT NULL,
  machine_name varchar(30) NOT NULL,
  location varchar(30) NOT NULL,
  description varchar(280),
  CONSTRAINT pk_tickets PRIMARY KEY (ticket_number),
  CONSTRAINT fk_pplSoft FOREIGN KEY (owner_pplSoft) REFERENCES CS_Tech.USERS(pplSoft) ON UPDATE CASCADE ON DELETE SET NULL,
  CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES CS_Tech.CATEGORIES(category_id) ON UPDATE CASCADE ON DELETE SET NULL,
  CONSTRAINT fk_machine_name FOREIGN KEY (machine_name) REFERENCES CS_Tech.INVENTORY(machine_name) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE DOMAIN status_dom VARCHAR(30) CONSTRAINT status_dom_value CHECK (value in ('assigned', 'in_progress', 'delegated', 'closed_successful', 'closed_unsuccessful'));

-- Assuming that if a ticket is deleted, the assignment for it should be deleted as well
-- Assuming that if the tech person is removed from the system, the assignment should stay and be reassigned
-- Assuming that someone can't be assigned the same ticket twice
CREATE TABLE CS_Tech.ASSIGNMENTS(
  ticket_number int,
  tech_pplSoft int NOT NULL,
  date_assigned date NOT NULL,
  status status_dom NOT NULL,
  CONSTRAINT pk_assignments PRIMARY KEY (ticket_number, tech_pplSoft),
  CONSTRAINT fk_ticket_number FOREIGN KEY (ticket_number) REFERENCES CS_Tech.TICKETS(ticket_number) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_tech_pplSoft FOREIGN KEY (tech_pplSoft) REFERENCES CS_Tech.TECH_PERSONNEL(pplSoft) ON UPDATE CASCADE ON DELETE SET NULL
);

-- Question 3
ALTER TABLE CS_Tech.TICKETS DROP location;
ALTER TABLE CS_Tech.ASSIGNMENTS ADD outcome varchar(280);
ALTER TABLE CS_Tech.TECH_PERSONNEL ADD years_of_experience int DEFAULT 0;
ALTER TABLE CS_Tech.TECH_PERSONNEL ADD supervisor int DEFAULT 1110001;
ALTER TABLE CS_Tech.TICKETS ALTER COLUMN days_worked_on SET DEFAULT 0;

-- Question 4
INSERT INTO CS_Tech.TECH_PERSONNEL(pplsoft, fname, lname, pittid, expertise, office_phone, years_of_experience)
    VALUES(1110001, 'Bob', 'Hoffman', 'bh1', 'Unix systems', '412-624-8404', 15);
INSERT INTO CS_Tech.TECH_PERSONNEL(pplsoft, fname, lname, pittid, expertise, office_phone, years_of_experience)
    VALUES(1110002, 'Terry', 'Wood', 'tw1', 'Hardware', '412-624-8831', 14);
INSERT INTO CS_Tech.TECH_PERSONNEL(pplsoft, fname, lname, pittid, expertise, office_phone, years_of_experience)
    VALUES(1110003, 'Russ', 'Howard', 'rh1', 'Windows systems', '412-624-8834', 9);
INSERT INTO CS_Tech.TECH_PERSONNEL(pplsoft, fname, lname, pittid, expertise, office_phone, years_of_experience)
    VALUES(1110004, 'Christian', 'Mason', 'cm1', 'Web technology', '412-624-9181', 5);

INSERT INTO CS_Tech.USERS(pplsoft, fname, lname, pittid, office_phone)
    VALUES(5550001, 'Shenoda', 'Guirguis', 'shg18', '412-624-8443');
INSERT INTO CS_Tech.USERS(pplsoft, fname, lname, pittid, office_phone)
    VALUES(5550002, 'Lory', 'Almoaker', 'la1', '412-624-8443');
INSERT INTO CS_Tech.USERS(pplsoft, fname, lname, pittid, office_phone)
    VALUES(5550003, 'Thao', 'Pham', 'tp1', '412-624-8850');
INSERT INTO CS_Tech.USERS(pplsoft, fname, lname, pittid, office_phone)
    VALUES(5550004, 'Michel', 'Hanna', 'mh1', '412-624-8402');

INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(01, 'Printing Problem', 'problems have to do with printers and printing');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(02, 'Network Problem', 'problems have to do with the network and/or internet');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(03, 'Windows OS problem', 'problems have to do with Windows OS maintenance');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(04, 'Unix/Linux OS problem', 'problems have to do with Unix/Linux OS maintenance');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(05, 'Hardware Problem', 'HW maintenance issues');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(06, 'Software Problem', 'SW maintenance issues');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(07, 'Server Problem', 'Any problem has to do with the dept. servers');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(08, 'Software install', 'Requests to install additional SW');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(09, 'Web Problem', 'Any problem has to do with the dept. web sites');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(10, 'Windows Help', 'Questions about Windows (hotline support)');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(11, 'Unix/Linux Help', 'Questions about Unix/Linux (hotline support)');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(12, 'SW Help', 'Questions about installed SW (hotline support)');
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(13, 'AFS problem', 'Problems related to the AFS system.');

INSERT INTO CS_Tech.LOCATIONS(location_id, location, building, notes)
    VALUES(01, '6th floor', 'SENSQ', 'db research lab');
INSERT INTO CS_Tech.LOCATIONS(location_id, location, building, notes)
    VALUES(02, '6th floor', 'SENSQ', 'os research lab');
INSERT INTO CS_Tech.LOCATIONS(location_id, location, building, notes)
    VALUES(03, '5th floor', 'SENSQ', 'arch research lab');
INSERT INTO CS_Tech.LOCATIONS(location_id, location, building, notes)
    VALUES(04, '6th floor', 'SENSQ', 'java lab');
INSERT INTO CS_Tech.LOCATIONS(location_id, location, building, notes)
    VALUES(05, '5th floor', 'SENSQ', 'reading room');

INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('acta.cs.pitt.edu', '102.168.222.226', 'sq6-52', '01:23:45:67:89:ab', 1);
INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('kaly.cs.pitt.edu', '102.168.222.227', 'sq5-14', '01:23:45:67:89:ac', 3);
INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('elements.cs.pitt.edu', '102.168.222.228', 'sq5-23', '01:23:45:67:89:ad', 5);
INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('kaso.cs.pitt.edu', '102.168.222.229', 'sq6-22', '01:23:45:67:89:ae', 2);
INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('oxgyn.cs.pitt.edu', '102.168.212.216', 'sq5-17', '01:23:45:67:89:af', 3);
INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('rodi.cs.pitt.edu', '102.168.212.217', 'sq6-51', '01:23:45:67:89:ba', 1);
INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('java lab machine', '102.168.212.220', 'sq6-41', '01:23:45:67:89:bb', 4);

INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567841, 5550001, '20-DEC-19', '28-DEC-19', 9, 5, 'acta.cs.pitt.edu', 'The fan is noisy.');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567842, 5550002, '20-DEC-19', '22-DEC-19', 3, 1, 'kaly.cs.pitt.edu', 'Can not print any PDF file!');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567843, 5550002, '23-DEC-19', NULL, NULL, 6, 'elements.cs.pitt.edu', 'Seems that the server is down?!');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567844, 5550001, '28-DEC-19', '31-DEC-19', 4, 6, 'acta.cs.pitt.edu', 'The AFS client crashes all the time!');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567845, 5550003, '01-JAN-20', '05-JAN-20', 5, 4, 'kaso.cs.pitt.edu', 'The mouse responds in a weird way.');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567846, 5550002, '02-JAN-20', '02-JAN-20', 1, 2, 'oxgyn.cs.pitt.edu', 'can not connect to the oxgyn server!');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567847, 5550001, '05-JAN-20', '06-JAN-20', 2, 8, 'acta.cs.pitt.edu', 'I failed to login to the evaluation site.');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567848, 5550003, '05-JAN-20', '12-JAN-20', 8, 7, 'kaso.cs.pitt.edu', 'May I have SigmaPlot installed on my machine?');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567849, 5550003, '13-JAN-20', NULL, NULL, 5, 'kaso.cs.pitt.edu', 'Some keys on the keyboard does not function.');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567850, 5550004, '14-JAN-20', NULL, NULL, 10, 'rodi.cs.pitt.edu', 'The sound card is unrecognized.');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567851, 5550001, '14-JAN-20', '23-JAN-20', 10, 5, 'acta.cs.pitt.edu', 'The harddrive got bad sector.');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567852, 5550003, '14-JAN-20', '17-JAN-20', 4, 3, 'kaso.cs.pitt.edu', 'Windows crashed!');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567853, 5550003, '15-JAN-20', '21-JAN-20', 7, 12, 'kaso.cs.pitt.edu', 'can not reach AFS-home directory from home.');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567854, 5550001, '16-JAN-20', '17-JAN-20', 2, 6, 'acta.cs.pitt.edu', 'I have trouble configuring Outlook.');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567855, 5550003, '20-JAN-20', NULL, NULL, 3, 'kaso.cs.pitt.edu', 'Windows crashed!');
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567856, 5550004, '25-JAN-20', NULL, NULL, 8, 'java lab machine', 'Can not submit my h/w using the submission site.');

INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567841, 1110001, '20-DEC-19', 'delegated', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567841, 1110002, '24-DEC-19', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567842, 1110002, '20-DEC-19', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567843, 1110001, '23-DEC-19', 'assigned', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567844, 1110003, '28-DEC-19', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567845, 1110003, '01-JAN-20', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567846, 1110002, '02-JAN-20', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567847, 1110001, '05-JAN-20', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567848, 1110003, '05-JAN-20', 'delegated', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567848, 1110001, '08-JAN-20', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567849, 1110003, '13-JAN-20', 'in_progress', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567850, 1110004, '14-JAN-20', 'in_progress', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567851, 1110001, '14-JAN-20', 'delegated', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567851, 1110002, '20-JAN-20', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567852, 1110003, '14-JAN-20', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567853, 1110003, '15-JAN-20', 'delegated', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567853, 1110001, '18-JAN-20', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567854, 1110001, '16-JAN-20', 'closed_successful', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567855, 1110001, '20-JAN-20', 'assigned', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567856, 1110003, '25-JAN-20', 'delegated', NULL);
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567856, 1110004, '27-JAN-20', 'assigned', NULL);

-- SELECT * FROM CS_Tech.TECH_PERSONNEL;
-- SELECT * FROM CS_Tech.USERS;
-- SELECT * FROM CS_Tech.CATEGORIES;
-- SELECT * FROM CS_Tech.LOCATIONS:
-- SELECT * FROM CS_Tech.INVENTORY;
-- SELECT * FROM CS_Tech.TICKETS;