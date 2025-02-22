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



select * from student limit 3;
select * from student where place="kidanji" limit 2;
select * from student order by place desc limit 3;
-- count
select place as placename ,count(*) from student group by place;
select place,count(place) from student group by place;
select count(age) from student;
select count(distinct age) from student;
-- sum
select sum(age) from student;
select sum(age) from student where place="kidanji";
select sum(age) as totalage from student ;
select student_id,sum(age) from student group by student_id;
SELECT SUM(Price * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;
-- average
select avg(age) as avearge from student;
select avg(age) as average from student where place ="kidanji";
select avg(age) from student where age < (select avg(age) from student where place="london");
select avg(age) from student;
select avg(age) from student where place="london";
select place,avg(age) as agee from student group by place;
select avg(age),student_id from student group by student_id;
-- like operator
select * from student where place like '%i';
select * from student where place like 'k_dan_i';
select * from student where place like '%i%';
select * from student where place like 'k%' or place like '%n' or place like '%m';
select *  from student where place like 'k%i'; 
select * from student where place like 'lo____%';
select * from studet where place like '_____ji';
SELECT * FROM student WHERE place LIKE '_____ji';
select * from student  where place like '_ondon';
select * from student where place like 'l___on';
select * from student  where place like '[KE]%';
-- IN OPERATOR
select * from student where place in('kidanji','london');
select * from student where place not in('kidanji','london');
select * from student;
select * from users where user_id not in(select user_id from orders );
show tables;
select * from users;
select * from orders;
-- SQL BETWEEN Operator
select * from student where age between 16 and 23;
select * from student where age not between 16 and 23;
select * from student where age between 16 and 23 and place in('kidanji','london');
select * from student where place between 'kariyad' and 'ernakulam' order by place;
-- SELECT * FROM Orders
-- WHERE OrderDate BETWEEN #01/12/2024# AND #07/31/1996#;
select CONCAT( student_name,",",age,",",place ) as result from student;
SELECT CONCAT(student_name, ",", age, ",", place) AS concatenated_result
FROM student;






