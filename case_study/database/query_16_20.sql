USE
furama_resort;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.

-- Tắt chế độ an toàn để xóa.

SET
SQL_SAFE_UPDATES = 0;

DELETE
FROM nhan_vien nv
WHERE nv.ma_nhan_vien NOT IN (SELECT ma_nhan_vien FROM hop_dong WHERE YEAR (ngay_lam_hop_dong)
								BETWEEN 2019 AND 2021);

-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật 
-- những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 1.000.000 VNĐ.

UPDATE khach_hang khh
SET khh.ma_loai_khach = 1
WHERE khh.ma_khach_hang IN (SELECT *
                            FROM (SELECT kh.ma_khach_hang
                                  FROM khach_hang kh
                                           JOIN hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
                                           JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
                                           JOIN hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hd.ma_hop_dong
                                           JOIN dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
                                  WHERE YEAR (hd.ngay_lam_hop_dong) = 2021 AND ma_loai_khach = 2
                                  GROUP BY hd.ma_khach_hang
                                  HAVING SUM(dv.chi_phi_thue + hdct.so_luong * dvdk.gia) > 1000000) AS khach_hang_tam_thoi);

-- Tắt ràng buộc khóa ngoại

SET
FOREIGN_KEY_CHECKS = 0;

-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).

DELETE
FROM khach_hang kh
WHERE kh.ma_khach_hang IN (SELECT hd.ma_khach_hang
                           FROM hop_dong hd
                           WHERE YEAR (ngay_lam_hop_dong) < 2021);

-- Bật ràng buộc khóa ngoại

SET
FOREIGN_KEY_CHECKS = 1;                           

-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.

UPDATE dich_vu_di_kem dvdk
SET gia = gia * 2
WHERE dvdk.ma_dich_vu_di_kem IN (SELECT hdct.ma_dich_vu_di_kem
                                 FROM hop_dong_chi_tiet hdct
                                 GROUP BY hdct.ma_dich_vu_di_kem
                                 HAVING SUM(hdct.so_luong >= 10));

-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển 
-- thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

SELECT nv.ma_nhan_vien AS id, nv.ho_ten, nv.email, nv.so_dien_thoai, nv.ngay_sinh, nv.dia_chi
FROM nhan_vien nv
UNION ALL
SELECT kh.ma_khach_hang, kh.ho_ten, kh.email, kh.so_dien_thoai, kh.ngay_sinh, kh.dia_chi
FROM khach_hang kh;

-- Bật chế độ an toàn để tránh mất dữ liệu.

SET
SQL_SAFE_UPDATES = 1;
