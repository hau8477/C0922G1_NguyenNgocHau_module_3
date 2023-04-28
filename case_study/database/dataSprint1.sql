use sprint1;

INSERT INTO `sprint1`.`role` (`role_name`) VALUES ('ROLE_ADMIN');
INSERT INTO `sprint1`.`role` (`role_name`) VALUES ('ROLE_STUDENT');
INSERT INTO `sprint1`.`role` (`role_name`) VALUES ('ROLE_TEACHER');

INSERT INTO `sprint1`.`account` (`email`, `password`) VALUES ('dat@gmail.com', '12345678');
INSERT INTO `sprint1`.`account` (`email`, `password`) VALUES ('tien@gmail.com', '12345678');
INSERT INTO `sprint1`.`account` (`email`, `password`) VALUES ('huong@gmail.com', '12345678');
INSERT INTO `sprint1`.`account` (`email`, `password`) VALUES ('khoi@gmail.com', '12345678');
INSERT INTO `sprint1`.`account` (`email`, `password`) VALUES ('dung@gmail.com', '12345678');
INSERT INTO `sprint1`.`account` (`email`, `password`) VALUES ('trang@gmail.com', '12345678');


INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('3', '1');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('2', '2');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('2', '3');

INSERT INTO `sprint1`.`degree` (`degree_name`) VALUES ('Cao đẳng');
INSERT INTO `sprint1`.`degree` (`degree_name`) VALUES ('Đại học');
INSERT INTO `sprint1`.`degree` (`degree_name`) VALUES ('Thạc sĩ');
INSERT INTO `sprint1`.`degree` (`degree_name`) VALUES ('Tiến sĩ');

INSERT INTO `sprint1`.`faculty` (`faculty_name`) VALUES ('CNTT');
INSERT INTO `sprint1`.`faculty` (`faculty_name`) VALUES ('Xây dựng');
INSERT INTO `sprint1`.`faculty` (`faculty_name`) VALUES ('Điện tử viễn thông');
INSERT INTO `sprint1`.`faculty` (`faculty_name`) VALUES ('Tài chính');
INSERT INTO `sprint1`.`faculty` (`faculty_name`) VALUES ('Kế toán');

INSERT INTO `sprint1`.`stage` (`stage_name`) VALUES ('Giai đoạn 1');
INSERT INTO `sprint1`.`stage` (`stage_name`) VALUES ('Giai đoạn 2');
INSERT INTO `sprint1`.`stage` (`stage_name`) VALUES ('Giai đoạn 3');
INSERT INTO `sprint1`.`stage` (`stage_name`) VALUES ('Giai đoạn 4');

INSERT INTO `sprint1`.`teacher` (`flag_delete`, `teacher_address`, `teacher_code`, `teacher_date_of_birth`, `teacher_email`, `teacher_gender`, `teacher_name`, `teacher_phone_number`, `account_id`, `degree_id`, `faculty_id`, `teacher_img`) VALUES (0, 'Thăng Bình, Quảng Nam', 'GV-001', '01/01/1980', 'tien@gmail.com', 1, 'Phạm Công Tiến', '0989876345', 2, 4, 1, 'abc');
INSERT INTO sprint1.teacher (flag_delete, teacher_address, teacher_code, teacher_date_of_birth, teacher_email, teacher_gender, teacher_name, teacher_phone_number, account_id, degree_id, faculty_id, teacher_img) VALUES (0, 'Tam Kỳ, Quảng Nam', 'GV-002', '12/05/1985', 'huong@gmail.com', 0, 'Nguyễn Thị Hương', '0934256789', 3, 3, 2, 'def');
INSERT INTO sprint1.teacher (flag_delete, teacher_address, teacher_code, teacher_date_of_birth, teacher_email, teacher_gender, teacher_name, teacher_phone_number, account_id, degree_id, faculty_id, teacher_img) VALUES (0, 'Hải Châu, Đà Nẵng', 'GV-003', '08/11/1975', 'datnguyen@gmail.com', 1, 'Nguyễn Thanh Đạt', '0978521346', 1, 2, 3, 'ghi');
INSERT INTO sprint1.teacher (flag_delete, teacher_address, teacher_code, teacher_date_of_birth, teacher_email, teacher_gender, teacher_name, teacher_phone_number, account_id, degree_id, faculty_id, teacher_img) VALUES (0, 'Cẩm Lệ, Đà Nẵng', 'GV-004', '05/03/1990', 'khoi@gmail.com', 1, 'Nguyễn Trần Minh Khôi', '0948672134', 4, 1, 3, 'jkl');
INSERT INTO sprint1.teacher (flag_delete, teacher_address, teacher_code, teacher_date_of_birth, teacher_email, teacher_gender, teacher_name, teacher_phone_number, account_id, degree_id, faculty_id, teacher_img) VALUES (0, 'Đà Nẵng', 'GV-005', '04/04/1983', 'dung@gmail.com', 0, 'Lê Thanh Dũng', '0965432178', 5, 2, 2, 'jkl');
INSERT INTO sprint1.teacher (flag_delete, teacher_address, teacher_code, teacher_date_of_birth, teacher_email, teacher_gender, teacher_name, teacher_phone_number, account_id, degree_id, faculty_id, teacher_img) VALUES (0, 'Nghệ An', 'GV-006', '05/05/1984', 'trang@gmail.com', 1, 'Trần Thị Trang', '0987654123', 6,2,1,'sff');

insert into document( document_name,document_describe, document_file, flag_delete, teacher_id)
values ('Kho đồ án tốt nghiệp-khóa luận tốt nghiệp-Đồ án môn học.pdf ','Kho đồ án tốt nghiệp-khóa luận tốt nghiệp-Đồ án môn học.pdf  ','https://firebasestorage.googleapis.com/v0/b/uploadfile-35ecc.appspot.com/o/huong-dan-cai-dat-moi-truong-module-5.docx?alt=media&amp;token=24f85eed-a345-42e2-aea1-df09ad177246">huong-dan-cai-dat-moi-truong-module-5.docx',0,1),
       ('Tài liệu Giáo án vật lý lớp 8 - Chuyển động cơ học pdf','Tài liệu Giáo án vật lý lớp 8 - Chuyển động cơ học pdf','https://firebasestorage.googleapis.com/v0/b/uploadfile-35ecc.appspot.com/o/huong-dan-cai-dat-moi-truong-module-5.docx?alt=media&amp;token=24f85eed-a345-42e2-aea1-df09ad177246">huong-dan-cai-dat-moi-truong-module-5.docx',0,2),
       ('Tài liệu Đơn xin làm đồ án','Tài liệu Đơn xin làm đồ án','https://firebasestorage.googleapis.com/v0/b/uploadfile-35ecc.appspot.com/o/huong-dan-cai-dat-moi-truong-module-5.docx?alt=media&amp;token=24f85eed-a345-42e2-aea1-df09ad177246">huong-dan-cai-dat-moi-truong-module-5.docx',0,3),
       ('PHIẾU ĐĂNG KÝ ĐỀ TÀI ĐỒ ÁN/ KHÓA LUẬN TỐT NGHIỆP','PHIẾU ĐĂNG KÝ ĐỀ TÀI ĐỒ ÁN/ KHÓA LUẬN TỐT NGHIỆP','https://firebasestorage.googleapis.com/v0/b/uploadfile-35ecc.appspot.com/o/huong-dan-cai-dat-moi-truong-module-5.docx?alt=media&amp;token=24f85eed-a345-42e2-aea1-df09ad177246">huong-dan-cai-dat-moi-truong-module-5.docx',0,4),
       ('đồ án môn học viện xây dựng công trình biển .doc','đồ án môn học viện xây dựng công trình biển .doc','https://firebasestorage.googleapis.com/v0/b/uploadfile-35ecc.appspot.com/o/huong-dan-cai-dat-moi-truong-module-5.docx?alt=media&amp;token=24f85eed-a345-42e2-aea1-df09ad177246">huong-dan-cai-dat-moi-truong-module-5.docx',0,5),
       ('đồ án môn học xây dựng nền đường','đồ án môn học xây dựng nền đường','https://firebasestorage.googleapis.com/v0/b/uploadfile-35ecc.appspot.com/o/huong-dan-cai-dat-moi-truong-module-5.docx?alt=media&amp;token=24f85eed-a345-42e2-aea1-df09ad177246">huong-dan-cai-dat-moi-truong-module-5.docx',0,6);

insert into notification_teacher(notification_teacher_topic, notification_teacher_time, notification_teacher_content, teacher_id)
values ('Kho đồ án tốt nghiệp-khóa luận tốt nghiệp-Đồ án môn học.pdf','2023-03-29 11:37:39','Kho đồ án tốt nghiệp-khóa luận tốt nghiệp-Đồ án môn học.pdf',1),
       ('Tài liệu Giáo án vật lý lớp 8 - Chuyển động cơ học pdf','2023-03-29 12:37:39','Tài liệu Giáo án vật lý lớp 8 - Chuyển động cơ học pdf',2),
       ('Tài liệu Đơn xin làm đồ án','2023-03-29 13:37:39','Tài liệu Đơn xin làm đồ án',5),
       ('PHIẾU ĐĂNG KÝ ĐỀ TÀI ĐỒ ÁN/ KHÓA LUẬN TỐT NGHIỆP','2023-03-29 14:37:39','PHIẾU ĐĂNG KÝ ĐỀ TÀI ĐỒ ÁN/ KHÓA LUẬN TỐT NGHIỆP',3),
       ('đồ án môn học viện xây dựng công trình biển .doc','2023-03-29 15:37:39','đồ án môn học viện xây dựng công trình biển .doc',6),
       ('đồ án môn học xây dựng nền đường','2023-03-29 16:37:39','đồ án môn học xây dựng nền đường',4);

INSERT INTO `sprint1`.`team` (`team_id`, `member_of_team`, `team_name`, `teacher_id`) VALUES ('1', '4', 'FB09', '1');
INSERT INTO `sprint1`.`team` (`team_id`, `member_of_team`, `team_name`, `teacher_id`) VALUES ('2', '5', 'Nhóm 1', '2');
INSERT INTO `sprint1`.`team` (`team_id`, `member_of_team`, `team_name`, `teacher_id`) VALUES ('3', '4', 'Hậu và những người bạn', '3');
INSERT INTO `sprint1`.`team` (`member_of_team`, `team_name`) VALUES (4, 'Hậu');

insert into project (project_content,project_description,project_img,project_name,project_status,team_id) values
( 'Thiết kế ứng dụng đặt vé xem phim','starlight','https://cdn.pixabay.com/photo/2023/03/18/12/28/bonfire-7860562__340.jpg','Thiết kế ứng dụng đặt vé xem phim',1,1), 
( 'Thiết kế ứng dụng quản lý nhà xe','bến xe','https://cdn.pixabay.com/photo/2023/03/18/12/28/bonfire-7860562__340.jpg','bến xe đà nẵng',0,2);


insert into progress_report (progress_report_content,progress_report_file,progress_report_time,project_id,stage_id) values
('Báo cáo giai đoạn 1 test nội dung','https://cdn.pixabay.com/photo/2023/03/25/10/59/hedgehog-fly-7875687_640.jpg','2023-03-28 7:00:00',1,1),
('Báo cáo giai đoạn 1 phần khái quát','https://cdn.pixabay.com/photo/2022/11/03/02/19/egret-7566464__340.jpg','2023-03-28 17:00:00',1,1),
('Báo cáo giai đoạn 1 Chi tiết','https://cdn.pixabay.com/photo/2023/03/25/10/59/hedgehog-fly-7875687_640.jpg','2023-03-28 19:00:00',1,1),
('Báo cáo giai đoạn 1 ứng dụng thực tế','https://cdn.pixabay.com/photo/2022/12/19/17/37/bee-7666216__340.jpg','2023-03-30 17:00:00',1,1),
('Báo cáo giai đoạn 2 khởi công','https://cdn.pixabay.com/photo/2022/10/04/19/16/sea-7498910__340.jpg','2023-03-31 17:00:00',1,2);

INSERT INTO `sprint1`.`clazz` (`clazz_id`, `clazz_name`, `faculty_id`, `teacher_id`) VALUES ('1', 'C0922G1', '1', '1');
INSERT INTO `sprint1`.`clazz` (`clazz_id`, `clazz_name`, `faculty_id`, `teacher_id`) VALUES ('2', 'C0922G2', '2', '2');
INSERT INTO `sprint1`.`clazz` (`clazz_id`, `clazz_name`, `faculty_id`, `teacher_id`) VALUES ('3', 'C0922G4', '3', '3');


INSERT INTO `sprint1`.`question` (`question_id`, `date_time`, `question_content`, `question_topic`) VALUES (1, '2023-03-23 16:30:11', 'Em chưa làm được chức năng bán bom', 'Giai đoạn 1');
INSERT INTO `sprint1`.`question` (`question_id`, `date_time`, `question_content`, `question_topic`) VALUES (2, '2023-03-24 16:30:11', 'Em chưa hiểu về SRS', 'Giai đoạn 2');

INSERT INTO `sprint1`.`answers` (`answer_content`, `question_id`, `teacher_id`) VALUES ('Q&A 1', '1', '1');
INSERT INTO `sprint1`.`answers` (`answer_content`, `question_id`, `teacher_id`) VALUES ('Q&A 2', '2', '1');


INSERT INTO sprint1.student (flag_delete, flag_leader, student_address, student_code, student_date_of_birth, student_email, student_gender, student_img, student_name, student_phone_number, account_id, clazz_id, team_id) VALUES (0, 0, 'Thanh Khê, Đà Nẵng', 'SV-002', '15/03/2002', 'john.doe@gmail.com', 1, 'profile2.png', 'John Doe', '090001004', 2, 1, 1);

INSERT INTO sprint1.student (flag_delete, flag_leader, student_address, student_code, student_date_of_birth, student_email, student_gender, student_img, student_name, student_phone_number, account_id, clazz_id, team_id) VALUES (0, 1, 'Sơn Trà, Đà Nẵng', 'SV-003', '01/01/2001', 'jane.doe@gmail.com', 0, 'profile3.png', 'Jane Doe', '090001005', 3, 2, 2);

INSERT INTO sprint1.student (flag_delete, flag_leader, student_address, student_code, student_date_of_birth, student_email, student_gender, student_img, student_name, student_phone_number, account_id, clazz_id, team_id) VALUES (0, 0, 'Liên Chiểu, Đà Nẵng', 'SV-004', '02/05/2001', 'peter.parker@gmail.com', 1, 'profile4.png', 'Peter Parker', '090001006', 4, 2, 2);

INSERT INTO sprint1.student (flag_delete, flag_leader, student_address, student_code, student_date_of_birth, student_email, student_gender, student_img, student_name, student_phone_number, account_id, clazz_id, team_id) VALUES (0, 0, 'Cẩm Lệ, Đà Nẵng', 'SV-005', '03/09/2000', 'mary.jane@gmail.com', 0, 'profile5.png', 'Mary Jane', '090001007', 5, 2, 2);

INSERT INTO sprint1.student (flag_delete, flag_leader, student_address, student_code, student_date_of_birth, student_email, student_gender, student_img, student_name, student_phone_number, account_id, clazz_id, team_id) VALUES (0, 0, 'Cẩm Lệ, Đà Nẵng', 'SV-006', '13/10/2000', 'mark.jane@gmail.com', 0, 'profile6.png', 'Mark Hand', '090001107', 5, 2, 2);

INSERT INTO `sprint1`.`progress_review` (`progress_review_id`, `progress_review_content`, `progress_review_date_create`, `progress_review_percent`, `progress_review_title`, `project_id`, `teacher_id`) VALUES ('3', ' Tiến độ 2', '2023-03-23 16:30:11', '99', 'Kết quả', '2', '2');

