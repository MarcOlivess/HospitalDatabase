SELECT 
    p.name
FROM 
    Patients p
JOIN 
    RoomInfo ri ON p.patient_id = ri.patient_id
WHERE 
    ri.room_id = (
        SELECT 
            room_id
        FROM 
            Room
        ORDER BY 
            capacity DESC
        LIMIT 1
    );