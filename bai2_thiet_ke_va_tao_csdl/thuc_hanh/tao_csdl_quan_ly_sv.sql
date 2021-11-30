-- Tạo csdl quản lý sinh viên
create database student_management;
use student_management;

-- Tạo bảng lớp
CREATE TABLE class (
    class_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(60) NOT NULL,
    start_date DATETIME,
    `status` BIT
);

-- Tạo bảng sinh viên
CREATE TABLE student (
    student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(30) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(20),
    `status` BIT,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id)
        REFERENCES class (class_id)
);

-- Tạo bảng môn học
CREATE TABLE `Subject` (
    sub_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sub_Name VARCHAR(30) NOT NULL,
    credit TINYINT NOT NULL DEFAULT 1 CHECK (credit >= 1),
    Status BIT DEFAULT 1
);

-- Tạo bảng điểm
CREATE TABLE mark (
    mark_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sub_id INT NOT NULL,
    student_id INT NOT NULL,
    mark FLOAT DEFAULT 0 CHECK (mark BETWEEN 0 AND 100),
    exam_times TINYINT DEFAULT 1,
    UNIQUE (sub_id , student_id),
    FOREIGN KEY (sub_id)
        REFERENCES Subject (sub_id),
    FOREIGN KEY (student_id)
        REFERENCES student (student_id)
);