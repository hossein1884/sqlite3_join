DROP TABLE IF EXISTS students;
CREATE TABLE IF NOT EXISTS students(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name varchar(20),
family varchar(30)
);

DROP TABLE IF EXISTS courses;
CREATE TABLE IF NOT EXISTS courses(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name varchar(20)
);




DROP TABLE IF EXISTS student_course;
CREATE TABLE IF NOT EXISTS student_course(
id INTEGER PRIMARY KEY AUTOINCREMENT,
student_id INTEGER,
course_id INTEGER
);


INSERT INTO students VALUES
(1,'a','aa'),
(2,'b','bb'),
(3,'c','cc'),
(4,'d','dd'),
(5,'e','ee');



INSERT INTO courses VALUES
(1,'c1'),
(2,'c2'),
(3,'c3'),
(4,'c4'),
(5,'c5'),
(6,'c6')
;








INSERT INTO student_course VALUES
(1,1,1),
(2,1,3),
(3,1,4),
(4,2,1),
(5,3,6),
(6,3,3),
(7,3,2),
(8,2,6),
(9,4,2);


SELECT * FROM students INNER JOIN student_course ON students.id=student_course.student_id INNER JOIN courses ON student_course.course_id=courses.id;
SELECT * FROM students LEFT JOIN student_course ON students.id=student_course.student_id LEFT JOIN courses ON student_course.course_id=courses.id;
SELECT * FROM students RIGHT JOIN student_course ON students.id=student_course.student_id RIGHT JOIN courses ON student_course.course_id=courses.id;