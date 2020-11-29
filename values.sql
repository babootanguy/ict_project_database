/*
   INSERTING TEST/MOCK VALUES INTO TABLES
*/

INSERT INTO locations (location_ID, country, city)
VALUES 
(1, 'Kazakhstan', 'Astana'),
(2, 'Kazakhstan', 'Almaty'),
(3, 'Kazakhstan', 'Shymkent'),
(4, 'Kazakhstan', 'Karaganda'),
(5, 'Russia', 'Moscow'),
(6, 'Russia', 'Saint Petersburg'),
(7, 'Russia', 'Yekaterinburg'),
(8, 'Russia', 'Novosibirsk'),
(9, 'Russia', 'Omsk'),
(10, 'Russia', 'Krasnodar'),
(11, 'Belarus', 'Minsk'),
(12, 'Ukraine', 'Kiev'),
(13, 'Ukraine', 'Kharkiv'),
(14, 'Ukraine', 'Lviv'),
(15, 'Kyrgyzstan', 'Bishkek'),
(16, 'Uzbekistan', 'Tashkent'),
(17, 'Poland', 'Warsaw'),
(18, 'Chech Republic', 'Prague'),
(19, 'Lithuania', 'Vilnius'),
(20, 'Azerbaijan', 'Baku'),
(21, 'Turkey', 'Istanbul'),
(22, 'Turkey', 'Ankara'),
(23, 'Italy', 'Rome'),
(24, 'Italy', 'Milan'),
(25, 'France', 'Paris'),
(26, 'United Kingdom', 'London'),
(27, 'United States', 'New York City'),
(28, 'United States', 'Los Angeles'),
(29, 'United States', 'Miami'),
(30, 'Spain', 'Madrid');

--------------------------------------------

INSERT INTO agencies (agency_ID, agency_name, agency_email, agency_phone, location_ID)
VALUES
(201, 'Sezim', 'sezim@gmail.com', NULL, 2),
(202, 'Sana', 'sana_psych@mailru', '8-717-2234567', 1),
(203, 'Mentalcare', 'ment_care@yahoo.com', NULL, 29),
(204, 'Sau sana', 'sausana_ast@mail.ru', '8-717-2345687', 1),
(205, 'Zehni qulluq', 'zehni_q@gmail.com', NULL, 20),
(206, 'Psixolog.kom', NULL, '+994-12-498-0335', 20),
(207, 'Komek', 'komek@mail.ru', '8-727-3456231', 2),
(208, 'Samga', 'sam_ga_12@gmail.com', NULL, 4),
(209, 'Cuicado mental', 'cuic_men@gmail.com', '+34-23-456-765', 30),
(2010, 'Healthy thinking', 'heal_th@gmail.com', '+15854380159', 28),
(2011, 'Pomosh', 'pom_psych@mail.ru', '+79585256063', 7),
(2012, 'Soznanie.ru', 'soznanie_spb@mail.ru', '+79585321143', 6),
(2013, 'Mentalnoye zdorovye', 'ment_zd_msc@mail.ru', NULL, 5),
(2014, 'Qarqyn', 'qarqyn@mail.ru', NULL, 3),
(2015, 'Gulim', 'gulim_komek@mail.ru', '8-701-523-8997', 4);

---------------------------------------------------

INSERT INTO psychotherapists (psychotherapist_ID, fname, lname, email, phone_number, work_start, location_ID, agency_ID)
VALUES
(301, 'Gulnara', 'Koraguzova', 'koraguz@mail.ru', '8-747-123-21-45', '12/5/2012', 1, 202),
(302, 'Jacob', 'Mitchell', 'dr.mitchell@outlook.com', '+14845219783', '1/20/2003', 26, NULL),
(303, 'Samantha', 'Anders', 'sam_psychology@yahoo.com', '+18143519410', '11/10/2016', 28, 2010),
(304, 'Yekaterina', 'Andreeva', NULL, '+79585756037', '3/31/2010', 5, 2013),
(305, 'Marat', 'Azamat', 'm_azamat@mail.ru', '8-701-324-32-45', '12/08/2008', 4, NULL),
(306, 'Anvar', 'Mammadov', 'mammadov_ps@gmail.com', NULL, '6/17/2004', 20, 206),
(307, 'Lubov', 'Ustinova', NULL, '+79585345222', '2/22/2002', 7, NULL),
(308, 'Angelina', 'Dorofeeva', 'psycholog_ang@mail.ru', '+79585654231', '12/8/2018', 15, NULL),
(309, 'Andreas', 'Paretti', 'doctor.paretti@gmail.com', NULL, '3/21/2010', 30, 209),
(3010, 'Karina', 'Bekzatova', 'k.bekzatova@outlook.com', '8-708-123-34-65', '2/10/2020', 3, NULL),
(3011, 'Marina', 'Gavrilova', 'marina_ps@gmail.com', NULL, '4/4/2015', 14, NULL);

----------------------------------------------------

INSERT INTO certificates (certificate_ID, title, description, given_date, organization, psychotherapist_ID)
VALUES
(401, 'Certificate', 'Course by MIT about children behaviour', '1/21/2010', 'MIT', 306),
(402, 'Diploma', 'For the best disertation in University', '4/12/2008', 'PSU', 307),
(403, 'Certificate', 'For passing one week intensive about stress maintenance', '10/30/2017', 'Sam Kornell', 3011),
(404, 'Certificate', 'Presentating skills', '4/25/2006', 'Coursera', 302),
(405, 'Diploma', 'The psychotherapist of the year', '1/6/2014', 'MH RK', 301),
(406, 'Diploma', 'Graduating at MUA', '6/6/2018', 'MUA', 308),
(407, 'Course completion', 'Talking with people. Empathy', '1/9/2010', 'Udemy', 309),
(408, 'Honours', 'Honours from MH RK for the impact in medicine', '6/12/2010', 'MH RK', 305),
(409, 'Diploma', 'Graduating from UCLA', '7/7/2008', 'UCLA', 309),
(4010, 'Course completion', 'Teen psychology', '3/23/2014', 'Ilnara Abatova', 305),
(4011, 'Diploma', '2nd place in family psychology book competition', '7/12/2017', 'CTR', 303);

-----------------------------------------------------

INSERT INTO work_spheres (sphere_ID, sphere_name, psychotherapist_ID)
VALUES 
(501, 'Teens', 305),
(502, 'Children', 306),
(503, 'Families', 303),
(504, 'Women', 304),
(505, 'Teens', 306),
(506, 'Relationships', 307),
(507, 'Celebrities', 3010),
(508, 'Animals', 309),
(509, 'Children', 301),
(5010, 'Relationships', 3011),
(5011, 'Men', 305),
(5012, 'Families', 302),
(5013, 'Relationships', 308)

----------------------------------------------------

INSERT INTO patients (patient_ID, ptnt_fname, ptnt_lname, ptnt_email, ptnt_phone, location_ID)
VALUES
(601, 'Arman', 'Smagulov', 'smagulov@gmail.com', '8-778-343-43-43', 1),
(602, 'Khan', 'Abdu', 'abdukh@yahoo.com', NULL, 23),
(603, 'Ivan', 'Gabrilov', 'gabrilov@gmail.com', '+79585214955', 12),
(604, 'Mukagali', 'Kanaev', 'kanaev_mu@mail.ru', '87716232779', 1),
(605, 'Myla', 'Deepers', 'myla_2012@gmail.com', '+14842658380', 28),
(606, 'Alla', 'Kostromicheva', 'kmodels@mail.ru', NULL, 12),
(607, 'Sarrah', 'Zarova', 'sarrahhh@gmail.com', '8-701-322-32-12', 3),
(608, 'Aron', 'Mahmodov', 'aron_mmm@mail.ru', NULL, 20),
(609, 'Tanisha', 'Donkokluk', 'tan_don@gmail.com', NULL, 27),
(6010, 'Roza', 'Aibatova', 'rozochka@mail.ru', '8-707-547-32-43', 2);

----------------------------------------------------

INSERT INTO appointments (appointment_id, app_date, app_time, psychotherapist_ID, patient_ID)
VALUES
(701, '12/23/2020', '12:00:00', 301, 602),
(702, '12/23/2020', '13:00:00', 304, 605),
(703, '12/1/2020', '12:00:00', 302, 606),
(705, '12/2/2020', '10:00:00', 309, 601),
(706, '12/4/2020', '11:30:00', 3010, 609),
(707, '1/1/2021', '11:00:00', 301, 604),
(708, '1/2/2021', '16:30:00', 3011, 603),
(709, '1/24/2021', '13:00:00', 306, 601),
(7010, '1/16/2021', '10:00:00', 307, 607);

---------------------------------------------------

INSERT INTO bills (bill_id, bill_amount, appointment_id)
VALUES
(801, 8, 702),
(802, 9, 701),
(803, 10, 706),
(804, 5, 703), 
(805, 6, 705),
(806, 8, 707),
(807, 7, 709),
(808, 7, 708),
(809, 10, 7010);

-----------------------------------------------------

INSERT INTO treatments (treatment_id, trt_name, trt_description, trt_duration, psychotherapist_ID, patient_ID)
VALUES 
(901, 'Conversation therapy', 'Patient needs to talk about his problems', '4 weeks', 301, 602),
(902, 'Walking in nature', 'Patient struggles from too active life in a megapolis', '2 weeks', 304, 603),
(903, 'Taking medicines', 'Patient cannot sleep because of stress', '4 weeks', 302, 604),
(904, 'Conversation therapy', 'Patient has a secrets that make him struggle', '4 weeks', 307, 6010),
(905, 'Taking medicines', 'Anxiety', '8 weeks', 303, 607),
(906, 'Vacation', 'Patient is tired from his job', '2 weeks', 3011, 601),
(907, 'Active life', 'Low physical activity caused stress', '12 weeks', 308, 609),
(908, 'Communicating with family', 'Patient needs help from close people', '1 week', 303, 608);

-----------------------------------------------------

INSERT INTO reviews (review_id, comment, rate, patient_ID, psychotherapist_ID)
VALUES
(1001, 'Thank you for advices', 4, 607, 301),
(1002, 'Conversation was bad, therapist keeps asking inappropriate questions', 1, 601, 303),
(1003, 'This was the best therapy, I am so glad that I met you', 5, 603, 304),
(1004, 'Nice', 5, 602, 309),
(1005, 'Thank you a lot', 4, 604, 309),
(1006, 'This psychotherapist is not professional at all!', 2, 605, 303),
(1007, 'Just thanks', 5, 6010, 3011),
(1008, 'OMG, I am feeling so good righ now', 5, 609, 308),
(1009, 'I recommend this psychotherapist to everyone', 5, 608, 301),
(10010, 'Good', 3, 602, 309);












