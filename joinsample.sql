use db1;
create table category( category_id int auto_increment primary key,
category_name varchar(100) not null,
description varchar(100) not null
);
insert into category(category_name,description) values(	'Beverages','Soft drinks, coffees, teas, beers, and ales');
INSERT INTO category (category_name, description) values("Confections","Desserts, candies, and sweet breads");
create table products(product_id int auto_increment primary key,product_name varchar(100),category_id int,price int not null,foreign key(category_id) references category(category_id));

insert into products(product_name,category_id,price)values("chais",1,18);
insert into products(product_name,category_id,price)values("chang",1,19);
insert into products(product_name,category_id,price)values("caniseed syrup",2,30);
-- inner join
select products.product_id,products.product_name,category.category_name from products inner join category on products.category_id=category.category_id;
select products.product_id,products.product_name,category.category_name from products left join category on products.category_id=category.category_id;

select products.product_id,products.product_name,category.category_name from products 
inner join category on products.category_id=category.category_id;select * from category;
select * from products;
select category.category_name from category left join products on products.category_id=category.category_id where products.category_id is null;
select user_name from users left join orders on users.user_id=orders.user_id where orders.order_id is null;
select * from users;
select * from orders;
DESCRIBE products;
DESCRIBE category;



