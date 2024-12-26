use db1;
select place as placecount,count(student_id) from student where age<21  group by place having count(student_id)<5;

select * from student where place in("kidanji","london");
select * from student where age between 20 and 34;
create index last_index on student(student_id);
SELECT * FROM student WHERE student_id = 's1';
SHOW INDEXES FROM student;


select * from student;