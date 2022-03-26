\c bloodbank

/* BLOOD_PROCESSING_MANAGER */
INSERT into BLOOD_PROCESSING_MANAGER values(1,'Shreya Vishwas', 'F');
INSERT into BLOOD_PROCESSING_MANAGER values(2,'Samhitha Harish', 'F');
INSERT into BLOOD_PROCESSING_MANAGER values(3,'Shreya Srinivas', 'F');

/* REGISTRATION_STAFF */
INSERT into REGISTRATION_STAFF values(11,'Arun', 'M');
INSERT into REGISTRATION_STAFF values(12,'Asha', 'F');
INSERT into REGISTRATION_STAFF values(13,'Parvati', 'F');
INSERT into REGISTRATION_STAFF values(14,'Uma', 'F');
INSERT into REGISTRATION_STAFF values(15, 'Sohel', 'M');
INSERT into REGISTRATION_STAFF values(16,'Abhishek', 'M');
INSERT into REGISTRATION_STAFF values(17,'Shrushti', 'F');
INSERT into REGISTRATION_STAFF values(18, 'Light', 'M');
INSERT into REGISTRATION_STAFF values(19, 'Pramod', 'M');
INSERT into REGISTRATION_STAFF values(20, 'Ajay', 'M');

/* DISTRICT */
INSERT into DISTRICT values(111, 'Raichur');
INSERT into DISTRICT values(112, 'Bengaluru');
INSERT into DISTRICT values(113, 'Mysore');
INSERT into DISTRICT values(114, 'Udupi');
INSERT into DISTRICT values(115, 'Gulbarga');
INSERT into DISTRICT values(116, 'Belagav');
INSERT into DISTRICT values(117, 'Koppal');
INSERT into DISTRICT values(118, 'Dharwad');
INSERT into DISTRICT values(119, 'Mandya');
INSERT into DISTRICT values(120, 'Chitradurga');

/* RECIPIENT */

INSERT into RECIPIENT values(1000,'M', 24, 2017/01/23, 'Pavan', 400, 'O/', 13, 112, 1);
INSERT into RECIPIENT values(1001,'F', 67, 2017/01/12, 'Rashmi', 220, 'AB+', 11, 119, 1);
INSERT into RECIPIENT values(1002,'F', 34, 2017/02/08, 'Chitra', 120, 'A+', 14, 111, 3);
INSERT into RECIPIENT values(1003,'F', 29, 2017/05/09, 'Akila', 230, 'B+', 12, 114, 1);
INSERT into RECIPIENT values(1004,'F', 91, 2017/05/12, 'Anisha', 345, 'A+', 16, 118, 3);
INSERT into RECIPIENT values(1005,'M', 15, 2017/05/03, 'Bharat', 123, 'B+', 18, 111, 3);
INSERT into RECIPIENT values(1006,'F', 46, 2017/05/22, 'Geeta', 342, 'AB+', 13, 119, 2);
INSERT into RECIPIENT values(1007,'F', 81, 2017/08/10, 'Joshika', 127, 'AB+', 16, 114, 2);
INSERT into RECIPIENT values(1008,'F', 90, 2018/10/12, 'Keerti', 230, 'O/', 18, 116, 2);
INSERT into RECIPIENT values(1009,'M', 33, 2018/12/31, 'Ubhay', 215, 'O/', 19, 117, 1);
INSERT into RECIPIENT values(1010,'M', 36, 2018/11/21, 'nagesh', 238, 'A+', 11, 112, 2);
INSERT into RECIPIENT values(1011,'M', 49, 2018/01/22, 'Nihal', 343, 'B+', 13, 120, 3);
INSERT into RECIPIENT values(1012,'M', 71, 2018/02/14, 'Soorya', 125, 'AB+', 15, 116, 2);
INSERT into RECIPIENT values(1013,'F', 42, 2019/03/09, 'Pramila', 147, 'AB+', 15, 118, 3);
INSERT into RECIPIENT values(1014,'M', 19, 2019/04/20, 'Nitin', 173, 'A+', 18, 113, 1);
INSERT into RECIPIENT values(1015,'M', 29, 2019/08/19, 'Arvind', 210, 'A/', 16, 116, 1);
INSERT into RECIPIENT values(1016,'M', 66, 2019/10/10, 'Vinay', 211, 'AB+', 20, 114, 1);
INSERT into RECIPIENT values(1017,'F', 63, 2019/10/12, 'Sharvya', 240, 'A/', 20, 112, 2);
INSERT into RECIPIENT values(1018,'M', 55, 2019/12/13, 'Sham', 321, 'O/', 15, 111, 3);
INSERT into RECIPIENT values(1019,'M', 59, 2019/11/10, 'ravi', 412, 'O/', 16, 120, 3);
INSERT into RECIPIENT values(1020,'F', 89, 2019/1/03, 'Kirana', 200, 'AB+', 12, 119, 3);
INSERT into RECIPIENT values(1021,'F', 17, 2019/04/20, 'Soujanya', 230, 'O+', 13, 112, 2);

/* DISEASE_RECOGNITION */
/* let the id start from 5100 */
/* Diseases: Anemia, Sickle cell, hemophilia, cancer, accident, low platelets */
INSERT into DISEASE_RECOGNITION values(5101, 'Anemia', 'M');
INSERT into DISEASE_RECOGNITION values(5102, 'Sickel cell', 'F');
INSERT into DISEASE_RECOGNITION values(5103, 'Cancer', 'F');
INSERT into DISEASE_RECOGNITION values(5104, 'Anemia', 'F');
INSERT into DISEASE_RECOGNITION values(5105, 'Anemia', 'F');
INSERT into DISEASE_RECOGNITION values(5106, 'Accident', 'M');
INSERT into DISEASE_RECOGNITION values(5107, 'Low paltelets', 'F');
INSERT into DISEASE_RECOGNITION values(5108, 'Low platelets', 'F');
INSERT into DISEASE_RECOGNITION values(5109, 'Accident', 'F');
INSERT into DISEASE_RECOGNITION values(5110, 'Anemia', 'F');
INSERT into DISEASE_RECOGNITION values(5111, 'Anemia', 'M');
INSERT into DISEASE_RECOGNITION values(5112, 'Hemopholia', 'M');
INSERT into DISEASE_RECOGNITION values(5113, 'Sickle cell', 'M');
INSERT into DISEASE_RECOGNITION values(5114, 'Low platelets', 'M');
INSERT into DISEASE_RECOGNITION values(5115, 'Cancer', 'F');
INSERT into DISEASE_RECOGNITION values(5116, 'Anemia', 'M');
INSERT into DISEASE_RECOGNITION values(5117, 'Low platelets', 'M');
INSERT into DISEASE_RECOGNITION values(5118, 'Sickel cell', 'M');
INSERT into DISEASE_RECOGNITION values(5119, 'Anemia', 'F');
INSERT into DISEASE_RECOGNITION values(5120, 'Anemia', 'F');

/* BLOOD_SAMPLE */

INSERT into BLOOD_SAMPLE values('A+', 9101, 'Yes', 5101, 1);
INSERT into BLOOD_SAMPLE values('A+', 9102, 'No', 5102, 2);
INSERT into BLOOD_SAMPLE values('AB+', 9103, 'Yes', 5103, 3);
INSERT into BLOOD_SAMPLE values('O+', 9104, 'No', 5104, 2);
INSERT into BLOOD_SAMPLE values('O+', 9105, 'Yes', 5105, 1);
INSERT into BLOOD_SAMPLE values('O/', 9106, 'No', 5106, 1);
INSERT into BLOOD_SAMPLE values('B+', 9107, 'Yes', 5107, 2);
INSERT into BLOOD_SAMPLE values('O/', 9108, 'No', 5108, 3);
INSERT into BLOOD_SAMPLE values('O/', 9109, 'Yes', 5109, 3);
INSERT into BLOOD_SAMPLE values('AB+', 9110, 'No', 5101, 1);
INSERT into BLOOD_SAMPLE values('O+', 9111, 'Yes', 5111, 3);
INSERT into BLOOD_SAMPLE values('O+', 9112, 'No', 5112, 3);
INSERT into BLOOD_SAMPLE values('O/', 9113, 'Yes', 5113, 2);
INSERT into BLOOD_SAMPLE values('B+', 9114, 'No', 5114, 1);
INSERT into BLOOD_SAMPLE values('O/', 9115, 'Yes', 5115, 1);
INSERT into BLOOD_SAMPLE values('O/', 9116, 'No', 5116, 1);
INSERT into BLOOD_SAMPLE values('AB+', 9117, 'Yes', 5117, 3);
INSERT into BLOOD_SAMPLE values('AB+', 9118, 'No', 5118,1);
INSERT into BLOOD_SAMPLE values('B+', 9119, 'Yes', 5119, 2);
INSERT into BLOOD_SAMPLE values('B+', 9120, 'No', 5120, 3);

/*HOSPITAL*/

INSERT into HOSPITAL values(1, 2, 'A+', 'St.Hopkins Hospital', 113, 2 );
INSERT into HOSPITAL values(1, 2, 'A+', 'BBMD Hospital', 116, 1 );
INSERT into HOSPITAL values(2, 220, 'AB+', 'CTES Hospital', 111, 3 );
INSERT into HOSPITAL values(3, 210, 'O+', 'HKES Hospital', 120, 4 );
INSERT into HOSPITAL values(1, 200, 'O+', 'TTK Hospital', 111, 7 );
INSERT into HOSPITAL values(1, 250, 'O/', 'KIMS Hospital', 112, 12 );
INSERT into HOSPITAL values(2, 220, 'B+', 'BBMD Hospital', 113, 3 );
INSERT into HOSPITAL values(3, 150, 'O/', 'BBMD Hospital', 115, 1 );
INSERT into HOSPITAL values(1, 220, 'O/', 'KIMS Hospital', 120, 12 );
INSERT into HOSPITAL values(2, 210, 'AB+', 'St.Hopkins Hospital', 112, 13 );
INSERT into HOSPITAL values(1, 200, 'AB+', 'CTES Hospital', 111, 7 );
INSERT into HOSPITAL values(3, 250, 'B+', 'IMABB Hospital', 120, 18 );
INSERT into HOSPITAL values(1, 230, 'O+', 'BBHB Hospital', 114, 13 );
INSERT into HOSPITAL values(2, 250, 'O/', 'Victoria Hospital', 118, 7 );
INSERT into HOSPITAL values(3, 250, 'AB+', 'Apollo Hospital', 116,18 );
INSERT into HOSPITAL values(1, 200, 'O/', 'IMABB Hospital', 115, 5 );
INSERT into HOSPITAL values(1, 280, 'B+', 'Victoria Hospital', 118, 6 );
INSERT into HOSPITAL values(2, 300, 'O/', 'St.Hopkins Hospital', 115, 14 );
INSERT into HOSPITAL values(3, 230, 'O+', 'KIMS Hospital', 111, 19 );
INSERT into HOSPITAL values(3, 250, 'AB+', 'BBMD Hospital', 112, 21 );

/*DONOR */

INSERT into DONOR values('Bhuvi', 3001, 'F', 34, 2021/06/23, 'AB+', 113, 12);
INSERT into DONOR values('Abhijna', 3002, 'F', 24, 2021/03/24, 'O/', 116, 11);
INSERT into DONOR values('Advit', 3003, 'M', 21, 2021/08/21, 'O/', 111, 13);
INSERT into DONOR values('Anu', 3004, 'F', 45, 2021/07/06, 'A+', 120, 14);
INSERT into DONOR values('Aditya', 3005, 'M', 20, 2021/01/24, 'B+', 113, 17);
INSERT into DONOR values('Bhumika', 3006, 'F', 31, 2021/04/12, 'AB+', 115, 12);
INSERT into DONOR values('Amogh', 3007, 'M', 42, 2021/04/12, 'O/', 111, 13);
INSERT into DONOR values('Akshay', 3008, 'M', 37, 2021/04/12, 'A+', 116, 11);
INSERT into DONOR values('Aman', 3009, 'M', 38, 2021/04/12, 'A+', 113, 13);
INSERT into DONOR values('Amritha', 3010, 'F', 27, 2018/04/12, 'AB+', 111, 17);
INSERT into DONOR values('Abhinav', 3011, 'M', 25, 2018/04/12, 'B+', 117, 18);
INSERT into DONOR values('Apoorva', 3012, 'F', 45, 2018/04/12, 'B/', 119, 15);
INSERT into DONOR values('Pallavi', 3013, 'F', 33, 2018/04/12, 'O+', 117, 16);
INSERT into DONOR values('Surabh', 3014, 'M', 19, 2018/04/12, 'O/', 118, 18);
INSERT into DONOR values('Trupti', 3015, 'F', 22, 2018/04/12, 'O/', 113, 14);
INSERT into DONOR values('Gavi', 3016, 'M', 20, 2019/04/12, 'O+', 116, 17);
INSERT into DONOR values('Druva', 3017, 'M', 45, 2019/04/12, 'AB+', 113, 18);
INSERT into DONOR values('Shoheb', 3018, 'M', 31, 2019/04/12, 'AB+', 111, 19);
INSERT into DONOR values('Aprita', 3019, 'F', 42, 2019/04/12, 'AB+', 120, 11);
INSERT into DONOR values('Anand', 3020, 'F', 35, 2019/04/12, 'B+', 115, 13);
INSERT into DONOR values('Prithvi', 3021, 'M', 25, 2019/04/12, 'B/', 120, 12);
INSERT into DONOR values('Punit', 3022, 'M', 37, 2019/04/12, 'O+', 117, 11);
INSERT into DONOR values('Sara', 3023, 'F', 40, 2019/04/12, 'AB+', 117, 11);
INSERT into DONOR values('Amruth', 3024, 'M', 35, 2019/04/12, 'AB+', 114, 12);
INSERT into DONOR values('Atul', 3025, 'M', 37, 2019/04/12, 'O+', 114, 13);
INSERT into DONOR values('Varun', 3026, 'M', 31, 2019/04/12, 'O+', 112, 13);
INSERT into DONOR values('Deepa', 3027, 'F', 32, 2019/04/12, 'AB+', 117, 13);
INSERT into DONOR values('Manoj', 3028, 'M', 43, 2019/04/12, 'AB+', 114, 15);
INSERT into DONOR values('Krisha', 3029, 'M', 29, 2019/04/12, 'O/', 116, 12);
INSERT into DONOR values('Apoorava', 3030, 'F', 20, 2019/04/12, 'O/', 117, 15);






