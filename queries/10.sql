SELECT 
    p.name AS patient_name,
    p.patient_id,
    m.medication_id,
    m.date AS medication_date,
    m.type AS medication_type,
    m.amount AS medication_amount
FROM 
    Patients p
JOIN 
    Medication m ON p.patient_id = m.patient_id;