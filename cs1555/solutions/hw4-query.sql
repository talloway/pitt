-----------------------------------------
--- Sample Solution to Assignment #4 ---
-----------------------------------------


----------------------------------------
--- Sample solution for Question #2  ---
----------------------------------------

--(a) List in ascending order of their full names, as  ``UserNames" (i.e., a single attribute), users whose office phone number is 412-624-8443.
SELECT fname || ' ' || lname as UserNames
FROM USERS
WHERE office_phone = '412-624-8443'
ORDER BY UserNames ASC;

-- (b) Find the first and last name of users who have at least one ticket with status
-- in_progress since January 2020.
SELECT DISTINCT fname, lname
FROM (USERS AS U
    JOIN tickets T on U.pplsoft = T.owner_pplsoft)
         NATURAL JOIN ASSIGNMENT A
WHERE A.status = 'in_progress'
  AND T.date_submitted > '01-JAN-2020';


-- (c)      List the full names  as ``Staff'' (i.e., a single attribute) of Tech Staff along with the full name as
-- "Supervisor" of their supervisor. Note that a Tech Staff who does not have a supervisor, such as a supervisor,
-- has NULL in supervisor attribute.

SELECT T.fname || ' ' || T.lname AS Staff, S.fname || ' ' || S.lname AS Supervisor
FROM tech_personnel T
         LEFT JOIN tech_personnel S on T.supervisor = S.pplsoft;

-- (d)  List the pplSoft number of users who submitted more than 5 tickets during the month of January 2020.
-- The join is optional
SELECT U.pplsoft, count(T.ticket_number)
FROM (USERS AS U
         JOIN tickets T on U.pplsoft = T.owner_pplsoft)
WHERE date_submitted >= '01-JAN-2020'
  AND date_submitted <= '31-JAN-2020'
GROUP BY U.pplsoft
having count(T.ticket_number) > 5;

-- (e) Display the average number of days each ticket is being worked on as AVERAGE_DAYS_WORKED_ON, for tickets submitted during the month of
-- January 2020. Note that a newly submitted ticket without days worked on (NULL) should be listed as 0.
SELECT ticket_number,
       CASE
           WHEN AVG(days_worked_on) IS NULL THEN 0
           ELSE
               AVG(days_worked_on)
           END as AVERAGE_DAYS_WORKED_ON
FROM TICKETS
WHERE to_char(date_submitted, 'MM-YY') = '01-20'
GROUP BY ticket_number;

-- (f) Display the full name and number of tickets of the user who submitted the least number of tickets.
SELECT fname, lname, count(T.ticket_number)
FROM (USERS AS U
         JOIN tickets T on U.pplsoft = T.owner_pplsoft)
GROUP BY fname, lname
having count(T.ticket_number) <= (SELECT min(CUT.Ticket_count)
                                  FROM (SELECT fname, lname, count(T.ticket_number) as Ticket_count
                                        FROM USERS AS U
                                                 JOIN tickets T on U.pplsoft = T.owner_pplsoft
                                        GROUP BY fname, lname) as CUT);

--(g) List the 3 machines located on the fifth floor of Sennott with the most problems (i.e., Top 3 number of tickets) along with the number of problems.
SELECT machine_name, COUNT(ticket_number) as tktCnt
FROM ((Tickets NATURAL JOIN Inventory)
         NATURAL JOIN Locations)
WHERE location = '5th floor'
  AND building = 'SENSQ'
GROUP BY machine_name
ORDER BY tktCnt DESC
    FETCH FIRST 3 ROW ONLY;


--(h) List the days ranked third and fifth with the most number of submitted tickets in December 2019. Hint: This is
-- based on ranking.
SELECT DayOfWeek, Rank
FROM (SELECT TO_CHAR(date_submitted, 'DAY') AS DayOfWeek, RANK() OVER ( ORDER BY COUNT(ticket_number) ) as Rank
      FROM Tickets
      WHERE EXTRACT(MONTH FROM date_submitted) = 12
        AND EXTRACT(YEAR FROM date_submitted) = 2019
      GROUP BY TO_CHAR(date_submitted, 'DAY')) as RD
where Rank = 3 OR RANK = 5;


-- (i) For tickets submitted during the month of January 2020, calculate the
-- top two categories that tickets were submitted under, order descending.

SELECT T.category_id, C1.ticket_count
FROM TICKETS AS T
         JOIN (
    SELECT category_id, COUNT(ticket_number) AS ticket_count
    FROM TICKETS AS T
    GROUP BY category_id
) AS C1
              ON T.category_id = C1.category_id
WHERE EXTRACT(MONTH FROM date_submitted) = 1
  AND EXTRACT(YEAR FROM date_submitted) = 2020
ORDER BY C1.ticket_count DESC
    FETCH FIRST 2 ROWS ONLY;

----------------------------------------
--- Sample solution for Question #3  ---
----------------------------------------
-- (a) For tickets submitted during the month of January 2020, calculate the top two categories that tickets were
-- submitted under. That is, list the two categories with the most tickets along with the number of tickets submitted
-- under the category, in descending order.
DROP VIEW IF EXISTS VCC;
CREATE VIEW VCC AS
SELECT category_id, COUNT(ticket_number) AS ticket_count
FROM TICKETS AS T
GROUP BY category_id;

SELECT T.ticket_number, VCC.ticket_count
FROM TICKETS AS T
         JOIN VCC
              ON T.category_id = VCC.category_id
WHERE EXTRACT(MONTH FROM date_submitted) = 1
  AND EXTRACT(YEAR FROM date_submitted) = 2020
ORDER BY VCC.ticket_count DESC
    FETCH FIRST 2 ROWS ONLY;

-- (b) For each tech personnel, calculate the total number of days spent on resolving tickets during the month of
-- January 2020. List them in an ascending order.

-- Transform the assignment table to only contain active (i.e., worked on) tickets in January
DROP VIEW IF EXISTS january_assignment CASCADE;
CREATE VIEW january_assignment AS
SELECT a.ticket_number,
       a.tech_pplsoft,
       CASE
           WHEN a.date_assigned < '01-JAN-20' THEN TO_DATE('010120', 'MMDDYY')
           ELSE a.date_assigned
           END as date_assigned,
       a.status,
       CASE
           WHEN t.date_closed >= '01-FEB-20' THEN TO_DATE('013120', 'MMDDYY')
           WHEN t.date_closed IS NULL THEN TO_DATE('013120', 'MMDDYY')
           ELSE t.date_closed
           END as date_closed
FROM tickets t
         JOIN assignment a ON t.ticket_number = a.ticket_number
WHERE (t.date_closed >= '01-JAN-20'
    OR t.date_closed IS NULL)
  and a.date_assigned < '01-FEB-20';

-- Assumption: The ticket can be delegated once per day
-- The rank query below finds the order of a ticket delegation (i.e., the ticket_number in the PARTITION BY and ordered by the date)
DROP VIEW IF EXISTS order_january_delegation CASCADE;
CREATE VIEW order_january_delegation AS
SELECT ja.ticket_number,
       ja.tech_pplsoft,
       RANK() OVER (
           PARTITION BY ja.ticket_number ORDER BY ja.date_assigned DESC
           ) delegation_order
FROM january_assignment ja;


-- Finds the days worked on until a delegation
-- Case1: Same day delegation (i.e., the delegation_order difference is 0)
-- Case2: Days between two subsequent delegation (i.e., the delegation_order difference is 1)
DROP VIEW IF EXISTS delegated_tickets CASCADE;
CREATE VIEW delegated_tickets AS
SELECT a1.ticket_number, a1.tech_pplsoft, a2.date_assigned - a1.date_assigned + 1 as days_worked_on
FROM (january_assignment a1 natural join order_january_delegation ra1)
         join (january_assignment a2 natural join order_january_delegation ra2)
              on a1.ticket_number = a2.ticket_number and a1.tech_pplsoft <> a2.tech_pplsoft and
                 ((ra1.delegation_order - ra2.delegation_order) = 0 or
                  (ra1.delegation_order - ra2.delegation_order) = 1)
where a1.status = 'delegated';


-- Days worked on without delegation
DROP VIEW IF EXISTS days_worked_on CASCADE;
CREATE VIEW days_worked_on AS
SELECT ja.tech_pplsoft, SUM(date_closed - date_assigned + 1) as days_worked_on
FROM january_assignment ja
WHERE ja.status <> 'delegated'
GROUP BY ja.tech_pplsoft;
--or
DROP VIEW IF EXISTS days_worked_on_v2 CASCADE;
CREATE VIEW days_worked_on_v2 AS
SELECT ja.tech_pplsoft, SUM(date_closed - date_assigned + 1) as days_worked_on
FROM january_assignment ja
WHERE (ja.tech_pplsoft, ja.ticket_number) NOT IN
      (SELECT dt.tech_pplsoft, dt.ticket_number FROM delegated_tickets AS dt)
GROUP BY ja.tech_pplsoft;

SELECT tech_pplsoft, SUM(days_worked_on) as days_worked_on
FROM (
         (SELECT tech_pplsoft, days_worked_on
          FROM days_worked_on)
         UNION ALL
         (SELECT tech_pplsoft, days_worked_on
          FROM delegated_tickets)
     ) as total_days_worked_on
group by tech_pplsoft
ORDER BY days_worked_on ASC;
