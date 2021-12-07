-- Tạo csdl quản lý bán hàng
create database sale_management1;
drop database sale_management1;
-- Tạo bảng khách hàng
CREATE TABLE customer (
    customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

-- Tạo bảng order
CREATE TABLE orders (
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_date DATETIME,
    total_price VARCHAR(20),
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
);

-- Tạo bảng sản phẩm
CREATE TABLE product (
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price VARCHAR(20)
);
-- Tạo bảng chi tiết hóa đơn
CREATE TABLE order_detail (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    primary key(order_id,product_id),
    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
        REFERENCES product(product_id)
);



