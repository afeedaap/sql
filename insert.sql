use db1;
insert into student(student_id,student_name,age,place) values("s7","rasmina",28,"cherapuram"),("s8","afsal",32,"kuninghad");
select * from student;
insert into student values ("s11","dilna",15,"kidanji");
select * from student where student_name="dilna";
-- null or isnull
select * from student where place is null;
select * from student where place is not null;
-- //update
update student set student_name="rana fathima " where student_id="s9";
update student set student_name="abc";
select * from student;
UPDATE student 
SET student_name = 'abc';
-- //delete
delete from student where student_id="s9";--  //delete single record using where
delete from capital ;   -- unsafe mode delete
drop table capital; -- delete table;;
SELECT TOP 2 * FROM student where place="kariyad";
SELECT * FROM student LIMIT 3;


select * from student limit 3;



-- SHOW TABLES;
-- create table student1 like student;
-- INSERT  student1 SELECT * FROM student;
-- SELECT student_id,student_name FROM student1;
-- select * from student where age=28
select * from student;

truncate student;
