use
create_table;

insert into vi_tri (ten_vi_tri)
values ("quản lý"),
       ("nhân viên");

insert into trinh_do(ten_trinh_do)
values ("trung cấp"),
       ("cao đẳng"),
       ("đại học"),
       ("sau đại học");

insert into bo_phan(ten_bo_phan)
values ("sale-marketing"),
       ("hành chính"),
       ("phục vụ"),
       ("quản lý");

insert into nhan_vien(ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do,
                      ma_bo_phan)
values ("nguyễn văn an", "1970-11-07", "4562317861", 10000000, "0901234121", "annguyen@gamil.com",
        "295 nguyễn tất thành, đà nẵng", 1, 3, 1),
       ("lê văn bình", "1997-04-09", "654231234", 70000000, "0934212314", "binhlv@gmail.com", "22 yên bái, đà nẵng",
        1, 2, 2),
       ("hồ thị yến", "1995-12-12", "999231723", 14000000, "0412352315", "thiyen@gamil.com",
        "k234/11 điện biên phủ, gia lai", 1, 3, 2),
       ("võ công toản", "1980-04-04", "123231365", 17000000, "0374443232", "toan0404@gmail.com",
        "77 hoàng diệu, quảng trị", 1, 4, 4),
       ("nguyễn bỉnh phát", "1999-12-09", "454363232", 6000000, "0902341231", "phatphat@gmail.com",
        "43 yên bái, đà nẵng", 2, 1, 1),
       ("khúc nguyễn an nghi", "2000-11-08", "964542311", 7000000, "0978653213", "annghi20@gmail.com",
        "294 nguyễn tất thành, đà nẵng", 2, 2, 3),
       ("nguyễn hữu hà", "1993-01-01", "534323231", 8000000, "0941234553", "nhh101@gmail.com",
        "4 nguyễn chí thanh, huế", 2, 3, 2),
       ("nguyễn hà đông", "1989-09-03", "234414123", 9000000, "0642123111", "donghanguyen@gmail.com",
        "111 hùng vương, hà nội", 2, 4, 4),
       ("tòng hoang", "1982-09-03", "256781231", 6000000, "0245144444", "hoangtong@gmail.com", "213 hàm nghi, đà nẵng",
        2, 4, 4),
       ("nguyễn công đạo", "1994-01-08", "755434343", 8000000, "0988767111", "nguyencongdao12@gmail.com",
        "6 hoà khánh, đồng nai", 2, 3, 2);

insert into loai_khach(ten_loai_khach)
values ("diamond"),
       ("platinium"),
       ("gold"),
       ("silver"),
       ("member");

insert into khach_hang(ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi, ma_loai_khach)
values ("nguyễn thị hào", "1970-11-07", 0, "643431213", "0945423362", "thihao07@gmail.com", "23 nguyễn hoàng, đà nẵng",
        5),
       ("phạm xuân diệu", "1992-08-08", 1, "865342123", "0954333333", "xuandieu92@gmail.com",
        "k77/22 thái phiên, quảng trị", 3),
       ("trương đình nghệ", "1990-02-27", 1, "488645199", "0373213122", "nghenhan2702@gamil.com",
        "k323/12 ông ích khiêm, vinh", 1),
       ("dương văn quan", "1981-07-08", 1, "543432111", "0490039241", "duongquan@gmail.com", "k453/12 lê lợi, đà nẵng",
        1),
       ("hoàng trần nhi nhi", "1995-12-09", 0, "795453345", "0312345678", "nhinhi123@gmail.com",
        "224 lý thái tổ, gia lai", 4),
       ("tôn nữ mộc châu", "2005-12-06", 0, "732434215", "0988888844", "tonnuchau@gmail.com", "37 yên thế, đà nẵng", 4),
       ("nguyễn mỹ kim", "1984-04-08", 0, "856453123", "0912345698", "kimcuong84@gmail.com",
        "k123/45 lê lợi, hồ chí minh", 1),
       ("nguyễn thị hào", "1999-04-08", 0, "965656433", "0763212345", "haohao99@gmail.com",
        "55 nguyễn văn linh, kon tum", 3),
       ("trần đại danh", "1994-07-01", 1, "432341235", "0643343433", "danhhai99@gmail.com",
        "24 lý thường kiệt, quảng ngãi", 1),
       ("nguyễn tâm đắc", "1989-07-01", 1, "344343432", "0987654321", "dactam@gmail.com", "22 ngô quyền, đà nẵng", 2);

insert into kieu_thue(ten_kieu_thue)
values ("year"),
       ("month"),
       ("day"),
       ("hour");

insert into loai_dich_vu(ten_loai_dich_vu)
values ("villa"),
       ("house"),
       ("room");

insert into dich_vu(ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, tieu_chuan_phong, mo_ta_tien_nghi_khac,
                    dien_tich_ho_boi, so_tang, dich_vu_mien_phi_di_kem, ma_kieu_thue, ma_loai_dich_vu)
values ("villa beach front", 25000, 1000000, 10, "vip", "có hồ bơi", 500, 4, null, 3, 1),
       ("house princess 01", 14000, 5000000, 7, "vip", "có thêm bếp nướng", null, 3, null, 2, 2),
       ("room twin 01", 5000, 1000000, 2, "normal", "có tivi", null, null, "1 xe máy,1 xe đạp", 4, 3),
       ("villa no beach front", 22000, 9000000, 8, "normal", "có hồ bơi", 300, 3, null, 3, 1),
       ("house princess 02", 10000, 4000000, 5, "normal", "có thêm bếp nướng", null, 2, null, 3, 2),
       ("room twin 02", 3000, 900000, 2, "normal", "có tivi", null, null, "1 xe máy", 4, 3);

insert into dich_vu_di_kem(ten_dich_vu_di_kem, gia, don_vi, trang_thai)
values ("karaoke", 10000, "giờ", "tiện nghi,hiện đại"),
       ("thuê xe máy", 10000, "chiếc", "hỏng 1 xe"),
       ("thuê xe đạp", 20000, "chiếc", "tốt"),
       ("buffet buổi sáng", 15000, "suất", "đầy đủ đồ ăn,tráng miệng"),
       ("buffet buổi trưa", 90000, "suất", "đầy đủ đồ ăn,tráng miệng"),
       ("buffet buổi tối", 16000, "suất", "đầy đủ đồ ăn,tráng miệng");

insert into hop_dong(ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu)
values ('2020-12-08', '2020-12-08', '0', 3, 1, 3),
       ('2020-07-14', '2020-07-21', '200000', 7, 3, 1),
       ('2021-03-15', '2021-03-17', '50000', 3, 4, 2),
       ('2021-01-14', '2021-01-18', '100000', 7, 5, 5),
       ('2021-07-14', '2021-07-15', '0', 7, 2, 6),
       ('2021-06-01', '2021-06-03', '0', 7, 7, 6),
       ('2021-09-02', '2021-09-05', '100000', 7, 4, 4),
       ('2021-06-17', '2021-06-18', '150000', 3, 4, 1),
       ('2020-11-19', '2020-11-19', '0', 3, 4, 3),
       ('2021-04-12', '2021-04-14', '0', 10, 3, 5),
       ('2021-04-25', '2021-04-25', '0', 2, 2, 1),
       ('2021-05-25', '2021-05-27', '0', 7, 10, 1);

insert into hop_dong_chi_tiet(so_luong, ma_hop_dong, ma_dich_vu_di_kem)
values (5, 2, 4),
       (8, 2, 5),
       (15, 2, 6),
       (1, 3, 1),
       (11, 3, 2),
       (1, 1, 3),
       (2, 1, 2),
       (2, 12, 2);