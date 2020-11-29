/* 
  PROJECT MAKERS: AIMAR ABSATTAROV & ZHANGGIR GARIFULLA - 1ST YEAR STUDENTS AT ASTANA IT UNIVERSITY
  TOPIC: DATABASE FOR THE PSYCHOTHERAPISTS BOOKING SERVICE
  CONTENT: CREATING TABLES AND SETTING ENTITY RELATIONSHIPS
*/

CREATE TABLE locations(
location_ID INT PRIMARY KEY,
country VARCHAR(32),
city VARCHAR(32));

--------------------------------------------

CREATE TABLE agencies(
agency_ID INT PRIMARY KEY,
agency_name VARCHAR(32) NOT NULL,
agency_email VARCHAR(32),
agency_phone VARCHAR(32),
location_ID INT, 
CONSTRAINT fk_location 
	FOREIGN KEY (location_ID) 
	    REFERENCES locations(location_ID));
		
---------------------------------------------

CREATE TABLE psychotherapists(
psychotherapist_ID INT PRIMARY KEY,
fname VARCHAR(32) NOT NULL,
lname VARCHAR(32) NOT NULL,
email VARCHAR(32),
phone_number VARCHAR(20),
work_start DATE,
location_ID INT,
agency_id INT,
CONSTRAINT fk1_location
    FOREIGN KEY (location_ID)
        REFERENCES locations(location_ID),
CONSTRAINT fk2_agency
    FOREIGN KEY (agency_ID)
        REFERENCES agencies(agency_ID));
		
------------------------------------------

CREATE TABLE certificates(
certificate_ID INT PRIMARY KEY,
title VARCHAR(32),
description VARCHAR(255),
given_date DATE,
organization VARCHAR(32),
psychotherapist_ID INT,
CONSTRAINT fk_psychotherapist
    FOREIGN KEY (psychotherapist_ID)
        REFERENCES psychotherapists(psychotherapist_ID));
		
--------------------------------------------

CREATE TABLE work_spheres(
sphere_ID INT PRIMARY KEY,
sphere_name VARCHAR(32) NOT NULL,
psychotherapist_ID INT,
CONSTRAINT fk_psychotherapist
    FOREIGN KEY (psychotherapist_ID)
        REFERENCES psychotherapists(psychotherapist_ID));
		
--------------------------------------------

CREATE TABLE patients(
patient_ID INT PRIMARY KEY,
ptnt_fname VARCHAR(32) NOT NULL,
ptnt_lname VARCHAR(32) NOT NULL,
ptnt_email VARCHAR(32),
ptnt_phone VARCHAR(20),
location_ID INT,
CONSTRAINT fk_location
    FOREIGN KEY (location_ID)
        REFERENCES locations(location_ID));
		
--------------------------------------------

CREATE TABLE appointments(
appointment_ID INT PRIMARY KEY,
app_date DATE NOT NULL,
app_time TIME NOT NULL,
psychotherapist_ID INT,
patient_ID INT,
CONSTRAINT fk1_psychotherapist
    FOREIGN KEY (psychotherapist_ID)
        REFERENCES psychotherapists(psychotherapist_ID),
CONSTRAINT fk2_patient
    FOREIGN KEY (patient_ID)
        REFERENCES patients(patient_ID));
		
---------------------------------------------

CREATE TABLE bills(
bill_ID INT PRIMARY KEY,
bill_amount INT,
appointment_ID INT,
CONSTRAINT fk_appointment
    FOREIGN KEY (appointment_ID)
        REFERENCES appointments(appointment_ID));
		
----------------------------------------------

CREATE TABLE treatments(
treatment_ID INT PRIMARY KEY,
trt_name VARCHAR(32),
trt_description VARCHAR(255),
trt_duration VARCHAR(20),
psychotherapist_ID INT,
patient_ID INT,
CONSTRAINT fk1_psychotherapist
    FOREIGN KEY (psychotherapist_ID)
        REFERENCES psychotherapists(psychotherapist_ID),
CONSTRAINT fk2_patient
    FOREIGN KEY (patient_ID)
        REFERENCES patients(patient_ID));

-----------------------------------------------

CREATE TABLE reviews(
review_ID INT PRIMARY KEY,
comment VARCHAR(255),
rate INT,
patient_ID INT,
psychotherapist_ID INT,
CONSTRAINT fk1_patient
    FOREIGN KEY (patient_ID)
        REFERENCES patients(patient_ID),
CONSTRAINT fk2_psychotherapist
    FOREIGN KEY (psychotherapist_ID)
        REFERENCES psychotherapists(psychotherapist_ID));
