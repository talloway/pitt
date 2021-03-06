----------------------------------------
--- Datbase Schema for Assignment #4 ---
----------------------------------------

----------------------------------------
-------------- Assumptions -------------
----------------------------------------

---Assume that all tech personnel and users have a proper
---first name and last name

---Assume that all tech personnel and users have a PittID

---Assume that machines are only located in the buildings
---SENSQ or IS for this schema

---Assume that mac_address can be null in INVENTORY as a
---machine may not be connected to a network (e.g. a printer)

---DROP ALL TABLES TO MAKE SURE THE SCHEMA IS CLEAR
DROP TABLE IF EXISTS TECH_PERSONNEL CASCADE;
DROP TABLE IF EXISTS USERS CASCADE;
DROP TABLE IF EXISTS CATEGORIES CASCADE;
DROP TABLE IF EXISTS TICKETS CASCADE;
DROP TABLE IF EXISTS ASSIGNMENT CASCADE;
DROP TABLE IF EXISTS LOCATIONS CASCADE;
DROP TABLE IF EXISTS INVENTORY CASCADE;

---CREATE DOMAIN for status attribute
DROP DOMAIN IF EXISTS STATUS_DOMAIN CASCADE;
CREATE DOMAIN STATUS_DOMAIN AS VARCHAR(20) CHECK (VALUE IN ('assigned', 'in_progress', 'delegated', 'closed_successful','closed_unsuccessful'));

---CREATING TECH_PERSONNEL TABLE
CREATE TABLE TECH_PERSONNEL(
pplSoft   integer,
fname     varchar(20)    NOT NULL,
lname     varchar(20)   NOT NULL,
pittID    varchar(10)     NOT NULL,
expertise varchar(50),
office_phone varchar(13),
years_of_experience integer DEFAULT 0,
supervisor integer DEFAULT 1110001,
CONSTRAINT TECH_PERSONNEL_PK PRIMARY KEY(pplSoft),
CONSTRAINT TECH_PERSONNEL_FK FOREIGN KEY(supervisor) REFERENCES TECH_PERSONNEL(pplSoft),
CONSTRAINT TECH_PERSONNEL_UQ UNIQUE(pittID)
);

---CREATING USERS TABLE
CREATE TABLE USERS(
pplSoft   integer,
fname     varchar(20)    NOT NULL,
lname     varchar(20)   NOT NULL,
pittID    varchar(10)     NOT NULL,
office_phone varchar(13),
CONSTRAINT USERS_PK PRIMARY KEY(pplSoft),
CONSTRAINT USERS_UQ UNIQUE(pittID)
);

---CREATING CATEGORIES TABLE
CREATE TABLE CATEGORIES(
category_id     integer,
category        varchar(50)   NOT NULL,
description     varchar(500),
CONSTRAINT CATEGORIES_PK PRIMARY KEY(category_id),
CONSTRAINT CATEGORIES_UQ UNIQUE(category)
);

---CREATING LOCATIONS TABLE
CREATE TABLE LOCATIONS(
location_id integer,
location varchar(50),
building varchar(15),
notes varchar(100),
CONSTRAINT LOCATIONS_PK PRIMARY KEY(location_id),
CONSTRAINT LOCATIONS_ENUM CHECK (building IN ('SENSQ', 'IS'))
);

---CREATING INVENTORY TABLE
CREATE TABLE INVENTORY(
machine_name varchar(40),
ip_address varchar(45),
network_port varchar(10),
mac_address char(17),
location_id integer,
CONSTRAINT INVENTORY_PK PRIMARY KEY(machine_name),
CONSTRAINT INVENTORY_FK FOREIGN KEY(location_id) REFERENCES LOCATIONS(location_id),
CONSTRAINT INVENTORY_UQ UNIQUE(mac_address)
);


---CREATING TICKETS TABLE
CREATE TABLE TICKETS(
ticket_number         integer,
owner_pplSoft         integer   NOT NULL,
date_submitted        date        NOT NULL,
date_closed           date,
days_worked_on        integer  DEFAULT 0,
category_id           integer   NOT NULL,
machine_name          varchar(20) NOT NULL,
description           varchar(500),
CONSTRAINT TICKETS_PK PRIMARY KEY(ticket_number),
CONSTRAINT TICKETS_FK1 FOREIGN KEY(owner_pplSoft) REFERENCES USERS(pplSoft),
CONSTRAINT TICKETS_FK2 FOREIGN KEY(category_id) REFERENCES CATEGORIES(category_id),
CONSTRAINT TICKETS_FK3 FOREIGN KEY(machine_name) REFERENCES INVENTORY(machine_name)
);

---CREATING ASSIGNMENT TABLE

CREATE TABLE ASSIGNMENT(
ticket_number     integer,
tech_pplSoft      integer,
date_assigned     date     NOT NULL,
status            STATUS_DOMAIN,
outcome           varchar(280),
CONSTRAINT ASSIGNMENT_PK PRIMARY KEY(ticket_number, tech_pplSoft),
CONSTRAINT ASSIGNMENT_FK1 FOREIGN KEY(ticket_number) REFERENCES TICKETS(ticket_number),
CONSTRAINT ASSIGNMENT_FK2 FOREIGN KEY(tech_pplSoft) REFERENCES TECH_PERSONNEL(pplSoft)
);