DROP PROCEDURE IF EXISTS Proc4b;
DELIMITER %%
CREATE PROCEDURE Proc4b
(	
	IN last_name VARCHAR(45)
)
BEGIN

	declare count_actors int;
    -- check if there are more than 1 results
    set count_actors = (select count(*) from actor where actor.last_name = last_name);
	IF (count_actors > 1) THEN
		select count_actors as plhthos;
	END IF;
	select  `actor_id`, `first_name`, `last_name` from actor
	where actor.last_name = last_name;
END%%
DELIMITER ;