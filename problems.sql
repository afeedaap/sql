use db1;

select max(age) as maxage from student where age<(select max(age) from student);
select * from student order by age desc limit 1 offset 1;
update student set age=50 where student_id="s10";
alter table student change student_id id varchar(100);
select avg(age) as averageage,place from student group by place ;
select * from test;
alter table test  change name names varchar(100);
alter table test add column  mark int not null;
alter table modify mark varchar(100) not null;
update test  set mark=100;
ALTER TABLE test MODIFY mark VARCHAR(100) NOT NULL;
DESCRIBE test;
delete from test where gender="male";
