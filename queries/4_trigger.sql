DELIMITER //
-- here, is a trigger for adding a patient into a room
-- after they are added, it checks for a room not at capacity, and adds them into it
CREATE TRIGGER assign_room_after_insert
AFTER INSERT ON Patients
FOR EACH ROW
BEGIN
    DECLARE available_room_id INT;
    
    -- Find an available room with capacity
    SELECT room_id
    INTO available_room_id
    FROM Room r
    WHERE (
        SELECT COUNT(*)
        FROM RoomInfo ri
        WHERE ri.room_id = r.room_id
    ) < r.capacity
    LIMIT 1;

    -- Insert the patient's room info
    IF available_room_id IS NOT NULL THEN
        INSERT INTO RoomInfo (nights_to_stay, check_in, check_out, room_id, patient_id)
        VALUES (1, '2024-07-27', '2024-07-28', available_room_id, NEW.patient_id);
    END IF;
END //

DELIMITER ;