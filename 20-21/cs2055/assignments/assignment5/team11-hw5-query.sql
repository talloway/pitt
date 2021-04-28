/* CS1555 - Database Management Systems
Fall 2020
Team 11

Lucas Leiby (lwl10)
Avery Peiffer (aep65)
Adarsh Cavale (aac90)
*/

-- Task 2:
CREATE OR REPLACE FUNCTION getCancellationTime(reservation_num integer)
RETURNS VARCHAR(4)
AS $$
    DECLARE
        flight_num INTEGER := 0;
        depart_time VARCHAR(4);
        date TIMESTAMP;
    BEGIN
        SELECT flight_number INTO flight_num
        FROM RESERVATION_DETAIL
        WHERE RESERVATION_DETAIL.reservation_number = reservation_num AND RESERVATION_DETAIL.leg = 1;

        SELECT flight_date INTO date
        FROM RESERVATION_DETAIL
        WHERE RESERVATION_DETAIL.reservation_number = reservation_num AND RESERVATION_DETAIL.leg = 1;

        SELECT departure_time INTO depart_time
        FROM FLIGHT
        WHERE FLIGHT.flight_number = flight_num;

        date := date + CAST(depart_time AS TIME);
        RETURN (date - INTERVAL '12' HOUR);
    END;
$$ LANGUAGE plpgsql;

-- Sample data to show execution of the function
SELECT getCancellationTime(1);
SELECT getCancellationTime(2);
SELECT getCancellationTime(3);
SELECT getCancellationTime(4);
SELECT getCancellationTime(5);

-- Task 3:
CREATE OR REPLACE FUNCTION isPlaneFull(flight_num integer)
RETURNS BOOLEAN
AS $$
    DECLARE
        type_of_plane CHAR(4);
        count_reservations integer;
        capacity integer;
    BEGIN
        SELECT COUNT(*) INTO count_reservations
        FROM RESERVATION_DETAIL
        WHERE flight_number = flight_num;

        SELECT plane_type INTO type_of_plane
        FROM FLIGHT
        WHERE flight_number = flight_num;

        SELECT plane_capacity INTO capacity
        FROM PLANE
        WHERE PLANE.plane_type = type_of_plane;

        IF count_reservations < capacity
        THEN
            RETURN FALSE;
        END IF;

        RETURN TRUE;
    END;
$$ LANGUAGE plpgsql;

-- Sample data to show execution of the function
SELECT isPlaneFull(1);
SELECT isPlaneFull(2);
SELECT isPlaneFull(3);
SELECT isPlaneFull(4);
SELECT isPlaneFull(5);

-- Task 4:

-- Drop Procedure makeReservation

DROP PROCEDURE makeReservation CASCADE;

-- Create Procedure makeReservation

-- I understand the purpose of legs, but I'm not clear on how to account for them in making trips.
-- The procedure does work as expected
-- Might involve a great deal of work
CREATE OR REPLACE PROCEDURE makeReservation (reservation_num INTEGER, flight_num INTEGER, departure_date DATE, part INTEGER)
AS $$
DECLARE
customer_dow INTEGER; -- day of week customer wants to travel
schedule CHAR(7); -- the weekly schedule of the flight
flight_dow VARCHAR(1); -- either a - or a letter depending on whether or not the flight is running that day
flight_timestamp CHAR(4); -- the timestamp of the flight
final_timestamp TIMESTAMP; -- the timestamp that will be used to insert data
BEGIN
SELECT reservation_number INTO reservation_num FROM RESERVATION
WHERE reservation_number = reservation_num;

SELECT flight_number INTO flight_num FROM FLIGHT
WHERE flight_number = flight_num;

IF reservation_num IS NULL
THEN
RAISE EXCEPTION 'reservation_num is not valid';
END IF;

IF flight_num IS NULL
THEN
RAISE EXCEPTION 'flight num is not valid';
END IF;

SELECT date_part('dow', departure_date) INTO customer_dow; -- date_part uses 0 indexing, extract uses 1-indexing - also date_part starts from Sunday while extract starts from Monday

-- RAISE NOTICE 'customer_dow value: %', customer_dow;

SELECT weekly_schedule INTO schedule
FROM FLIGHT
WHERE flight_number = flight_num;

-- RAISE NOTICE 'schedule value: %', schedule;

SELECT SUBSTRING(schedule, customer_dow + 1, 1) INTO flight_dow;

-- RAISE NOTICE 'flight_dow value: %', flight_dow;

IF NOT flight_dow = '-'
THEN
SELECT departure_time INTO flight_timestamp
FROM FLIGHT
WHERE flight_number = flight_num;

SELECT TO_TIMESTAMP(CAST(departure_date AS VARCHAR(10)) || ' ' || flight_timestamp, 'yyy-mm-dd hh24mi') INTO final_Timestamp;
INSERT INTO RESERVATION_DETAIL(reservation_number, flight_number, flight_date, leg)
VALUES (reservation_num, flight_num, final_timestamp, part);
-- RAISE NOTICE '%', final_timestamp;
ELSE
RAISE EXCEPTION 'The flight is not running this day';
END IF;
END;
$$ LANGUAGE plpgsql;

CALL makeReservation(1, 1, TO_DATE('2020-11-02', 'YYY-MM-DD'), 4); -- should insert (the leg number doesn't make sense; painfully aware of this)
CALL makeReservation(1, 2, TO_DATE('2020-10-25', 'YYY-MM-DD'), 5); -- should not work - flight is not running on Sunday
CALL makeReservation(20, 2, TO_DATE('2020-10-25', 'YYY-MM-DD'), 5); -- should not work - reservation_number is not valid
CALL makeReservation(1, 10, TO_DATE('2020-10-25', 'YYY-MM-DD'), 5); -- should not work - flight_number is not valid