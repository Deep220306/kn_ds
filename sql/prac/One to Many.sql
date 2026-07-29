-- One to Many

CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);
INSERT INTO students (name)
VALUES ('Akarsh Vyas'), ('Simran Mehta'), ('Rohan Gupta');


CREATE TABLE marks (
  mark_id SERIAL PRIMARY KEY,
  student_id INT,
  subject VARCHAR(50),
  marks INT,
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);
INSERT INTO marks (student_id, subject, marks)
VALUES
(1, 'English', 85), (1, 'Math', 89), (1, 'Science', 92),
(2, 'English', 80), (2, 'Math', 75), (2, 'Science', 78),
(3, 'English', 72), (3, 'Math', 70), (3, 'Science', 74);

--joins (inner, left, right, full, cross)

--inner
select * from students s
join marks m
on s.student_id = m.student_id;

--left
insert into students (name)
values ('Kamlessssss');

select * from students s
left join marks m
on s.student_id = m.student_id;

--right
insert into marks (student_id, subject, marks)
values (4, 'English', 90);
select * from students s
right join marks m
on s.student_id = m.student_id;

--full
select * from students s
full join marks m
on s.student_id = m.student_id;

--cross
select * from students s
cross join marks m;