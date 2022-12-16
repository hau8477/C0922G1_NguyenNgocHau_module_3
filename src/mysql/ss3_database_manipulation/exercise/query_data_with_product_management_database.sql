USE
product_management;

-- Thêm dữ liệu vào trong 4 bảng Customer, Order, Product, OrderDetail

INSERT INTO customer
VALUES (1, 'Minh Quan', 10),
       (2, 'Ngoc Oanh', 20),
       (3, 'Hong Ha', 50);

INSERT INTO `order` (order_id, customer_id, order_date)
VALUES (1, 1, '2006-3-21'),
       (2, 2, '2006-3-23'),
       (3, 1, '2006-3-16');

INSERT INTO product
VALUES (1, 'May Giat', 3),
       (2, 'Tu Lanh', 5),
       (3, 'Dieu Hoa', 7),
       (4, 'Quat', 1),
       (5, 'Bep Dien', 2);

INSERT INTO order_detail
VALUES (1, 1, 3),
       (1, 3, 7),
       (1, 4, 2),
       (2, 1, 1),
       (3, 1, 8),
       (2, 5, 4),
       (2, 3, 3);

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách.

SELECT customer.customer_name, product.product_name
FROM customer
         JOIN `order` ON customer.customer_id = `order`.customer_id
         JOIN order_detail ON `order`.order_id = order_detail.order_id
         JOIN product ON order_detail.product_id = product.product_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào.

SELECT customer.customer_name
FROM customer
WHERE customer.customer_id NOT IN (SELECT `order`.customer_id FROM `order`);

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice).

SELECT `order`.order_id, `order`.order_date, (product.product_price * order_detail.order_qty) AS 'order_total_price'
FROM `order`
         JOIN order_detail ON `order`.order_id = order_detail.order_id
         JOIN product ON order_detail.product_id = product.product_id;
