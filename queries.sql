/*
    CONTENT: TESTING DIFFERENT QUERIES 
	P.S.: QUERIES WERE WRITTEN ACCORDING TO THE PROJECT REQUIREMENTS
*/

-- ALTER TABLE --

-- DROPPING CONSTRAINT --
ALTER TABLE bills DROP CONSTRAINT fk_appointment

-- ADD CONSTRAINT --
ALTER TABLE bills 
    ADD CONSTRAINT fk_appointment 
        FOREIGN KEY (appointment_ID) REFERENCES appointments(appointment_ID)
		
-- ADD COLUMN TO TABLE --
ALTER TABLE locations ADD COLUMN districts VARCHAR(32)

-- ALTER COLUMN DATA TYPE -- 
ALTER TABLE locations ALTER districts SET DATA TYPE INT USING districts::integer

-- DROP COLUMN FROM TABLE -- 
ALTER TABLE locations DROP COLUMN districts

----------------------------------------------------------------------------------------

-- DML STATEMENTS -- 

-- UPDATE COLUMN'S DATA -- 
UPDATE bills SET bill_amount = bill_amount * 1.1

-- UPDATE COLUMN'S DATA --
UPDATE psychotherapists SET email = 'jacob@gmail.com' WHERE fname = 'Jacob' AND lname = 'Mitchell'

-- DELETE COLUMN'S DATA -- 
DELETE FROM locations WHERE city = 'Prague'
DELETE FROM appointments WHERE app_date < '2021-01-01'

-----------------------------------------------------------------------------------------

-- QUERIES WITH OTHER CONDITIONS --

-- QUERY TO FIND AMOUNT OF BILL OF EACH PATIENT --
SELECT ptnt_fname, ptnt_lname, bill_amount 
FROM patients
INNER JOIN appointments ON appointments.patient_ID = patients.patient_ID
INNER JOIN bills ON appointments.appointment_ID = bills.appointment_ID

-- QUERY TO FIND A COMMENTS AND RATES FOR EACH PSYCHOTHERAPIST --
SELECT fname, lname, comment, rate
FROM psychotherapists
INNER JOIN reviews ON reviews.psychotherapist_ID = psychotherapists.psychotherapist_ID
ORDER BY fname

-- QUERY TO SHOW PSYCHOTHERAPISTS WITH THE HIGHEST RATES --
SELECT fname, lname, rate
FROM reviews, psychotherapists 
WHERE rate = (SELECT MAX(rate) FROM reviews) AND reviews.psychotherapist_ID = psychotherapists.psychotherapist_ID

-- QUERY TO FIND CERTIFICATES THAT WAS GIVEN IN SOME PERIOD AND ITS OWNER --
SELECT fname, lname, title, description
FROM psychotherapists
INNER JOIN certificates ON certificates.psychotherapist_ID = psychotherapists.psychotherapist_ID
WHERE given_date BETWEEN '2000-1-1' AND '2008-1-1'

-- QUERY NEEDED TO FIND NUMBER OF COUNTRIES --
SELECT COUNT(DISTINCT country) AS "Number of countries"
FROM locations

-- QUERY NEEDED TO SEE THE POPULARITY OF SPHERES IN DIFFEREN CITIES -- 
SELECT country, city, sphere_name
FROM locations
LEFT JOIN psychotherapists ON psychotherapists.location_ID = locations.location_ID
LEFT JOIN work_spheres ON psychotherapists.psychotherapist_ID = work_spheres.psychotherapist_ID
ORDER BY country, city

-- QUERY THAT SHOWS PSYCHOTHERAPISTS FROM SAME LOCATIONS --
SELECT fname, lname
FROM psychotherapists 
WHERE location_ID IN(
    SELECT location_ID
    FROM psychotherapists
    GROUP BY location_ID
    HAVING COUNT(location_ID) > 1)


