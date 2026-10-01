DELIMITER $$
CREATE PROCEDURE `Proc1` ()
BEGIN
DROP PROCEDURE IF EXISTS Proc1;

CREATE PROCEDURE Proc1
(
	IN charactiras char(1),
	IN arithmos INT,
	IN begin_date DATE,
	IN end_date DATE
)
BEGIN

	IF (charactiras LIKE 'm') 
		THEN
			-- metraw plithos tainiwn kai metaonomazw
			SELECT COUNT(*) AS PLITHOS1,
			film.film_id AS TAINIA, 
			film.title AS TITLOS1
    		FROM rental
				INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
    			INNER JOIN film ON inventory.film_id = film.film_id
  	   			WHERE rental.rental_date BETWEEN begin_date AND end_date
   				GROUP BY film.title
   	 			ORDER BY Number DESC
    			LIMIT 0, arithmos;
    			-- metraw plithos seirwn kai metaonomazw
		ELSE SELECT COUNT(*) AS PLITHOS2, 
			series.series_id AS SEIRA,
			series.title AS TITLOS2
 	    	FROM rental
				INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
  	   	 		INNER JOIN series ON inventory.series_id = series.series_id
    			WHERE rental.rental_date BETWEEN begin_date AND end_date
    			GROUP BY series.title
  	  	 		ORDER BY Number DESC
  	   			LIMIT 0, arithmos;
  		END IF;
END%%
DELIMITER ;
END