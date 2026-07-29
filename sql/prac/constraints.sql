create table random(
id serial primary key,
name varchar(100) not null,
email text unique, 
created_at date default now(),
age int check (age>=18)
);

insert into random(name, age)
values('Deep', 21);

select * from random;



create table random2(
id serial primary key,
name varchar(100) not null,
email text unique not null, 
created_at date default now(),
age int check (age>=18)
);

insert into random2(name, email, age)
values('Deep', 'deep@gmail.com', 21);

select * from random2;
