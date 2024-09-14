CREATE VIEW EmployeeActions AS
SELECT
    e.name AS employee_name,
    'Order' AS action_type,
    o.order_id AS action_id,
    o.status AS action_status,
    o.record_info AS action_details
FROM
    Employees e
JOIN
    Orders o ON e.employee_id = o.nurse_id OR e.employee_id = o.physician_id

UNION ALL

SELECT
    e.name AS employee_name,
    'Monitor' AS action_type,
    m.monitor_id AS action_id,
    NULL AS action_status,
    CONCAT('Duration: ', m.duration, ', Patient ID: ', m.patient_id) AS action_details
FROM
    Employees e
JOIN
    Monitor m ON e.employee_id = m.physician_id

UNION ALL

SELECT
    e.name AS employee_name,
    'Medication' AS action_type,
    m.medication_id AS action_id,
    NULL AS action_status,
    CONCAT('Type: ', m.type, ', Amount: ', m.amount, ', Patient ID: ', m.patient_id) AS action_details
FROM
    Employees e
JOIN
    Medication m ON e.employee_id = m.nurse_id

UNION ALL

SELECT
    e.name AS employee_name,
    'Instruction' AS action_type,
    i.unique_code AS action_id,
    NULL AS action_status,
    CONCAT('Description: ', i.description, ', Fee: ', i.fee, ', Patient ID: ', i.patient_id) AS action_details
FROM
    Employees e
JOIN
    Instructions i ON e.employee_id = i.physician_id;