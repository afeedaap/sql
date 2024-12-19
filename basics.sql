use sample;
CREATE TABLE person (
    p_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
create table details(
person_id int,
place varchar(100) not null,
foreign key (person_id) references person(p_id)
);
select * from 