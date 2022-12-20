USE
classicmodels;

DELIMITER
//
CREATE PROCEDURE get_customer_by_id(IN customer_id INT (11))
BEGIN
SELECT *
FROM customers
WHERE customerNumber = customer_id;
END
//
DELIMITER ;

CALL get_customer_by_id(175);

DELIMITER
//
CREATE PROCEDURE GetCustomersCountByCity(
    IN in_city VARCHAR (50),
    OUT total INT
)
BEGIN
SELECT COUNT(customerNumber)
INTO total
FROM customers
WHERE city = in_city;
END
//
DELIMITER ;

CALL GetCustomersCountByCity('Lyon',@total);

SELECT @total;

DELIMITER
//
CREATE PROCEDURE SetCounter(
    INOUT counter INT,
    IN inc INT
)
BEGIN
    SET
counter = counter + inc;
END
//
DELIMITER ;

SET
@counter = 1;

CALL SetCounter(@counter,1); -- 2

CALL SetCounter(@counter,1); -- 3

CALL SetCounter(@counter,5); -- 8

SELECT @counter; -- 8
