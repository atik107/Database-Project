drop table patient_doctor;
drop table patient_medicine;
drop table medicine;
drop table bill;
drop table doctor;
drop table patient;



Create table medicine(
medicine_id number(20),
name varchar(20),
stock number(20),
primary key(medicine_id)
);

create table patient(
patient_id number(20),
p_name varchar(20),
age number(20),
gender varchar(20),
blood_group varchar(20),
primary key(patient_id) 
);


create table bill(
bill_id number(20),
bill_amount number(20),
patient_id number(20),
name varchar(20),
date_bill varchar(20),
primary key(bill_id),
foreign key (patient_id) references patient(patient_id) 
);


create table doctor(
doctor_id number(20),
name varchar(20),
gender varchar(20),
designation varchar(20),
primary key(doctor_id) 
);


Create table patient_medicine(
medicine_id number(20),
patient_id number(20),
foreign key(medicine_id) references medicine(medicine_id),
foreign key(patient_id) references patient(patient_id)
);


Create table patient_doctor(
doctor_id number(20),
patient_id number(20),
date_patient varchar(20),
foreign key (patient_id) references patient(patient_id), 
foreign key(doctor_id) references doctor(doctor_id)
);


ALTER TABLE patient ADD (address VARCHAR(50));

ALTER TABLE patient RENAME COLUMN address TO permanent_address;

ALTER TABLE patient DROP COLUMN permanent_address;

set pagesize 180
set linesize 180