create database my_database;

create table Class(
  id int, 
  name varchar(45)
);

create table Teacher(
  id int, 
  name varchar(45), 
  age int, 
  country varchar(45)
);

insert into class(id, name) 
values 
  (1, 'Ngoc Hau'), 
  (2, 'Van Hung'), 
  (3, 'Duc Vu'), 
  (4, 'Ngoc Vu');
  
insert into teacher(id, name, age, country) 
values 
  (1, 'Chanh Tran', 37, 'Viet Nam'), 
  (2, 'Quang NN', 27, 'Viet Nam');
  
select 
  * 
from 
  Class;
  
select 
  * 
from 
  Teacher;
