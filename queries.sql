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
		
-- ADD COLUMN --
ALTER TABLE locations ADD COLUMN districts VARCHAR(32)

-- ALTER COLUMN DATA TYPE -- 
ALTER TABLE locations ALTER districts SET DATA TYPE INT USING districts::integer

-- DROP COLUMN -- 
ALTER TABLE locations DROP COLUMN districts

----------------------------------------------------------------------------------------

-- DML STATEMENTS -- 

-- UPDATE COLUMN'S DATA -- 
UPDATE bills SET bill_amount = bill_amount * 1.1

-- DELETE COLUMN'S DATA -- 
DELETE FROM locations WHERE city = 'Prague'


