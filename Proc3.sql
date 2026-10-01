DROP PROCEDURE IF EXISTS Proc3;
delimiter %%
create procedure Proc3
begin
	-- counter = metraei tous mhnes apo ton 1o ews ton 12o
    declare counter int;
    declare film_count_both int;
    declare film_count int;
    declare series_count_both int;
	declare series_count int;
    declare earnings float;
    set counter = 0;
    
    while counter <= 12 do            
		-- film_count = to noumero twn atomwn pou exoun enikiasei tainies, kai plhrwnoun 0.4 € ana tainia
        set film_count = (
			SELECT count(film.film_id) as Films FROM film
			INNER JOIN inventory ON film.film_id=inventory.film_id
			INNER JOIN rental ON inventory.inventory_id=rental.inventory_id
			WHERE rental.rental_date LIKE counter
		);           
        -- series_count = to noumero twn atomwn pou exoun enikiasei seires, kai plhrwnoun 0.2 € ana epeisodio seiras  
        set series_count = (
        SELECT count(series_id) from series
			WHERE series.series_id IN (
				SELECT series.series_id AS Series FROM series
				INNER JOIN inventory ON series.series_id = inventory.series_id
				INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
				WHERE rental.rental_date LIKE counter
		); 
		-- film_count_both = to noumero twn atomwn pou exoun enikiasei tainies, kai plhrwnoun 0.3 € ana tainia
		set film_count_both = (
			SELECT count(film.film_id) as Number_of_films FROM film
			INNER JOIN inventory ON film.film_id=inventory.film_id
			INNER JOIN rental ON inventory.inventory_id=rental.inventory_id
			WHERE month(rental.rental_date) LIKE counter
		);
		-- series_count_both = to noumero twn atomwn pou exoun enikiasei seires, kai plhrwnoun 0.1 € ana epeisodio seiras
        set series_count_both = (
			SELECT count(series.series_id) AS Number_of_series FROM series
				INNER JOIN inventory ON series.series_id = inventory.series_id
				INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
				WHERE month(rental.rental_date) LIKE counter
		);     
		set earnings = film_count_both * 0.3 + film_count * 0.4 + series_count * 0.1 + series_count_both * 0.2;
        -- emfanizw ta apotelesmata se mhnes
        IF (counter = 0) THEN
			select earnings as January_Earnings;
		ELSE IF (counter = 1) THEN
			select earnings as February_Earnings;
		ELSE IF (counter = 2) THEN
			select earnings as March_Earnings;
		ELSE IF (counter = 3) THEN
			select earnings as April_Earnings;
		ELSE IF (counter = 4) THEN
			select earnings as May_Earnings;
		ELSE IF (counter = 5) THEN
			select earnings as June_Earnings;
		ELSE IF (counter = 6) THEN
			select earnings as July_Earnings;
		ELSE IF (counter = 7) THEN
			select earnings as August_Earnings;
		ELSE IF (counter = 8) THEN
			select earnings as September_Earnings;
		ELSE IF (counter = 9) THEN
			select earnings as October_Earnings;
		ELSE IF (counter = 10) THEN
			select earnings as November_Earnings;
		ELSE IF (counter = 11) THEN
			select earnings as December_Earnings;
        END IF;
        set counter = counter +1;
    end while;  
end$$
DELIMITER ;