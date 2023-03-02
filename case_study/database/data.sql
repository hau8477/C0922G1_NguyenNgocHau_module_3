USE
furama_resort_module_4;

INSERT INTO position (name, flag)
VALUES ("Quản lý", 1),
       ("Nhân viên", 1);

INSERT INTO education_degree(name, flag)
VALUES ("Trung cấp", 1),
       ("Cao đẳng", 1),
       ("Đại học", 1),
       ("Sau đại học", 1);

INSERT INTO division(name, flag)
VALUES ("Sale-marketing", 1 ),
       ("Hành chính", 1),
       ("Phục vụ", 1),
       ("Quản lý", 1);
       
INSERT INTO `furama_resort_module_4`.`app_user` (`username`, `encryted_password`, `flag`) VALUES 
('an123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1),
('binh123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1),
('yen123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1),
('toan123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1),
('phat123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1),
('nghi123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1),
('ha123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1),
('dong123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1),
('hoang123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1),
('dao123', '$2a$12$V3qwwLWsSOqHMhZ6Y/HI/eOzOIZAVrTmxrKFDy43uB5BpF1Mny/He', 1);

INSERT INTO employee(name, date_of_birth, id_card, salary, phone_number, email, address, position_id, education_degree_id,
                      division_id, flag, username)
VALUES ("Nguyễn Văn An", "1970-11-07", "4562317861", 10000000, "0901234121", "annguyen@gamil.com",
        "295 Nguyễn Tất Thành, Đà Nẵng", 1, 3, 1, 1, "an123"),
       ("Lê Văn Bình", "1997-04-09", "654231234", 70000000, "0934212314", "binhlv@gmail.com", "22 Yên Bái, Đà Nẵng",
        1, 2, 2, 1, "binh123"),
       ("Hồ Thị Yến", "1995-12-12", "999231723", 14000000, "0412352315", "thiyen@gamil.com",
        "k234/11 Điện Biên Phủ, Gia Lai", 1, 3, 2, 1, "yen123"),
       ("Võ Công Toản", "1980-04-04", "123231365", 17000000, "0374443232", "toan0404@gmail.com",
        "77 Hoàng Diệu, Quảng Trị", 1, 4, 4, 1, "toan123"),
       ("Nguyễn Bỉnh Phát", "1999-12-09", "454363232", 6000000, "0902341231", "phatphat@gmail.com",
        "43 Yên Bái, Đà Nẵng", 2, 1, 1, 1, "phat123"),
       ("Khúc Nguyễn An Nghi", "2000-11-08", "964542311", 7000000, "0978653213", "annghi20@gmail.com",
        "294 Nguyễn Tất Thành, Đà Nẵng", 2, 2, 3, 1, "nghi123"),
       ("Nguyễn Hữu Hà", "1993-01-01", "534323231", 8000000, "0941234553", "nhh101@gmail.com",
        "4 Nguyễn Chí Thanh, Huế", 2, 3, 2,1, "ha123"),
       ("Nguyễn Hà Đông", "1989-09-03", "234414123", 9000000, "0642123111", "donghanguyen@gmail.com",
        "111 Hùng Vương, Hà Nội", 2, 4, 4, 1, "dong123"),
       ("Tòng Hoang", "1982-09-03", "256781231", 6000000, "0245144444", "hoangtong@gmail.com", "213 Hàm Nghi, Đà Nẵng",
        2, 4, 4, 1, "hoang123"),
       ("Nguyễn Công Đạo", "1994-01-08", "755434343", 8000000, "0988767111", "nguyencongdao12@gmail.com",
        "6 Hoà Khánh, Đồng Nai", 2, 3, 2, 1, "dao123");

INSERT INTO customer_type(name)
VALUES ("Diamond"),
       ("Platinium"),
       ("Gold"),
       ("Silver"),
       ("Member");

INSERT INTO customer(name, date_of_birth, gender, id_card, phone_number, email, address, customer_type_id, flag)
VALUES ("Nguyễn Thị Hào", "1970-11-07", 0, "643431213", 0945423362, "thihao07@gmail.com", "23 Nguyễn Hoàng, Đà Nẵng",
        5, 1),
       ("Phạm Xuân Diệu", "1992-08-08", 1, "865342123", 0954333333, "xuandieu92@gmail.com",
        "k77/22 Thái Phiên, Quảng Trị", 3, 1),
       ("Trương Đình Nghệ", "1990-02-27", 1, "488645199", 0373213122, "nghenhan2702@gamil.com",
        "k323/12 Ông Ích Khiêm, Vinh", 1, 1),
       ("Dương Văn Quan", "1981-07-08", 1, "543432111", 0490039241, "duongquan@gmail.com", "k453/12 Lê Lợi, Đà Nẵng",
        1, 1),
       ("Hoàng Trần Nhi Nhi", "1995-12-09", 0, "795453345", 0312345678, "nhinhi123@gmail.com",
        "224 Lý Thái Tổ, Gia Lai", 4, 1),
       ("Tôn Nữ Mộc Châu", "2005-12-06", 0, "732434215", 0988888844, "tonnuchau@gmail.com", "37 Yên Thế, Đà Nẵng", 4, 1),
       ("Nguyễn Mỹ Kim", "1984-04-08", 0, "856453123", 0912345698, "kimcuong84@gmail.com",
        "k123/45 Lê Lợi, Hồ Chí Minh", 1, 1),
       ("Nguyễn Thị Hào", "1999-04-08", 0, "965656433", 0763212345, "haohao99@gmail.com",
        "55 Nguyễn Văn Linh, Kon Tum", 3, 1),
       ("Trần Đại Danh", "1994-07-01", 1, "432341235", 0643343433, "danhhai99@gmail.com",
        "24 Lý Thường Kiệt, Quảng Ngãi", 1, 1),
       ("Nguyễn Tâm Đắc", "1989-07-01", 1, "344343432", 0987654321, "dactam@gmail.com", "22 Ngô Quyền, Đà Nẵng", 2, 1);

INSERT INTO rent_type(name, flag)
VALUES ("Year", 1),
       ("Month", 1),
       ("Day", 1),
       ("Hour", 1);

INSERT INTO facility_type(name, flag)
VALUES ("Villa", 1),
       ("House", 1),
       ("Room", 1);

INSERT INTO facility(name, area, cost, max_people, standard_room, description_other_convenience,
                    pool_area, number_of_floors, facility_free, rent_type_id, facility_type_id, flag)
VALUES ("Villa beach front", 25000, 1000000, 10, "Vip", "Có hồ bơi", "500", "4", null, 3, 1, 1),
       ("House princess 01", 14000, 5000000, 7, "Vip", "Có thêm bếp nướng", null, "3", null, 2, 2, 1),
       ("Room twin 01", 5000, 1000000, 2, "Normal", "Có tivi", null, null, "1 xe máy, 1 xe đạp", 4, 3, 1),
       ("Villa no beach front", 22000, 9000000, 8, "Normal", "Có hồ bơi", "300", "3", null, 3, 1, 1),
       ("House princess 02", 10000, 4000000, 5, "Normal", "Có thêm bếp nướng", null, 2, null, 3, 2, 1),
       ("Room twin 02", 3000, 900000, 2, "Normal", "Có tivi", null, null, "1 xe máy", 4, 3, 1);

INSERT INTO attach_facility(name, cost, unit, status, flag)
VALUES ("Karaoke", 10000, "Giờ", "Tiện nghi, hiện đại", 1),
       ("Thuê xe máy", 10000, "Chiếc", "Hỏng 1 xe", 1),
       ("Thuê xe đạp", 20000, "Chiếc", "Tốt", 1),
       ("Buffet buổi sáng", 15000, "Suất", "Đầy đủ đồ ăn, tráng miệng", 1),
       ("Buffet buổi trưa", 90000, "Suất", "Đầy đủ đồ ăn, tráng miệng", 1),
       ("Buffet buổi tối", 16000, "Suất", "Đầy đủ đồ ăn, tráng miệng", 1);
       
    

INSERT INTO contract(start_date, end_date, deposit, employee_id, customer_id, facility_id, flag)
VALUES ('2020-12-08', '2020-12-08', '0', 3, 1, 3, 1),
       ('2020-07-14', '2020-07-21', '200000', 7, 3, 1, 1),
       ('2021-03-15', '2021-03-17', '50000', 3, 4, 2, 1),
       ('2021-01-14', '2021-01-18', '100000', 7, 5, 5, 1),
       ('2021-07-14', '2021-07-15', '0', 7, 2, 6, 1),
       ('2021-06-01', '2021-06-03', '0', 7, 7, 6, 1),
       ('2021-09-02', '2021-09-05', '100000', 7, 4, 4, 1),
       ('2021-06-17', '2021-06-18', '150000', 3, 4, 1, 1),
       ('2020-11-19', '2020-11-19', '0', 3, 4, 3, 1),
       ('2021-04-12', '2021-04-14', '0', 10, 3, 5, 1),
       ('2021-04-25', '2021-04-25', '0', 2, 2, 1, 1),
       ('2021-05-25', '2021-05-27', '0', 7, 10, 1, 1);
       
INSERT INTO contract_detail(quantity, contract_id, attach_facility_id, flag)
VALUES (5, 2, 4, 1),
       (8, 2, 5, 1),	
       (15, 2, 6, 1),
       (1, 3, 1, 1),
       (11, 3, 2, 1),
       (1, 1, 3, 1),
       (2, 1, 2, 1),
       (2, 12, 2, 1);   
       
INSERT INTO `furama_resort_module_4`.`app_role` (`id`, `flag`, `name`) VALUES (1, 1, 'admin');
INSERT INTO `furama_resort_module_4`.`app_role` (`id`, `flag`, `name`) VALUES (2, 1, 'user');

