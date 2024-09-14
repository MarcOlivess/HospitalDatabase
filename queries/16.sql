-- Total Medications Administered by Each Nurse
SELECT 
    e.name AS nurse_name,
    COUNT(m.medication_id) AS total_medications_administered
FROM 
    Employees e
JOIN 
    Medication m ON e.employee_id = m.nurse_id
GROUP BY 
    e.name;