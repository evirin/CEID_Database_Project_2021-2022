DROP PROCEDURE IF EXISTS Proc2;
DELIMITER $$
CREATE PROCEDURE Proc2
(
	IN email VARCHAR(50), 
	IN Hmerominia DATE
)
BEGIN
	SELECT COUNT (rental_id) AS Enoikiaseis
	FROM rental
	INNER JOIN customer ON rental.customer_id = customer.customer_id
	-- Koitaei to customer.email na einai idio me to email pou dinoume
	WHERE customer.email = email
	-- Koitaei to rental_date na einai idio me tin hmerominia pou dinoume
	and DATE(rental.rental_date) LIKE Hmerominia;
END$$
DELIMITER ;