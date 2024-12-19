use db1;
create table student(
student_id varchar(10) not null,
student_name varchar(10) not null,
age int not null,
place varchar(10) not null,
primary key(student_id)




);
alter table student
modify student_name varchar(100),
modify place varchar(100);
insert into  student(student_id,student_name,age,place)
values ("s2","adhila",24,"kannur");
insert into  student(student_id,student_name,age,place)
values ("s3","anees",32,"uae");
select * from student ;
insert into student values("s4","bob",23,"kariyad"),("s5","rohith",20,"ernakulam"),("s6","nihala",21,"thalassery");
select student_name,age from student;
select student_name,age from student where place="kariyad";
select distinct place  from student;
select count(distinct place) from student;
select count(place) from student;
select place from student;
-- //where clause
select * from student where place="kariyad";
select * from student where student_id<>"s3"; -- //not equal