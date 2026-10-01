ROP PROCEDURE IF EXISTS Proc4a;
DELIMITER %%
CREATE PROCEDURE Proc4a
(	
	IN first_last_name VARCHAR(45),
    IN end_last_name VARCHAR(45)
)
BEGIN
    SELECT count(`actor_id`) FROM actor 
	WHERE last_name between first_last_name and end_last_name;
    
    SELECT `first_name`, `last_name` FROM actor 
	WHERE last_name between concat(first_last_name, '%') and concat( end_last_name, '%')
	ORDER BY last_name ASC;
END%%
DELIMITER ;