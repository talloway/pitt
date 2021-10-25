-- # 1
SELECT Claim_Type, ROUND(AVG(Claim_Cost), 2) AS Avg_Claim_Cost
FROM Claim
GROUP BY Claim_Type
ORDER BY Avg_Claim_Cost DESC;

-- View used for queries 2 and 3
DROP VIEW IF EXISTS claims_by_employer;

CREATE VIEW claims_by_employer AS
SELECT Employer_ID, Employer_Name, Claim_ID, Claim_Type, Claim_Cost
FROM claim NATURAL JOIN (customer NATURAL JOIN employer);

-- # 2
SELECT Employer_Name, SUM(Claim_Cost) AS Total_Claim_Cost
FROM claims_by_employer
GROUP BY Employer_Name
ORDER BY Total_Claim_Cost DESC
LIMIT 1;

-- #3
SELECT ROUND(AVG(Claim_Cost), 2) AS Avg_Oncology_Cost
FROM claims_by_employer
WHERE Claim_Type = "ONCOLOGY"
AND Employer_Name = "Smith's Shoes"
GROUP BY Employer_Name;