use sale_management1;
insert into customer(customer_name,age) values
('Minh Quan',10),
('Ngoc Oanh', 20),
('Hong Ha',50);

insert into orders(order_date,total_price,customer_id) values
('2006-03-21',null,1),
('2006-03-23',null,2),
('2006-03-16',null,1);

insert into product(product_name,price) values
('May Giat',3),
('Tu Lanh',5),
('Dieu Hoa',7),
('Quat',1),
('Bep Dien',2);

insert into order_detail(order_id,product_id,quantity) values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);
