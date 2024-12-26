use db1;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50)
);

INSERT INTO users (user_id, user_name)
VALUES 
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'Diana');
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE
);

INSERT INTO orders (order_id, user_id, order_date)
VALUES 
(1, 1, '2024-12-01'),
(2, 3, '2024-12-02');
SELECT u.user_id, u.user_name
FROM users u
left JOIN orders o ON u.user_id = o.user_id
WHERE o.order_id IS NULL;
select * from users;
update  users  set user_name="dolly" where user_id=4;
select concat(upper(left(user_name,1)),substring(user_name,2)) as capitalized from users;
SELECT CONCAT(LOWER(substring(user_name, 1,1)),  UPPER(SUBSTRING(user_name, 2, 1)), SUBSTRING(user_name, 3) ) AS capitalized FROM users;



