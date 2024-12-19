use db1;
select * from student order by age asc;
select student_name,place,age from student order by age desc;
select * from student order by age,place;
select * from student order by place asc , age desc;
-- and operator
select * from student where place="kariyad" and student_name like "%a";
select * from student where place="kariyad" and age=28 and student_name like"%a";
select * from student where place="kariyad" and(student_name like "%a" or student_name like "%b");
-- or operator
select * from student where place="kariyad" or place="kannur";
select * from student
 where place="kariyad" or place="kannur" or place like "u%";
--  combining or and and operator
select * from student where place="kariyad" and(student_name like "%a" or age>20);
-- not operator
select * from student where not student_name like "%a";
select * from  student where  student_name not like "%a";
select * from student where age  not between 20 and 24;
select * from student where place not in ("kariyad","kannur");
select * from student where not age >22; 

