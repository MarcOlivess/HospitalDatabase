-- here we check for medications given and instructions given to any one patient. 
SELECT 
    p.name,
    m.medication_id,
    m.date AS medication_date,
    m.type AS medication_type,
    m.amount AS medication_amount_units,
    i.unique_code AS instruction_code,
    i.description AS instruction_description,
    i.fee AS instruction_fee
FROM 
    Patients p
LEFT JOIN 
    Medication m ON p.patient_id = m.patient_id
LEFT JOIN 
    Instructions i ON p.patient_id = i.patient_id
WHERE 
    p.name = 'John Doe';