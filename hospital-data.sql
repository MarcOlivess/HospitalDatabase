
INSERT INTO Employees (employee_id, address, name, phone_num) VALUES 
(001, '123 Main St', 'Alice Smith', 1234567890),
(002, '456 Elm St', 'Bob Johnson', 2345678901),
(003, '789 Maple St', 'Carol White', 3456789012),
(004, '321 Oak St', 'Angela Ziegler', 4567890123),
(005, '654 Pine St', 'Eve Davis', 5678901234),
(101, '141 Birch St', 'Nadia Graber', 6789012345),
(102, '654 Spruce St', 'Marc Olvera', 7890123456),
(103, '512 Acacia St', 'Light Yagami', 8901234567),
(104, '712 Azalea St', 'L Lawlit', 9012345678),
(105, '82 Cherry St', 'Akane Osaki', 0123456789);

INSERT INTO Physicians (employee_id, expertise) VALUES 
(001, 'Cardiology'),
(002, 'Neurology'),
(003, 'Pediatrics'),
(004, 'Oncology'),
(005, 'Orthopedics');

INSERT INTO Nurses (employee_id) VALUES 
(101),
(102),
(103),
(104),
(105);

INSERT INTO Orders (order_id, nurse_id, physician_id, status, record_info) VALUES 
(10001, 101, 001, 'Completed', 'Patient stable'),
(10002, 102, 001, 'Pending', 'Awaiting test results'),
(10003, 103, 002, 'In Progress', 'Administered medication'),
(10004, 104, 002, 'Completed', 'Medication given'),
(10005, 105, 004, 'Cancelled', 'Patient discharged');

INSERT INTO Patients (name, patient_id, phone_num, address) VALUES 
('John Doe', 201, 9876543210, '111 Cobble St'),
('Jane Roe', 202, 8765432109, '222 Granate St'),
('Jim Poe', 203, 7654321098, '333 Wood St'),
('Jill Moe', 204, 6543210987, '444 Grass St'),
('Jack Noe', 205, 5432109876, '555 Stone St');

INSERT INTO Monitor (monitor_id, physician_id, duration, patient_id) VALUES 
(1001, 001, 30, 201),
(1002, 001, 45, 202),
(1003, 003, 20, 203),
(1004, 004, 60, 203),
(1005, 005, 15, 205);

INSERT INTO Medication (medication_id, nurse_id, date, type, amount, patient_id) VALUES 
(901, 102, '2024-07-25', 'Painkiller', 100, 201),
(902, 103, '2024-07-26', 'Antibiotic', 200, 201),
(903, 104, '2024-07-27', 'Vitamin', 300, 203),
(904, 105, '2024-07-28', 'Sedative', 150, 202),
(905, 101, '2024-07-29', 'Antidepressant', 250, 205);

INSERT INTO Room (room_id, capacity, fee) VALUES 
(301, 1, 500),
(302, 2, 700),
(303, 1, 600),
(304, 3, 900),
(305, 2, 800);

INSERT INTO RoomInfo (nights_to_stay, check_in, check_out, room_id, patient_id) VALUES 
(3, '2024-07-25', '2024-07-28', 301, 201),
(2, '2024-07-26', '2024-07-28', 302, 202),
(4, '2024-07-27', '2024-07-31', 302, 203),
(1, '2024-07-28', '2024-07-29', 304, 204),
(5, '2024-07-29', '2024-08-03', 305, 205);

INSERT INTO Instructions (physician_id, unique_code, description, fee, patient_id) VALUES 
(001, 11111, 'Take medication twice daily', 50, 201),
(002, 11112, 'Bed rest for one week', 100, 202),
(002, 11113, 'Physical therapy', 75, 203),
(003, 11114, 'Dietary restrictions', 60, 204),
(005, 11115, 'Follow-up in two weeks', 80, 205);

INSERT INTO Health_Records (patient_id, unique_id, details, diagnosis_dates, status, health_conditions) VALUES 
(201, 2001, 'Patient recovering well', '2024-07-20', 'Ongoing', 'Hypertension'),
(202, 2002, 'Patient stable', '2024-07-21', 'Stable', 'Diabetes'),
(203, 2003, 'Patient showing improvement', '2024-07-22', 'Improving', 'Asthma'),
(204, 2004, 'Patient requires surgery', '2024-07-23', 'Critical', 'Heart Disease'),
(205, 2005, 'Patient discharged', '2024-07-24', 'Discharged', 'Fracture');

INSERT INTO Invoice (start_date, end_date, issue_date, account_num, payables, patient_id) VALUES 
('2024-07-01', '2024-07-10', '2024-07-11', 3001, 3000, 201),
('2024-07-11', '2024-07-20', '2024-07-21', 3002, 600, 201),
('2024-07-21', '2024-07-30', '2024-07-31', 3003, 2500, 202),
('2024-07-01', '2024-07-10', '2024-07-11', 3004, 1000, 203),
('2024-07-11', '2024-07-20', '2024-07-21', 3005, 1800, 205);

INSERT INTO Payables (account_num, unique_id, date, amount, description, payable_type) VALUES 
(3001, 4001, '2024-07-12', 1500, 'Room charges', 'Hospital'),
(3002, 4002, '2024-07-22', 1500, 'Medication', 'Pharmacy'),
(3003, 4003, '2024-08-01', 700, 'Surgery', 'Hospital'),
(3004, 4004, '2024-07-13', 400, 'Consultation', 'Doctor'),
(3005, 4005, '2024-07-23', 800, 'Therapy', 'Hospital');

INSERT INTO Payments(amount, date , patient_id) VALUES
(1000, '2024-07-12', 201),
(400, '2024-07-18', 201),
(500, '2024-07-16', 202),
(500, '2024-07-23', 202),
(1000, '2024-07-22', 205);

