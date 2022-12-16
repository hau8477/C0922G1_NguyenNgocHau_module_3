USE student_management;

SELECT * 
FROM student;

SELECT * 
FROM student
WHERE status = true;

SELECT * 
FROM subject
WHERE credit < 10;

SELECT s.student_id, s.student_name, c.class_name
FROM student AS s JOIN class AS c ON s.class_id = c.class_id 
WHERE class_name = 'A1';

SELECT s.student_id, s.student_name, sub.sub_name, m.mark
FROM student AS s JOIN mark AS m ON s.student_id = m.student_id JOIN subject AS sub ON m.sub_id = sub.sub_id
WHERE sub.sub_name = 'CF';

