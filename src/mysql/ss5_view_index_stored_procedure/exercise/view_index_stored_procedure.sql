-- Tạo cơ sở dữ liệu demo.

CREATE
DATABASE demo;

USE
demo;

-- Tạo bảng products với các trường dữ liệu sau:

CREATE TABLE products
(
    id                  INT AUTO_INCREMENT PRIMARY KEY,
    product_code        INT,
    product_name        VARCHAR(50),
    product_price       DOUBLE,
    product_amount      INT,
    product_description TEXT,
    product_status      VARCHAR(15)
);

-- Chèn một số dữ liệu mẫu cho bảng Products.

INSERT INTO products (product_code, product_name,
                      product_price, product_amount, product_description,
                      product_status)
VALUES ('001', 'IPHONE 13 PROMAX', 25000000, 100, 'Hàng Apple xài ngon lắm',
        'Tốt'),
       ('002', 'IPHONE 14 PROMAX',
        30000000, 97, 'Cái này mới ra xài bao ngon', 'Rất tốt'),
       ('003', 'SAMSUNG UTRAL MAX',
        30000000, 97, 'Cái này cũng ngon không kém', 'Rất tốt'),
       ('004', 'ISUNG', 50000000,
        1, 'Cái này là kết hợp của 2 cái kia, chắc ngon gấp đôi', 'Tốt promax');

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào.  

EXPLAIN
SELECT *
FROM products
WHERE product_code = 1;

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục).

CREATE INDEX i_product_code ON products (product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice).

CREATE INDEX i_product_name_and_price ON products (product_name, product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào.

EXPLAIN
SELECT *
FROM products
WHERE product_code = 1;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.

CREATE VIEW products_view AS
SELECT product_code, product_name, product_price, product_status
FROM products;

-- Tiến hành sửa đổi view.

CREATE
OR REPLACE VIEW products_view AS
SELECT id, product_name, product_amount, product_description
FROM products;

-- Tiến hành xoá view.

DROP VIEW products_view;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product.

DELIMITER //
CREATE PROCEDURE get_all_products()
BEGIN
SELECT *
FROM products;
END //
DELIMITER ;

-- Sử dụng stored procedure get_all_products. 

CALL get_all_products();

-- Tạo store procedure thêm một sản phẩm mới.

DELIMITER //
CREATE PROCEDURE create_new_product(
    IN p_product_code INT,
    IN p_product_name VARCHAR (50),
    IN p_product_price DOUBLE,
    IN p_product_amount INT,
    IN p_product_description TEXT,
    IN p_product_status VARCHAR (15))
BEGIN
INSERT INTO products (product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES (p_product_code, p_product_name, p_product_price, p_product_amount, p_product_description, p_product_status);
END //
DELIMITER ;

-- Sử dụng stored procedure create_new_product. 

CALL create_new_product(
    '005', 'SAMSUNG J100000000', 
    35000000, 50, 'Cái này cũng ngon bình thường thôi', 'Rất tốt hi'
  )
  
-- Tạo store procedure sửa thông tin sản phẩm theo id.

DELIMITER //
CREATE PROCEDURE edit_product_by_id(IN p_id INT,
                                    IN p_product_code INT,
                                    IN p_product_name VARCHAR (50),
                                    IN p_product_price DOUBLE,
                                    IN p_product_amount INT,
                                    IN p_product_description TEXT,
                                    IN p_product_status VARCHAR (15))
BEGIN
UPDATE products
SET product_code        = p_product_code,
    product_name        = p_product_name,
    product_price       = p_product_price,
    product_amount      = p_product_amount,
    product_description = p_product_description,
    product_status      = p_product_status
WHERE id = p_id;
END //
DELIMITER ;  

-- Sử dụng stored procedure edit_product_by_id. 

CALL edit_product_by_id(
    5, '005', 'SAMSUNG S21 UTRAL', 
    25000000, 76, 'Cái này cũng ngon bình thường thôi', 'Tốt nha'
  )
  
-- Tạo store procedure xoá sản phẩm theo id.

DELIMITER //
CREATE PROCEDURE delete_product_by_id(IN p_id INT)
BEGIN
DELETE
FROM products
WHERE id = p_id;
END //
DELIMITER ;  

-- Sử dụng stored procedure delete_product_by_id. 

CALL delete_product_by_id(5);
  
  
  
  
