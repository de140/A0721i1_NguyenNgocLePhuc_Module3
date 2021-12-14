-- Tham số in
DELIMITER //
CREATE PROCEDURE getCusById
(IN cusNum INT(11))
BEGIN
  SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;
call getCusById(175);
-- Tham số out
DELIMITER //
CREATE PROCEDURE GetCustomersCountByCity(
    IN  in_city VARCHAR(50),
    OUT total INT
)
BEGIN
    SELECT COUNT(customerNumber)
    INTO total
    FROM customers
    WHERE city = in_city;
END//
DELIMITER ;
-- Cách gọi của tham số out
CALL GetCustomersCountByCity('Lyon',@total);
SELECT @total; -- @total giống như tên biến
-- Gọi ra
SET @counter = 1;
CALL SetCounter(@counter,1); 
CALL SetCounter(@counter,1); 
CALL SetCounter(@counter,5); 
SELECT @counter; 