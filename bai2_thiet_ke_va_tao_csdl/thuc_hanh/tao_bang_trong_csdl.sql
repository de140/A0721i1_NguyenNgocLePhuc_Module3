-- Tạo database
create database quan_ly_diem_thi;
use quan_ly_diem_thi;

-- Tạo bảng học sinh
CREATE TABLE hoc_sinh (
    ma_hs VARCHAR(20) NOT NULL PRIMARY KEY,
    ten_hs VARCHAR(50) NOT NULL,
    ngay_sinh DATETIME,
    lop VARCHAR(20),
    gt VARCHAR(20)
);
-- Tạo bảng giáo viên
CREATE TABLE giao_vien (
    ma_gv VARCHAR(20) PRIMARY KEY,
    ten_gv VARCHAR(50) NOT NULL,
    phone VARCHAR(10)
);

-- Tạo bảng môn học
CREATE TABLE mon_hoc (
    ma_mh VARCHAR(20) NOT NULL PRIMARY KEY,
    ten_mh VARCHAR(50),
    ma_gv varchar(20),
    FOREIGN KEY (ma_gv) 
		REFERENCES giao_vien(ma_gv)
);

-- Tạo bảng bảng điểm
CREATE TABLE bang_diem (
    ma_hs VARCHAR(20) NOT NULL,
    ma_mh VARCHAR(20) NOT NULL,
    diem_thi INT,
    ngay_kt DATETIME,
    FOREIGN KEY (ma_hs)
        REFERENCES hoc_sinh (ma_hs),
    FOREIGN KEY (ma_mh)
        REFERENCES mon_hoc (ma_mh)
);
