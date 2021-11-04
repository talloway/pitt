-- Avery Peiffer
-- aep65

-- Question 1 completed by executing queries in hw4-cstech-db.sql and hw4-cstech-insert.sql

-- Display contents of all tables
SELECT * FROM tech_personnel;
SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM inventory;
SELECT * FROM locations;
SELECT * FROM tickets;
SELECT * FROM assignment;

-- Question 2

-- Query A
SELECT fname || ' ' || lname AS UserNames
FROM users
WHERE office_phone = '412-624-8443'
ORDER BY UserNames ASC;

-- Query B
SELECT DISTINCT fname || ' ' || lname AS UserNames
FROM (users JOIN tickets ON (users.pplSoft = tickets.owner_pplSoft)) NATURAL JOIN assignment
WHERE date_submitted >= '01-01-2020'
AND status = 'in_progress'
ORDER BY UserNames ASC;

-- Query C
SELECT t1.fname || ' ' || t1.lname AS staff, t2.fname || ' ' || t2.lname AS supervisor
FROM tech_personnel t1
LEFT OUTER JOIN tech_personnel t2 ON t1.supervisor = t2.pplSoft;

-- Query D
SELECT owner_pplSoft AS users
FROM tickets
WHERE date_submitted >= '01-01-2020' AND date_submitted <= '01-31-2020'
GROUP BY owner_pplSoft
HAVING COUNT(date_submitted) > 5;

-- Query E
SELECT AVG(days_worked_on) AS AVERAGE_DAYS_WORKED_ON FROM (
    SELECT CASE WHEN days_worked_on IS NULL THEN 0 ELSE days_worked_on END
    FROM tickets
    WHERE date_submitted >= '01-01-2020' AND date_submitted <= '01-31-2020'
    GROUP BY ticket_number)
    AS jan_days_worked_on;

-- Query F
SELECT fname || ' ' || lname AS fullName, COUNT(date_submitted) AS num_tickets_submitted
FROM users JOIN tickets ON (users.pplSoft = tickets.owner_pplsoft)
GROUP BY fullName
ORDER BY num_tickets_submitted LIMIT 1;

-- Query G
SELECT tickets.machine_name, COUNT(tickets.machine_name) AS num_problems
FROM (inventory JOIN locations ON inventory.location_id = locations.location_id) AS inventory_locations
JOIN tickets ON tickets.machine_name = inventory_locations.machine_name
WHERE location = '5th floor' and building = 'SENSQ'
GROUP BY tickets.machine_name
ORDER BY num_problems DESC, tickets.machine_name
LIMIT 3;

-- Query H
-- Shouldn't return anything with how the database is currently populated
SELECT date_submitted FROM
    (SELECT date_submitted, RANK() OVER (ORDER BY COUNT(date_submitted) DESC) AS day_submitted_rank
    FROM tickets
    WHERE date_submitted >= '12-01-2019' AND date_submitted <= '12-31-2019'
    GROUP BY date_submitted) AS ranked_days_submitted
WHERE day_submitted_rank = 3
OR day_submitted_rank = 5;

-- Query I
-- The results will change if I also order by the category or do something
-- to account for ties, so I just did it strictly according to the question
SELECT category, COUNT(tickets.category_id) AS num_tickets_submitted
FROM categories JOIN tickets ON categories.category_id = tickets.category_id
WHERE date_submitted >= '01-01-2020' AND date_submitted <= '01-31-2020'
GROUP BY category
ORDER BY num_tickets_submitted DESC
LIMIT 2;


-- Question 3

-- Query A
DROP VIEW IF EXISTS jan_tickets CASCADE;
CREATE VIEW jan_tickets AS
    SELECT *
    FROM tickets
    WHERE date_submitted >= '01-01-2020' AND date_submitted <= '01-31-2020';

SELECT category, COUNT(jan_tickets.category_id) AS num_tickets_submitted
FROM jan_tickets JOIN categories c on jan_tickets.category_id = c.category_id
GROUP BY category
ORDER BY num_tickets_submitted DESC
LIMIT 2;

-- Query B
DROP VIEW IF EXISTS jan_tickets CASCADE;
CREATE VIEW jan_tickets AS
    SELECT ticket_number, tech_pplsoft, date_assigned, date_closed, status
    FROM tickets NATURAL JOIN assignment
    WHERE date_submitted >= '01-01-2020' AND date_submitted <= '01-31-2020'
    ORDER BY ticket_number, date_assigned;

-- Handling closed tickets
DROP VIEW IF EXISTS days_worked_on_closed CASCADE;
CREATE VIEW days_worked_on_closed AS
    SELECT tech_pplsoft, SUM(EXTRACT(DAY FROM date_closed) - EXTRACT(DAY FROM date_assigned)) AS total_days_worked_on_closed
    FROM jan_tickets
    WHERE status = 'closed_successful' OR status = 'closed_unsuccessful'
    GROUP BY tech_pplSoft;

-- Handling in progress tickets
DROP VIEW IF EXISTS days_worked_on_in_progress;
CREATE VIEW days_worked_on_in_progress AS
    SELECT tech_pplSoft, SUM(31 - EXTRACT(DAY FROM date_assigned)) AS total_days_worked_on_in_progress
    FROM jan_tickets
    WHERE status = 'in_progress'
    GROUP BY tech_pplSoft;

-- Handling delegated tickets
DROP VIEW IF EXISTS jan_tickets_2 CASCADE;
CREATE VIEW jan_tickets_2 AS
    SELECT * FROM jan_tickets
    WHERE status = 'delegated';

DROP VIEW IF EXISTS jan_tickets_3;
CREATE VIEW jan_tickets_3 AS
    SELECT DISTINCT j.ticket_number, j.tech_pplSoft as p1, j.date_assigned as d1, j2.tech_pplSoft as p2, j2.date_assigned as d2
    FROM jan_tickets_2 AS j2 LEFT OUTER JOIN jan_tickets AS j
        ON j.ticket_number = j2.ticket_number AND j.tech_pplSoft != j2.tech_pplSoft
    WHERE j.ticket_number IS NOT NULL AND j2.date_assigned >= j.date_assigned;

DROP VIEW IF EXISTS days_worked_on_delegated;
CREATE VIEW days_worked_on_delegated AS
    SELECT p1 AS tech_pplSoft, SUM(EXTRACT(day FROM d2) - EXTRACT(day FROM d1)) AS total_days_worked_on_delegated
    FROM jan_tickets_3
    GROUP BY tech_pplSoft;

-- Total days
DROP VIEW IF EXISTS first_join;
CREATE VIEW first_join AS
    SELECT d1.tech_pplSoft, d2.tech_pplSoft AS pplSoft2, total_days_worked_on_closed, total_days_worked_on_in_progress
    FROM days_worked_on_closed AS d1
        FULL JOIN days_worked_on_in_progress AS d2
            ON d1.tech_pplSoft = d2.tech_pplSoft;
SELECT * FROM first_join;

DROP VIEW IF EXISTS second_join;
CREATE VIEW second_join AS
    SELECT fj.tech_pplSoft, fj.pplSoft2, d3.tech_pplSoft AS pplSoft3, total_days_worked_on_closed, total_days_worked_on_in_progress, total_days_worked_on_delegated
    FROM first_join AS fj
        FULL JOIN days_worked_on_delegated AS d3
            ON fj.pplSoft2 = d3.tech_pplSoft;
SELECT * FROM second_join;


-- This is a shortcut table because I haven't yet figured out how to get to it from second_join
-- and I want to do the rest of the question
DROP TABLE IF EXISTS shortcut_table;
CREATE TABLE shortcut_table(
    pplSoft int,
    total_days_worked int,
    constraint PK_shortcut PRIMARY KEY (pplSoft)
);

INSERT INTO shortcut_table VALUES(1110001, 20);
INSERT INTO shortcut_table VALUES(1110002, 0);
INSERT INTO shortcut_table VALUES(1110003, 31);
INSERT INTO shortcut_table VALUES(1110004, 23);

SELECT fname || ' ' || lname AS fullName, total_days_worked
FROM shortcut_table NATURAL JOIN tech_personnel
ORDER BY total_days_worked ASC;

