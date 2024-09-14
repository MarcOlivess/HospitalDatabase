-- Here we find the total payable for John Doe, can be applied for any patient
SELECT 
    SUM(i.payables) AS total_payables
FROM 
    Patients p
JOIN 
    Invoice i ON p.patient_id = i.patient_id
WHERE 
    p.name = 'John Doe';