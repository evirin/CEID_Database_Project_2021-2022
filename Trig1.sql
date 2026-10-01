CREATE TRIGGER enimerwsi4
BEFORE INSERT ON rental
FOR EACH ROW 
BEGIN 
INSERT INTO log(action, table) VALUES('insert', 'rental');
END//
--
CREATE TRIGGER enimerwsi5
BEFORE UPDATE ON rental
FOR EACH ROW 
BEGIN 
INSERT INTO log(action, table) VALUES('update', 'rental') ;
END//
--
CREATE TRIGGER enimerwsi6
BEFORE DELETE ON rental
FOR EACH ROW
BEGIN
INSERT INTO log(action, table) VALUES('delete', 'rental');
END//
--
-- inventory
--
CREATE TRIGGER enimerwsi7
BEFORE INSERT ON inventory
FOR EACH ROW 
BEGIN 
INSERT INTO log(action, table) VALUES('insert', 'inventory');
END//
--
CREATE TRIGGER enimerwsi8
BEFORE UPDATE ON inventory
FOR EACH ROW 
BEGIN 
INSERT INTO log(action, table) VALUES('update', 'inventory') ;
END//
--
CREATE TRIGGER enimerwsi9
BEFORE DELETE ON inventory
FOR EACH ROW
BEGIN
INSERT INTO log(action, table) VALUES('delete', 'inventory');
END//
--
-- payment
--
CREATE TRIGGER enimerwsi10
BEFORE INSERT ON payment
FOR EACH ROW 
BEGIN 
INSERT INTO log(action, table) VALUES('insert', 'payment');
END//
--
CREATE TRIGGER enimerwsi11
BEFORE UPDATE ON payment
FOR EACH ROW 
BEGIN 
INSERT INTO log(action, forTable) VALUES('update', 'payment') ;
END//
--
CREATE TRIGGER enimerwsi12
BEFORE DELETE ON payment
FOR EACH ROW
BEGIN
INSERT INTO log(action, forTable) VALUES('delete', 'payment');
END//

delimiter ;