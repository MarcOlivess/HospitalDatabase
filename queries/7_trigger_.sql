DELIMITER //

-- Here, when a new patient is added, a health record is added if they do not have one yet
-- which is possible as given by the promt

CREATE TRIGGER create_health_record_after_patient_insert
AFTER INSERT ON Patients
FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Health_Records WHERE patient_id = NEW.patient_id) THEN
        INSERT INTO Health_Records (patient_id, unique_id, details, diagnosis_dates, status, health_conditions)
        VALUES (NEW.patient_id, NULL, 'No details available', NULL, 'New', 'No conditions');
    END IF;
END //

DELIMITER ;