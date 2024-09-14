-- this is a trigger that can be used to update an order to a complete status after the alter
-- the execution of a Medication dosage is given

DELIMITER //

CREATE TRIGGER update_order_status_after_medication
AFTER INSERT ON Medication
FOR EACH ROW
BEGIN
    UPDATE Orders
    SET status = 'completed'
    WHERE order_id = NEW.nurse_id;
END //

DELIMITER ;