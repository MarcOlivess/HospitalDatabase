-- here we look for the names of all the patients in the room 302, good for checking whats full or not
SELECT 
    COUNT(p.patient_id) AS total_patients,
    GROUP_CONCAT(p.name) AS patient_names
FROM 
    Patients p
JOIN 
    RoomInfo r ON p.patient_id = r.patient_id
WHERE 
    r.room_id = 302;