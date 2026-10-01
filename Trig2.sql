DROP PROCEDURE IF EXISTS  ProcedureEkptwsi;
DELIMITER $$
CREATE PROCEDURE  ProcedureEkptwsi
(
	IN Username VARCHAR(25),
	IN Hmerominia DATE
)
BEGIN
	SELECT COUNT (rental_id) AS Enoikiaseis
	FROM rental 
	INNER JOIN customer ON rental.customer_id=customer.customer_id
	WHERE rental.rental_date=CURRENT_TIMESTAMP
	GROUP BY customer.email;
IF Enoikiaseis>=3 THEN
	SELECT amount FROM rental INNER JOIN payment
	ON rental.rental_id=payment.rental_id;
    UPDATE payment.amount SET payment.amount=payment.default_price/2;
ELSE 
	SELECT updated_amount FROM rental INNER JOIN payment
    ON rental.rental_id=payment.rental_id;
    UPDATE payment.amount SET payment.amount=payment.default_price;
END IF;
END;
END$$

DELIMITER #
CREATE TRIGGER EKPTWSH
BEFORE UPDATE ON rental FOR EACH ROW

BEGIN
    CALL ProcedureEkptwsi;
END;
END#
DELIMITER ;