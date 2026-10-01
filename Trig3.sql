DELIMITER $$
CREATE TRIGGER DENIED
BEFORE UPDATE
ON customer FOR EACH ROW 
BEGIN 
    IF (old.`customer_id` <> new.`customer_id`) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'customer_id cannot change';
    ELSEIF (old.`first_name` <> new.`first_name`) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A customers first name cant change';
    ELSEIF (old.`last_name` <> new.`last_name`) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A customers last name cant change';
    ELSEIF (old.`create_date` <> new.`create_date`) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A customers created date cant change';
    END IF;
END$$
DELIMITER ;