CREATE VIEW PatientRoomAssignment AS
SELECT 
    p.patient_id,
    p.name AS patient_name,
    p.phone_num AS patient_phone,
    p.address AS patient_address,
    ri.room_id,
    r.capacity AS room_capacity,
    r.fee AS room_fee,
    ri.nights_to_stay,
    ri.check_in,
    ri.check_out
FROM 
    Patients p
JOIN 
    RoomInfo ri ON p.patient_id = ri.patient_id
JOIN 
    Room r ON ri.room_id = r.room_id;