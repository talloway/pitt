/* CS1555 - Database Management Systems
Fall 2020
Team 11

Lucas Leiby (lwl10)
Avery Peiffer (aep65)
Adarsh Cavale (aac90)
*/

-- Task 5

DROP TRIGGER IF EXISTS planeUpgrade ON RESERVATION_DETAIL CASCADE;

CREATE TRIGGER planeUpgrade
    BEFORE INSERT
    ON RESERVATION_DETAIL
    FOR EACH ROW
        WHEN (NEW.flight_number IS NOT NULL)
    EXECUTE FUNCTION planeUpgradeFunc();

CREATE OR REPLACE FUNCTION planeUpgradeFunc()
    RETURNS trigger
AS $$
    DECLARE
        type CHAR(4);
    BEGIN
        -- Get the current plane type for the flight of the newly reserved ticket
        SELECT plane_type INTO type
        FROM (SELECT pt.flight_number, pt.plane_type
             FROM (SELECT fn.flight_number, plane_type
                   FROM (SELECT DISTINCT flight_number
                         FROM RESERVATION_DETAIL) AS fn NATURAL JOIN flight) AS pt NATURAL JOIN plane) AS flight_plane
        WHERE NEW.flight_number = flight_plane.flight_number;

        -- Check if the plane is full
        IF isplanefull(NEW.flight_number) THEN
            IF type = 'E145' THEN
                UPDATE FLIGHT
                SET plane_type = 'E175'
                WHERE flight_number = NEW.flight_number;
                RETURN NEW;
            ELSEIF type = 'E175' THEN
                UPDATE FLIGHT
                SET plane_type = 'B737'
                WHERE flight_number = NEW.flight_number;
                RETURN NEW;
            ELSEIF type = 'B737' THEN
                UPDATE FLIGHT
                SET plane_type = 'A320'
                WHERE flight_number = NEW.flight_number;
                RETURN NEW;
            ELSEIF type = 'A320' THEN
                UPDATE FLIGHT
                SET plane_type = 'B777'
                WHERE flight_number = NEW.flight_number;
                RETURN NEW;
            ELSE -- Since there are no higher capacity planes, the trigger fails
                RAISE WARNING 'There are no planes with a higher capacity';
                DELETE FROM RESERVATION
                WHERE reservation_number = NEW.reservation_number;
                RETURN NEW;
            END IF;
        END IF;

        RETURN NEW;
    END
$$
LANGUAGE 'plpgsql';


-- Task 6

DROP TRIGGER IF EXISTS cancelReservation ON RESERVATION CASCADE;

CREATE TRIGGER cancelReservation
    AFTER DELETE
    ON RESERVATION
    FOR EACH ROW
        WHEN (substr(getcancellationtime(3), 1, 2) || ':' || substr(getcancellationtime(3), 3, 4) || ':00.000000' = CAST(CURRENT_TIME AS VARCHAR))
    EXECUTE FUNCTION cancelReservationFunc();

CREATE OR REPLACE FUNCTION cancelReservationFunc()
    RETURNS trigger
AS $$
    DECLARE
        cancel_time CHAR(4);                    -- For the cancellation time
        res_num INTEGER;                        -- Reservation number
        num_res_ticketed INTEGER;               -- Number of ticketed reservations
        leg_row RESERVATION_DETAIL%ROWTYPE;     -- For looping through the different leg flights
        leg_plane_type CHAR(4);                 -- Plane type for each leg of the reserved flight
        delete_flag BOOLEAN;                    -- If we need to delete the reservation
    BEGIN
        -- Initially, set the delete flag to false
        delete_flag = FALSE;

        -- Get the reservation number from RESERVATION
        SELECT reservation_number INTO res_num
        FROM RESERVATION
        WHERE reservation_number = OLD.reservation_number;

        -- First check if we can simply downsize the plane size
        -- Get number of ticketed reservations
        SELECT count(*) INTO num_res_ticketed
        FROM RESERVATION
        WHERE reservation_number = OLD.reservation_number AND ticketed = 'true';

        -- Loop through the different leg flights and check each type of plane
        FOR leg_row IN SELECT * FROM RESERVATION_DETAIL WHERE reservation_number = OLD.reservation_number LOOP

            -- Get the plane type for specific leg of reservation
            SELECT plane_type INTO leg_plane_type
            FROM FLIGHT
            WHERE flight_number = leg_row.flight_number;

            -- For this leg plane type, check if you can downgrade it
            IF leg_plane_type = 'B777' AND num_res_ticketed < 368 THEN
                UPDATE FLIGHT
                SET plane_type = 'A320'
                WHERE flight_number = leg_row.flight_number;
            END IF;

            IF leg_plane_type = 'A320' AND num_res_ticketed < 186 THEN
                UPDATE FLIGHT
                SET plane_type = 'B737'
                WHERE flight_number = leg_row.flight_number;
            END IF;

            IF leg_plane_type = 'B737' THEN
                UPDATE FLIGHT
                SET plane_type = 'E175'
                WHERE flight_number = leg_row.flight_number;
            END IF;

            IF leg_plane_type = 'E175' THEN
                UPDATE FLIGHT
                SET plane_type = 'E145'
                WHERE flight_number = leg_row.flight_number;
            END IF;

            IF leg_plane_type = 'E145' THEN -- Since there are no lower capacity planes, delete the reservation
                delete_flag = TRUE;
            END IF;
        END LOOP;

        -- If delete flag was set to true, delete the reservation
        DELETE FROM RESERVATION_DETAIL
        WHERE reservation_number = res_num;

        DELETE FROM RESERVATION
        WHERE reservation_number = res_num;

        RETURN OLD;
    END;
$$
LANGUAGE 'plpgsql';