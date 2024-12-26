use db2;
create table country(
country_code varchar(50) not null,
country_name varchar(100) not null,
primary key(country_code)
);
insert into country
values
("in","india"),
("sl","srilanka"),
("pk","pakistan"),
("bn","bangladesh"),
("np","nepal");
select * from country;
create table capital(
capital_id varchar(10) not null,
country_code varchar(10),
capital_name varchar(100),
primary key(capital_id),
foreign key (country_code) references country(country_code)
);
insert into capital values("c2","pk","islamabad"),("c3","np","kathmandu");
select * from capital;
-- inner join
select * from country inner join capital on country.country_code=capital.country_code;
select country.country_code,country.country_name,capital.capital_name from country inner join capital 
on country.country_code=capital.country_code;
select country.country_name,capital.capital_name from country inner join capital on country.country_code=capital.country_code;
-- //leftjoin
select * from country left join capital on country.country_code=capital.country_code;
-- right join
select * from country right join capital on country.country_code=capital.country_code;
-- full join
select * from country full join capital on country.country_code=capital.country_code;
SELECT *
FROM country
LEFT JOIN capital ON country.country_code = capital.country_code
UNION
SELECT *
FROM country
RIGHT JOIN capital ON country.country_code = capital.country_code;
-- croos join
select country.country_name,capital.capital_name from country cross join capital;
-- self join
drop table employee;
create table employee(emp_id int not null,name varchar(10),manager_id int );
insert into employee values (1,"alice",null),(2,"bob",1),(3,"charlie",1),(4,"david",2);
select * from employee;
select e1.name as manager,e2.name as employee from employee e1 left join employee e2 on e1.manager_id=e2.emp_id;