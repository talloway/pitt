-- Avery Peiffer --
--     aep65     --

-- Question 5

-- Test validity of PK pplSoft in table TECH_PERSONNEL
INSERT INTO CS_Tech.TECH_PERSONNEL(pplsoft, fname, lname, pittid, expertise, office_phone, years_of_experience)
    VALUES(1110001, 'Bob', 'Hoffman', 'bh1', NULL, NULL, NULL);

-- Test validity of NOT NULL fname in table TECH_PERSONNEL
INSERT INTO CS_Tech.TECH_PERSONNEL(pplsoft, fname, lname, pittid, expertise, office_phone, years_of_experience)
    VALUES(1, NULL, 'Peiffer', 'aep65', NULL, NULL, NULL);

-- Test validity of NOT NULL lname in table TECH_PERSONNEL
INSERT INTO CS_Tech.TECH_PERSONNEL(pplsoft, fname, lname, pittid, expertise, office_phone, years_of_experience)
    VALUES(1, 'Avery', NULL, 'aep65', NULL, NULL, NULL);

-- Test validity of NOT NULL pittid in table TECH_PERSONNEL
INSERT INTO CS_Tech.TECH_PERSONNEL(pplsoft, fname, lname, pittid, expertise, office_phone, years_of_experience)
    VALUES(1, 'Avery', 'Peiffer', NULL, NULL, NULL, NULL);

-- Test validity of UNIQUE pittid in table TECH_PERSONNEL
INSERT INTO CS_Tech.TECH_PERSONNEL(pplsoft, fname, lname, pittid, expertise, office_phone, years_of_experience)
    VALUES(1110005, 'Ron', 'Howard', 'rh1', NULL, NULL, NULL);



-- Test validity of PK pplSoft in table USERS
INSERT INTO CS_Tech.USERS(pplsoft, fname, lname, pittid, office_phone)
    VALUES(5550001, 'Fname', 'Lname', 'PittID', NULL);

-- Test validity of NOT NULL fname in USERS
INSERT INTO CS_Tech.USERS(pplsoft, fname, lname, pittid, office_phone)
    VALUES(1, NULL, 'Lname', 'PittID', 'Officephone');

-- Test validity of NOT NULL lname in USERS
INSERT INTO CS_Tech.USERS(pplsoft, fname, lname, pittid, office_phone)
    VALUES(1, 'Fname', NULL, 'PittID', 'Officephone');

-- Test validity of NOT NULL pittID in USERS
INSERT INTO CS_Tech.USERS(pplsoft, fname, lname, pittid, office_phone)
    VALUES(1, 'Fname', 'Lname', NULL, 'Officephone');



-- Test validity of PK category_id in table CATEGORIES
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(1, 'Category', 'Description');

-- Test validity of NOT NULL category in table CATEGORIES
INSERT INTO CS_Tech.CATEGORIES(category_id, category, description)
    VALUES(14, NULL, 'Description');



-- Test validity of PK machine_name in table INVENTORY
INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('acta.cs.pitt.edu', 'IPAddress', 'NetworkPort', 'MacAddress', 1);

-- Test validity of UNIQUE ip_address in table INVENTORY
INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('MachineName', '102.168.222.226', 'NetworkPort', 'MacAddress', 1);

-- Test validity of UNIQUE mac_address in table INVENTORY
INSERT INTO CS_Tech.INVENTORY(machine_name, ip_address, network_port, mac_address, location_id)
    VALUES('MachineName', 'IPAddress', 'NetworkPort', '01:23:45:67:89:ab', 1);



-- Test validity of PK location_id in table LOCATIONS
INSERT INTO CS_Tech.LOCATIONS(location_id, location, building, notes)
    VALUES(1, 'Location', 'Building', 'Notes');

-- Test validity of NOT NULL location in table LOCATIONS
INSERT INTO CS_Tech.LOCATIONS(location_id, location, building, notes)
    VALUES(14, NULL, 'Building', 'Notes');

-- Test validity of NOT NULL building in table LOCATIONS
INSERT INTO CS_Tech.LOCATIONS(location_id, location, building, notes)
    VALUES(14, 'Location', NULL, 'Notes');



-- Test validity of PK ticket_number in table TICKETS
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567841, 5550001, '20-Dec-19', '28-Dec-19', 9, 2, 'Machine', 'Description');

-- Test validity of FK pplSoft in table TICKETS
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(1, 5550005, '20-Dec-19', '28-Dec-19', 9, 2, 'acta.cs.pitt.edu', 'Description');

-- Test validity of FK category_id in table TICKETS
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(1, 5550001, '20-Dec-19', '28-Dec-19', 9, 14, 'acta.cs.pitt.edu', 'Description');

-- Test validity of FK machine_name in table TICKETS
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(1, 5550001, '20-Dec-19', '28-Dec-19', 9, 2, 'Machine', 'Description');

-- Test validity of NOT NULL owner_pplSoft in table TICKETS
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567841, NULL, '20-Dec-19', '28-Dec-19', 9, 2, 'acta.cs.pitt.edu', 'Description');

-- Test validity of NOT NULL date_submitted in table TICKETS
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567841, 5550001, NULL, '28-Dec-19', 9, 2, 'acta.cs.pitt.edu', 'Description');

-- Test validity of NOT NULL category_id in table TICKETS
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567841, 5550001, '20-Dec-19', '28-Dec-19', 9, NULL, 'acta.cs.pitt.edu', 'Description');

-- Test validity of NOT NULL machine_name in table TICKETS
INSERT INTO CS_Tech.TICKETS(ticket_number, owner_pplsoft, date_submitted, date_closed, days_worked_on, category_id, machine_name, description)
    VALUES(567841, 5550001, '20-Dec-19', '28-Dec-19', 9, 2, NULL, 'Description');



-- Test validity of PK ticket_number, tech_pplSoft in table ASSIGNMENTS
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567841, 1110001, '20-Dec-2019', 'assigned', 'outcome');

-- Test validity of NOT NULL tech_pplSoft in table ASSIGNMENTS
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567841, NULL, '20-Dec-2019', 'assigned', 'outcome');

-- Test validity of NOT NULL date_assigned in table ASSIGNMENTS
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567841, 1110004, NULL, 'assigned', 'outcome');

-- Test validity of NOT NULL status in table ASSIGNMENTS
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567841, 1110004, '20-Dec-2019', NULL, 'outcome');

-- Test FK ticket_number in table ASSIGNMENTS
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567867, 1110001, '20-Dec-2019', 'assigned', 'outcome');

-- Test FK tech_pplSoft in table ASSIGNMENTS
INSERT INTO CS_Tech.ASSIGNMENTS(ticket_number, tech_pplsoft, date_assigned, status, outcome)
    VALUES(567841, 1110005, '20-Dec-2019', 'assigned', 'outcome');


