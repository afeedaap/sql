use db1;
select count(*) from student;
select place,student_name,count(*) as studentcount from student group by place,student_name having count(*)<=2;
select * from student;
alter table student drop column gender;
alter table student add column gender varchar(10) not null;
alter table student modify column gender int not null;
DELIMITER //

CREATE FUNCTION GetDiscount(price DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
  RETURN price * 0.10;
END;
//

DELIMITER ;

SELECT GetDiscount(20.00) as Discount;
SHOW FUNCTION STATUS WHERE Name = 'GetDiscount';
SELECT 200.00 * 0.10 AS Discount;
SHOW CREATE FUNCTION GetDiscount;
SELECT GetDiscount(200.00) AS Discount;
DROP FUNCTION IF EXISTS GetDiscount;

DELIMITER //

CREATE FUNCTION GetDiscount(price DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
  RETURN price * 0.10;
END;
//

DELIMITER ;

SELECT GetDiscount(200.00) AS Discount, NOW() AS CurrentTime;



