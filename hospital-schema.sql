DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital;
USE hospital;

drop table if exists Employees;
drop table if exists Physicians;
drop table if exists Nurses;
drop table if exists Orders;
drop table if exists Monitor;
drop table if exists Medication;
drop table if exists Patients;
drop table if exists Room;
drop table if exists RoomInfo;
drop table if exists Instructions;
drop table if exists Health_Records;
drop table if exists Invoice;
drop table if exists Payables;

/* Create the schema for our tables */
create table Employees(employee_id int, address text, name text, phone_num bigint, 
	PRIMARY KEY (employee_id));
    
create table Physicians(employee_id int, expertise text,
	PRIMARY KEY (employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id));
    
create table Nurses(employee_id int,
	PRIMARY KEY (employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id));
    
create table Orders(order_id int, nurse_id int, physician_id int, status text, record_info text,
	PRIMARY KEY (order_id),
    FOREIGN KEY (nurse_id) REFERENCES Nurses(employee_id),
	FOREIGN KEY (physician_id) REFERENCES Physicians(employee_id));
    
create table Patients(name text, patient_id int, phone_num bigint, address text,
	PRIMARY KEY(patient_id));
    
create table Monitor(monitor_id int, physician_id int, duration int, patient_id int,
	PRIMARY KEY(monitor_id),
    FOREIGN KEY (physician_id) REFERENCES Physicians(employee_id),
	FOREIGN KEY (patient_id) REFERENCES Patients(patient_id));
    
create table Medication(medication_id int, nurse_id int, date text, type text, amount int, patient_id int,
	PRIMARY KEY(medication_id),
    FOREIGN KEY (nurse_id) REFERENCES Nurses(employee_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id));

create table Room(room_id int, capacity int, fee int,
	PRIMARY KEY(room_id));

create table RoomInfo(nights_to_stay int, check_in text, check_out text, room_id int, patient_id int,
	FOREIGN KEY (room_id) REFERENCES Room(room_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id));

create table Instructions(physician_id int, unique_code int, description text, fee int, patient_id int,
	PRIMARY KEY(unique_code),
    FOREIGN KEY (physician_id) REFERENCES Physicians(employee_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id));

create table Health_Records(patient_id int, unique_id int, details text, diagnosis_dates text, status text, health_conditions text,
	PRIMARY KEY(unique_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id));

create table Invoice(start_date text, end_date text, issue_date text, account_num int, payables int, patient_id int,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id));

create table Payables(account_num int, unique_id int, date text, amount int, description text, payable_type text,
	PRIMARY KEY(unique_id));

create table Payments(amount int, date text, patient_id int,
	FOREIGN KEY (patient_id) REFERENCES Patients(patient_id));

