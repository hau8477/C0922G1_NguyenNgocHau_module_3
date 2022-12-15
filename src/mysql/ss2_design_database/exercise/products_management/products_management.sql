create
database products_management;

use
products_management;

create table customer
(
    customer_id   int auto_increment primary key,
    customer_name varchar(50),
    customer_age  int
);

create table `order`
(
    order_id          int auto_increment primary key,
    customer_id       int unique not null,
    order_date        datetime,
    order_total_price double,
    foreign key (customer_id) references customer (customer_id)
);

create table product
(
    product_id    int auto_increment primary key,
    product_name  varchar(50),
    product_price double
);

create table order_detail
(
    order_id   int auto_increment,
    product_id int,
    order_qty  double,
    primary key (order_id, product_id),
    foreign key (order_id) references `order` (order_id),
    foreign key (product_id) references product (product_id)
);
