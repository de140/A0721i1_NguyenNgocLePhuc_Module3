-- Tạo database
create database student_management;

-- Tạo table
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    country VARCHAR(45)
);