-- DML


-- Inserting data into the `doctor` table

INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (1, 'Dr. Smith', 'Male', 'Cardiologist');
INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (2, 'Dr. Johnson', 'Female', 'Pediatrician');
INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (3, 'Dr. Lee', 'Male', 'Dermatologist');
INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (4, 'Dr. Williams', 'Female', 'Obstetrician');
INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (5, 'Dr. Brown', 'Male', 'Surgeon');
INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (6, 'Dr. Davis', 'Female', 'Neurologist');
INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (7, 'Dr. Wilson', 'Male', 'Orthopedist');
INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (8, 'Dr. Taylor', 'Female', 'Psychiatrist');
INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (9, 'Dr. Anderson', 'Male', 'Oncologist');
INSERT INTO doctor (doctor_id, name, gender, designation) VALUES (10, 'Dr. Thomas', 'Female', 'Endocrinologist');
  


-- Inserting data into the `patient` table
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (1, 'John Doe', 35, 'Male', 'A+');
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (2, 'Jane Smith', 45, 'Female', 'B-');
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (3, 'David Lee', 28, 'Male', 'O+');
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (4, 'Emily Chen', 62, 'Female', 'AB+');
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (5, 'Michael Wong', 50, 'Male', 'O-');
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (6, 'Sarah Johnson', 42, 'Female', 'A-');
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (7, 'Robert Brown', 31, 'Male', 'B+');
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (8, 'Lisa Davis', 39, 'Female', 'O+');
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (9, 'William Wilson', 56, 'Male', 'AB-');
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (10, 'Olivia Taylor', 27, 'Female', 'A+');

 

-- Inserting data into the `medicine` table
INSERT INTO medicine (medicine_id, name, stock) VALUES (1, 'Paracetamol', 100);
INSERT INTO medicine (medicine_id, name, stock) VALUES (2, 'Ibuprofen', 50);
INSERT INTO medicine (medicine_id, name, stock) VALUES (3, 'Amoxicillin', 75);
INSERT INTO medicine (medicine_id, name, stock) VALUES (4, 'Aspirin', 200);
INSERT INTO medicine (medicine_id, name, stock) VALUES (5, 'Omeprazole', 30);
INSERT INTO medicine (medicine_id, name, stock) VALUES (6, 'Diphenhydramine', 50);
INSERT INTO medicine (medicine_id, name, stock) VALUES (7, 'Hydrochlorothiazide', 20);
INSERT INTO medicine (medicine_id, name, stock) VALUES (8, 'Simvastatin', 100);
INSERT INTO medicine (medicine_id, name, stock) VALUES (9, 'Metformin', 80);
INSERT INTO medicine (medicine_id, name, stock) VALUES (10, 'Sertraline', 60);
  
  

-- Inserting data into the `bill` table
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (1, 1500, 1, 'John Doe', '2023-05-01');
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (2, 250,  2, 'Jane Smith', '2023-05-01');
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (3, 300,  3, 'David Lee', '2023-05-02');
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (4, 550,  4, 'Emily Chen', '2023-05-02');
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (5, 250,  5, 'Michael Wong', '2023-05-05');
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (6, 100,  6, 'Sarah Johnson', '2023-05-05');
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (7, 500,  7, 'Robert Brown', '2023-05-07');
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (8, 410,  8, 'Lisa Davis', '2023-05-08');
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (9, 310,  9, 'William Wilson', '2023-05-08');
INSERT INTO bill (bill_id,bill_amount, patient_id, name, date_bill) VALUES (10,110,  10, 'Olivia Taylor', '2023-05-10');
 
  

-- Inserting data into the `patient_doctor` table
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (1, 1, '2023-05-01');
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (2, 2, '2023-05-02');
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (3, 3, '2023-05-03');
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (4, 4, '2023-05-04');
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (5, 5, '2023-05-05');
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (6, 6, '2023-05-06');
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (7, 7, '2023-05-07');
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (8, 8, '2023-05-08');
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (9, 9, '2023-05-09');
INSERT INTO patient_doctor (doctor_id, patient_id, date_patient) VALUES (10, 10, '2023-05-10');
  
  
  
-- Inserting data into the `patient_medicine` table
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (1, 1);
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (2, 1);
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (3, 2);
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (4, 10);
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (5, 4);
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (6, 5);
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (7, 5);
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (8, 6);
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (9, 7);
INSERT INTO patient_medicine (medicine_id, patient_id) VALUES (10, 8);



-- print all table data

SELECT * FROM doctor;
SELECT * FROM patient;
SELECT * FROM medicine;
SELECT * FROM bill;
SELECT * FROM patient_doctor;
SELECT * FROM patient_medicine;
  
  


-- update
update bill set bill_amount= 1200 where bill_id= 9;
  
  
-- delet
INSERT INTO patient (patient_id, p_name, age, gender, blood_group) VALUES (11, 'Atik', 25, 'Male', 'O+');
delete from  patient where patient_id=11;
  
-- Union
select p_name from patient where p_name like 'R%' union select p_name from patient where p_name like '%E%';
  
  
-- Aggregate function
select count(p_name) as number_of_patient from patient;
select count(name) as number_of_doctor from doctor;

select avg(bill_amount) as average_bill_of_patient from bill;
select sum(bill_amount) as total_bill_amount from bill;

select sum(stock) as total_medicine_count from medicine;
select max(stock) as Max_medicine_count from medicine;
select min(stock) as Min_medicine_count from medicine;


select max(bill_amount) as Max_bill_of_patient from bill;
select min(bill_amount) as Min_bill_of_patient from bill;
  
-- group by
select date_bill,avg(bill_amount) as average_bill_on_same_date from bill group by date_bill;
select date_bill,avg(bill_amount) as average_bill_on_same_date from bill group by date_bill having avg(bill_amount) >= 800;

-- nested sub query
select patient_id,bill_amount from bill 
where bill_id=(select patient_id from patient where p_name='Olivia Taylor');


 select * from medicine 
 where medicine_id= (select medicine_id from patient_medicine 
 where patient_id=(select patient_id from patient where p_name='Olivia Taylor'));


select * from bill 
where bill_id=(select patient_id from patient where p_name='Olivia Taylor');

  
  
-- set Membership
select * from patient where age <=30;
select * from patient where age <=30 and  p_name like '%D%';

-- join
select * from doctor natural join patient where doctor_id=7;
-- create view doctor_demo1 as select doctor_id,name from doctor;


-- string operation
SELECT * FROM patient WHERE p_name LIKE '___';
SELECT * FROM doctor WHERE name LIKE '%D%';
SELECT * FROM doctor WHERE name LIKE 'E%';

SELECT * FROM medicine WHERE name LIKE '___';
SELECT * FROM medicine WHERE name LIKE '%A%';
SELECT * FROM medicine WHERE name LIKE 'P%';