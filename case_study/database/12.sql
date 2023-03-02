
use truong_hoc;

CREATE TABLE sach(
ma_sach INT AUTO_INCREMENT PRIMARY KEY,
ten_sach VARCHAR(50),
tac_gia VARCHAR(50),
mo_ta VARCHAR(50),
so_luong INT
);

INSERT INTO sach(ten_sach,tac_gia,mo_ta,so_luong) VALUES("Sổ đỏ","Vũ Trọng Phụng","Xuân tóc đỏ",10),("Truyện kiều","Nguyễn Du","Thúy Kiều",15);

CREATE TABLE hoc_sinh(
ma_hoc_sinh INT AUTO_INCREMENT PRIMARY KEY,
ho_ten VARCHAR(50),
lop VARCHAR(50)
);

INSERT INTO hoc_sinh(ho_ten,lop) VALUES ("Nguyễn Ngọc Hậu","C0922G1"),("Phan Văn Hùng","C0922G1");

CREATE TABLE the_muon_sach(
id INT AUTO_INCREMENT PRIMARY KEY,
ma_sach INT,
ma_hoc_sinh INT,
trang_thai BOOLEAN,
ngay_muon DATE,
ngay_tra DATE,
FOREIGN KEY (ma_sach) REFERENCES sach (ma_sach),
FOREIGN KEY (ma_hoc_sinh) REFERENCES hoc_sinh (ma_hoc_sinh)
);

INSERT INTO the_muon_sach(ma_sach,ma_hoc_sinh,trang_thai,ngay_muon,ngay_tra) VALUES (2,1,1,"2023-01-10","2023-01-12"),(3,2,2,"2023-01-10","2023-01-12");

