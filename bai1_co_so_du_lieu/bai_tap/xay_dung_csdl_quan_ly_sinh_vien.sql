-- Tạo database
create database student_management;

-- Tạo table student
CREATE TABLE student (
    student_id INT  AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    country VARCHAR(45)
);

-- Tạo table class
create table class(
id int auto_increment primary key,
class_name varchar(45) not null
);

-- Tạo table teacher
create table teacher(
id int auto_increment primary key,
teacher_name varchar(45) not null,
age int not null,
country varchar(45)
);
