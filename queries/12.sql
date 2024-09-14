SELECT 
    e.name AS physician_name,
    p.expertise,
    m.patient_id,
    m.monitor_id,
    m.duration
FROM 
    Employees e
JOIN 
    Physicians p ON e.employee_id = p.employee_id
JOIN 
    Monitor m ON p.employee_id = m.physician_id;