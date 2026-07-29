create table students (
student_id int,
name char(50),
age int,
grade char(1)
);

insert into students(name, age, grade)
values ('Deep', 21, 'A'),
('Diya', 19, 'A');

insert into students
values (3, 'Love', 19, 'F');

select * from students;

update students
set student_id = 1 where name = 'Deep';
update students 
set student_id = 2 where name = 'Diya';
select * from students; 

create table bills(
id serial,
product char(50)
);
insert into bills (product)
values('Ganja'),
('Daru'),
('Ciggerette');
select * from bills


create database data_types;