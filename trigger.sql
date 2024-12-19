use db2;
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
INSERT INTO student (name, age,grade,place) VALUES ('John Doe', 11,"A","un");
select * from student;


