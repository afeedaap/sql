use db1;
create table employee(
id int auto_increment primary key,
name varchar(100) not null,
salary int not null

);

insert into employee(name,salary) values("john",4000),("Alex",25000),("simon",43000);

create table maritalstatus(
id int not null,
name varchar(100) not null,
maritalstatus varchar(100) not null

);
drop table maritalstatus;
insert into maritalstatus(id,name,maritalstatus)value(1,"john","married"),(3,"john","unmarried"),(4,"stella","unmarried");
select * from employee;
select * from maritalstatus;
select * from employee inner join maritalstatus on employee.id=maritalstatus.id;
select * from employee left join maritalstatus on employee.id=maritalstatus.id where maritalstatus.id is null;
select name from employee inner join maritalstatus on employee.id=maritalstatus.id where name like 'j%';
SELECT employee.name
FROM employee 
INNER JOIN maritalstatus 
ON employee.id = maritalstatus.id 
WHERE employee.name LIKE 'J%';
