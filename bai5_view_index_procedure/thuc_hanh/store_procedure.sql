-- Tạo procedure
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
  SELECT * FROM customers;
END //
DELIMITER ;
-- Gọi procedure ra
call findAllCustomers();

-- Sửa procedure
DELIMITER //
-- Xóa đi tạo lại vì không có lệnh sửa
DROP PROCEDURE IF EXISTS `findAllCustomers`//
CREATE PROCEDURE findAllCustomers()
BEGIN
SELECT * FROM customers where customerNumber = 175;
END //