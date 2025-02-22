use db1;
show tables;
select * from student;
update student set marks=190 where student_id="s1";
select count(student_id),place from student where age <=50 group by place order by place desc ;


-- having
select count(student_id),place from student group by place having count(student_id) <5 order by count(student_id) desc;
-- exists 
select student_name from student where exists(select marks from student where marks>207); 

-- any operator
select student_name from student where student_id=any(select student_id from student where age <17);
select student_name from student where student_id=all(select student_id from student where age <17);


-- Copy only some columns into a new table
select * into copystudent from student where age>23;

CREATE TABLE copystudent AS
SELECT * 
FROM student 
WHERE age > 23;
select * from copystudent;

-- sql case
select student_id,age,
case
when age <18 then 'student is minor'
when age >18 then 'student is adult'
else 'student is 18'
end as agecategory from student;