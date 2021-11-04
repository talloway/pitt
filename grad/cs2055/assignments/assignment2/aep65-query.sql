-- Avery Peiffer --
--     aep65     --

-- Question 6
-- Part A
SELECT ticket_number, status FROM CS_Tech.ASSIGNMENTS WHERE status = 'closed_successful';

-- Part B
SELECT ticket_number, description FROM CS_Tech.TICKETS where machine_name = 'kaso.cs.pitt.edu';

