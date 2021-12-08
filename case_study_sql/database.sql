create database case_study_sql;
use case_study_sql;
-- drop database case_study_sql;

-- Tạo csdl
CREATE TABLE vi_tri (
    ma_vi_tri INT AUTO_INCREMENT PRIMARY KEY,
    ten_vi_tri VARCHAR(45) NOT NULL
);

CREATE TABLE trinh_do (
    ma_trinh_do INT AUTO_INCREMENT PRIMARY KEY,
    ten_trinh_do VARCHAR(45) NOT NULL
);

CREATE TABLE bo_phan (
    ma_bo_phan INT AUTO_INCREMENT PRIMARY KEY,
    ten_bo_phan VARCHAR(45) NOT NULL
);

CREATE TABLE nhan_vien (
    ma_nhan_vien INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    so_cmnd VARCHAR(45) NOT NULL,
    luong DOUBLE NOT NULL,
    so_dien_thoai VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    ma_vi_tri INT NOT NULL,
    ma_trinh_do INT NOT NULL,
    ma_bo_phan INT NOT NULL,
    FOREIGN KEY (ma_vi_tri) 
		REFERENCES vi_tri(ma_vi_tri),
    FOREIGN KEY (ma_trinh_do) 
		REFERENCES trinh_do(ma_trinh_do),
    FOREIGN KEY (ma_bo_phan) 
		REFERENCES bo_phan(ma_bo_phan)
);

CREATE TABLE loai_khach (
    ma_loai_khach INT AUTO_INCREMENT PRIMARY KEY,
    ten_loai_khach VARCHAR(45) NOT NULL
);

CREATE TABLE khach_hang (
    ma_khach_hang INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    gioi_tinh BIT(1) NOT NULL,
    so_cmnd VARCHAR(45) NOT NULL,
    so_dien_thoai VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    dia_Chi VARCHAR(45),
    ma_loai_khach INT NOT NULL,
    FOREIGN KEY (ma_loai_khach) 
		REFERENCES loai_khach(ma_loai_khach)
);
CREATE TABLE kieu_thue (
    ma_kieu_thue INT AUTO_INCREMENT PRIMARY KEY,
    ten_kieu_thue VARCHAR(45) NOT NULL
);
CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT AUTO_INCREMENT PRIMARY KEY,
    ten_loai_dich_vu VARCHAR(45) NOT NULL
);
CREATE TABLE dich_vu (
    ma_dich_vu INT AUTO_INCREMENT PRIMARY KEY,
    ten_dich_vu VARCHAR(45) NOT NULL,
    dien_tich INT,
    chi_phi_thue DOUBLE NOT NULL,
    so_nguoi_toi_da INT,
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khac VARCHAR(45),
    dien_tich_ho_boi DOUBLE,
    so_tang INT,
    ma_kieu_thue INT NOT NULL,
    ma_loai_dich_vu INT NOT NULL,
    FOREIGN KEY (ma_kieu_thue) 
		REFERENCES kieu_thue(ma_kieu_thue),
	FOREIGN KEY (ma_loai_dich_vu)
		REFERENCES loai_dich_vu(ma_loai_dich_vu)
);
CREATE TABLE dich_vu_di_kem (
    ma_dich_vu_di_kem INT AUTO_INCREMENT PRIMARY KEY,
    ten_dich_vu_di_kem VARCHAR(45) NOT NULL,
    gia DOUBLE NOT NULL,
    don_vi VARCHAR(10) NOT NULL,
    trang_thai VARCHAR(45)
);
CREATE TABLE hop_dong (
    ma_hop_dong INT AUTO_INCREMENT PRIMARY KEY,
    ngay_lam_hop_dong DATETIME NOT NULL,
    ngay_ket_thuc DATETIME NOT NULL,
    tien_dat_coc DOUBLE NOT NULL,
    ma_nhan_vien INT NOT NULL,
    ma_khach_hang INT NOT NULL,
    ma_dich_vu INT NOT NULL,
    FOREIGN KEY (ma_nhan_vien) 
		REFERENCES nhan_vien(ma_nhan_vien),
    FOREIGN KEY (ma_khach_hang)
		REFERENCES khach_hang(ma_khach_hang),
	FOREIGN KEY (ma_dich_vu) 
		REFERENCES dich_vu(ma_dich_vu)
);
CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT AUTO_INCREMENT PRIMARY KEY,
    so_luong INT NOT NULL,
    ma_hop_dong INT NOT NULL,
    ma_dich_vu_di_kem INT NOT NULL,
    FOREIGN KEY (ma_hop_dong) 
		REFERENCES hop_dong(ma_hop_dong),
	FOREIGN KEY (ma_dich_vu_di_kem)
		REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem)
);

-- 1.	Thêm mới thông tin cho tất cả các bảng có trong CSDL để có thể thoả mãn các yêu cầu bên dưới.
insert into vi_tri(ten_vi_tri) values
('Quản lý'),
('Nhân viên');

insert into trinh_do(ten_trinh_do) values
('Trung cấp'),
('Cao đẳng'),
('Đại học'),
('Sau đại học');

insert into bo_phan(ten_bo_phan) values
('Sale-Marketing'),
('Hành chính'),
('Phục vụ'),
('Quản lý');

insert into nhan_vien(ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan) values
('Nguyễn Văn An','1970-11-07','456231786',10000000,'0901234121','annguyen@gmail.com','295 Nguyễn Tất Thành, Đà Nẵng',1,3,1),
('Lê Văn Bình','1997-04-09','654231234',7000000,'0934212314','binhlv@gmail.com','22 Yên Bái, Đà Nẵng',1,2,2),
('Hồ Thị Yến','1995-12-12','999231723',14000000,'0412352315','thiyen@gmail.com','K234/11 Điện Biên Phủ, Gia Lai',1,3,2),
('Võ Công Toản','1980-04-04','123231365',17000000,'0374443232','toan0404@gmail.com','77 Hoàng Diệu, Quảng Trị',1,4,4),
('Nguyễn Bỉnh Phát','1999-12-09','454363232',6000000,'0902341231','phatphat@gmail.com','43 Yên Bái, Đà Nẵng',2,1,1),
('Khúc Nguyễn An Nghi','2000-11-08','964542311',7000000,'0978653213','annghi20@gmail.com','294 Nguyễn Tất Thành, Đà Nẵng',2,2,3),
('Nguyễn Hữu Hà','1993-01-01','534323231',8000000,'0941234553','nhh0101@gmail.com','4 Nguyễn Chí Thanh, Huế',2,3,2),
('Nguyễn Hà Đông','1989-09-03','234414123',7000000,'0642123111','donghanguyen@gmail.com','111 Hùng Vương, Hà Nội',2,2,4),
('Tòng Hoang','1982-09-03','256781231',6000000,'0245144444','hoangtong@gmail.com','213 Hàm Nghi, Đà Nẵng',2,4,4),
('Nguyễn Công Đạo','1994-01-08','755434343',8000000,'0988767111','nguyencongdao12@gmail.com','6 Hoà Khánh, Đồng Nai',2,3,2);

insert into loai_khach(ten_loai_khach) values
('Diamond'),
('Platinium'),
('Gold'),
('Silver'),
('Member');

insert into khach_hang(ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach) values
('Nguyễn Thị Hào','1970-11-07',0,'643431213','0945423362','thihao07@gmail.com','23 Nguyễn Hoàng, Đà Nẵng',5),
('Phạm Xuân Diệu','1992-08-08',1,'865342123','0954333333','xuandieu92@gmail.com','K77/22 Thái Phiên, Quảng Trị',3),
('Trương Đình Nghệ','1990-02-27',1,'488645199','0373213122','nghenhan2702@gmail.com','K323/12 Ông Ích Khiêm, Vinh',1),
('Dương Văn Quan','1981-07-08',1,'543432111','0490039241','duongquan@gmail.com','K453/12 Lê Lợi, Đà Nẵng',1),
('Hoàng Trần Nhi Nhi','1995-12-09',0,'795453345','0312345678','nhinhi123@gmail.com','224 Lý Thái Tổ, Gia Lai',4),
('Tôn Nữ Mộc Châu','2005-12-06',0,'732434215','0988888844','tonnuchau@gmail.com','37 Yên Thế, Đà Nẵng',4),
('Nguyễn Mỹ Kim','1984-04-08',0,'856453123','0912345698','kimcuong84@gmail.com','K123/45 Lê Lợi, Hồ Chí Minh',1),
('Nguyễn Thị Hào','1999-04-08',0,'965656433','0763212345','haohao99@gmail.com','55 Nguyễn Văn Linh, Kon Tum',3),
('Trần Đại Danh','1994-07-01',1,'432341235','0643343433','danhhai99@gmail.com','24 Lý Thường Kiệt, Quảng Ngãi',1),
('Nguyễn Tâm Đắc','1989-07-01',1,'344343432','0987654321','dactam@gmail.com','22 Ngô Quyền, Đà Nẵng',2);

insert into kieu_thue(ten_kieu_thue) values
('year'),
('month'),
('day'),
('hour');

insert into loai_dich_vu(ten_loai_dich_vu) values
('Villa'),
('House'),
('Room');

insert into dich_vu(ten_dich_vu, dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,ma_kieu_thue,ma_loai_dich_vu) values
('Villa Beach Front',25000,10000000,10,'vip','Có hồ bơi',500,4,3,1),
('House Princess 01',14000,5000000,7,'vip','Có thêm bếp nướng',null,3,2,2),
('Room Twin 01',5000,1000000,2,'normal','Có tivi',null,null,4,3),
('Villa No Beach Front',22000,9000000,8,'normal','Có hồ bơi',300,3,3,1),
('House Princess 02',10000,4000000,5,'normal','Có thêm bếp nướng',null,2,3,2),
('Room Twin 02',3000,90000,2,'normal','Có tivi',null,null,4,3);

insert into dich_vu_di_kem(ten_dich_vu_di_kem,gia,don_vi,trang_thai) values
('Karaoke',10000,'giờ','tiện nghi, hiện đại'),
('Thuê xe máy',10000,'chiếc','hỏng 1 xe'),
('Thuê xe đạp',20000,'chiếc','tốt'),
('Buffet buổi sáng',15000,'suất','đầy đủ đồ ăn, tráng miệng'),
('Buffet buổi trưa',90000,'suất','đầy đủ đồ ăn, tráng miệng'),
('Buffet buổi tối',16000,'suất','đầy đủ đồ ăn, tráng miệng');

insert into hop_dong(ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu) values
('2020-12-08','2020-12-08',0,3,1,3),
('2020-07-14','2020-07-21',200000,7,3,1),
('2021-03-15','2021-03-17',50000,3,4,2),
('2021-01-14','2021-01-18',100000,7,5,5),
('2021-07-14','2021-07-15',0,7,2,6),
('2021-06-01','2021-06-03',0,7,7,6),
('2021-09-02','2021-09-05',100000,7,4,4),
('2021-06-17','2021-06-18',150000,3,4,1),
('2020-11-19','2020-11-19',0,3,4,3),
('2021-04-12','2021-04-14',0,10,3,5),
('2021-04-25','2021-04-25',0,2,2,1),
('2021-05-25','2021-05-27',0,7,10,1);

insert into hop_dong_chi_tiet(so_luong,ma_hop_dong,ma_dich_vu_di_kem) values
(5,2,4),
(8,2,5),
(15,2,6),
(1,3,1),
(11,3,2),
(1,1,3),
(2,1,2),
(2,12,2);

-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select * ,length(ho_ten) as soluongkituten
from nhan_vien
where (ho_ten like 'H%') or  (ho_ten like 'T%') or (ho_ten like 'K%')
having soluongkituten<=15;

-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select * 
from khach_hang 
where (51*30*365) > (curdate()-ngay_sinh) and (curdate()-ngay_sinh) >(18*30*365) and (dia_chi like '%Đà Nẵng%' or dia_chi like '%Quảng Trị%');
-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select khach_hang.ma_khach_hang,khach_hang.ho_ten, count(hop_dong.ma_hop_dong) as so_lan_dat_phong from khach_hang inner join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang where khach_hang.ma_loai_khach = 1
group by khach_hang.ma_khach_hang order by so_lan_dat_phong;

-- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) 
-- cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select khach_hang.ma_khach_hang, khach_hang.ho_ten, loai_khach.ten_loai_khach, hop_dong.ma_hop_dong, dich_vu.ten_dich_vu, hop_dong.ngay_lam_hop_dong, hop_dong.ngay_ket_thuc,
sum(dich_vu_di_kem.gia*hop_dong_chi_tiet.so_luong + dich_vu.chi_phi_thue) as tong_tien from khach_hang
left join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
left join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
left join dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
left join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
left join dich_vu_di_kem on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
group by hop_dong.ma_hop_dong;

-- 6.	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 
-- (Quý 1 là tháng 1, 2, 3). 
select dich_vu.ma_dich_vu, dich_vu.ten_dich_vu, dich_vu.dien_tich, dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu from dich_vu
left join loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
where not exists( select hop_dong.ma_hop_dong from hop_dong 
where (hop_dong.ngay_lam_hop_dong between "2021-01-01" and "2021-03-31") and hop_dong.ma_dich_vu = dich_vu.ma_dich_vu) order by dich_vu.chi_phi_thue desc;

-- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 
-- nhưng chưa từng được khách hàng đặt phòng trong năm 2021.
select dich_vu.ma_dich_vu, dich_vu.ten_dich_vu, dich_vu.dien_tich, dich_vu.so_nguoi_toi_da, dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu from dich_vu
left join loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
where not exists( select hop_dong.ma_hop_dong from hop_dong where year(hop_dong.ngay_lam_hop_dong) = 2021 and hop_dong.ma_dich_vu = dich_vu.ma_dich_vu)
and exists(select hop_dong.ma_hop_dong from hop_dong where  year(hop_dong.ngay_lam_hop_dong) =2020 and hop_dong.ma_dich_vu = dich_vu.ma_dich_vu);

-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên.
-- cách 1:
select distinct khach_hang.ho_ten from khach_hang;
-- cách 2:
select  khach_hang.ho_ten from khach_hang group by khach_hang.ho_ten;
-- cách 3:
select khach_hang.ho_ten from khach_hang union select khach_hang.ho_ten from khach_hang;

-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
select month(ngay_lam_hop_dong) as "thang",count(khach_hang.ma_khach_hang) as "so_luong_khach_hang"
from hop_dong 
left join khach_hang on hop_dong.ma_khach_hang=khach_hang.ma_khach_hang
left join dich_vu on hop_dong.ma_dich_vu=dich_vu.ma_dich_vu
left join hop_dong_chi_tiet on hop_dong.ma_hop_dong=hop_dong_chi_tiet.ma_hop_dong
left join dich_vu_di_kem on hop_dong_chi_tiet.ma_dich_vu_di_kem=dich_vu_di_kem.ma_dich_vu_di_kem
where year(ngay_lam_hop_dong)='2021'
group by thang order by thang;

-- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.
-- Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
select hop_dong.ma_hop_dong, hop_dong.ngay_lam_hop_dong, hop_dong.ngay_ket_thuc, hop_dong.tien_dat_coc, count(hop_dong_chi_tiet.ma_hop_dong_chi_tiet) as so_luong_dich_vu_di_kem from hop_dong
left join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
group by hop_dong.ma_hop_dong;

-- 11.	Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select distinct dich_vu_di_kem.ma_dich_vu_di_kem, ten_dich_vu_di_kem, dich_vu_di_kem.gia,dich_vu_di_kem.don_vi from dich_vu_di_kem 
inner join hop_dong_chi_tiet on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
inner join hop_dong on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
inner join khach_hang on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
inner join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach where loai_khach.ten_loai_khach = "Diamond" and (khach_hang.dia_chi like "%Vinh%" or khach_hang.dia_chi like "%Quảng Ngãi%");

-- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), 
-- tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
select hop_dong.ma_hop_dong, nhan_vien.ho_ten as 'ho_ten_nhan_vien', khach_hang.ho_ten as 'ho_ten_khach_hang', khach_hang.so_dien_thoai as ' sdt_khach_hang',dich_vu.ma_dich_vu , dich_vu.ten_dich_vu, count(hop_dong_chi_tiet.ma_dich_vu_di_kem) as 'so_luong_dich_vu_di_kem',hop_dong.tien_dat_coc
from hop_dong
inner join nhan_vien on hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
inner join khach_hang on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
inner join dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
inner join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
where  exists(select hop_dong.ma_hop_dong where hop_dong.ngay_lam_hop_dong between '2020-10-01' and '2020-12-31')
and not exists( select hop_dong.ma_hop_dong where hop_dong.ngay_lam_hop_dong between '2021-01-01' and '2021-06-31')
group by dich_vu.ten_dich_vu;

