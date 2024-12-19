use db1;
-- count
select count(age) from student;
select count(*) from student;
select sum(age) as totalage from student;
select sum(age) as totalage from student where age>24;
select sum(age*10) as totaage from student where age>24;
select * from student where student_name="afeeda";
select avg(age) as averageage from student;
select min(age) as minage from student;
select max(age) as maxage from student;
select * from student where place in("kariyad","kannur","uae");
select * from student where place not in("kariyad","kannur","uae");
-- between
select * from student where age not between 20 and 25;
select * from student where student_id between "s1" and "s5";
-- aliases
select student_id as id from student;
select * from student;




