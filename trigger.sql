use db2;
SET SQL_SAFE_UPDATES = 0;

DELIMITER $$

CREATE TRIGGER check_age_insert
BEFORE INSERT ON student
FOR EACH ROW
BEGIN
   IF NEW.age < 13 THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Age must be greater than or equal to 13';
   END IF;
END $$

DELIMITER ;
DELIMITER $$
create trigger insertage 
before insert on student
for each row
begin 
if new.age<13 then 
signal sqlstate '45000' set MESSAGE_TEXT='age must be greater than equlato 13';
end if;
end;

DELIMITER ;
DELIMITER $$

CREATE TRIGGER before_update_student
BEFORE UPDATE ON student
FOR EACH ROW
BEGIN
    IF NEW.age < 13 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Age must be greater than or equal to 13';
    END IF;
END$$

DELIMITER ;
-- Attempt to insert a student with age less than 13
INSERT INTO student (name, age)
VALUES ('John Doe', 12);
-- This will raise an error: ERROR 1644 (45000): Age must be greater than or equal to 13

-- Attempt to update a student's age to less than 13
UPDATE student
SET age = 12
WHERE student_id = 6;
-- This will raise an error: ERROR 1644 (45000): Age must be greater than or equal to 13


INSERT INTO student (name, age,grade,place) VALUES ('John Doe', 11,"A","un");
select * from student;


