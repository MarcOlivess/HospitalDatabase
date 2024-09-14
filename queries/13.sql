SELECT 
    name
FROM 
    Patients
WHERE 
    patient_id IN (
        SELECT 
            patient_id
        FROM 
            Medication
        GROUP BY 
            patient_id
        HAVING 
            COUNT(DISTINCT type) > 1
    );