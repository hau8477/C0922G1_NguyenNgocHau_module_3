USE
student_management;

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’.

SELECT student_name
FROM student
WHERE student_name LIKE 'h%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12. 

SELECT start_date
FROM class
WHERE start_date LIKE '%-12-%';

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.

SELECT *
FROM `subject`
WHERE credit BETWEEN 3 and 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.

SET
sql_safe_updates = 0;
UPDATE student
SET class_id = 2
WHERE student_name = 'hung';

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.

SELECT student.student_name, subject.sub_name, mark.mark
FROM student
         JOIN mark ON student.student_id = mark.student_id
         JOIN `subject` ON mark.sub_id = `subject`.sub_id
ORDER BY mark.mark DESC; 



