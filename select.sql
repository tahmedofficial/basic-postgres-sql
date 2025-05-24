CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    birth_date DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students 
(first_name, last_name, age, grade, course, email, birth_date, blood_group, country)
VALUES
('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2005-04-15', 'O+', 'USA'),
('Jane', 'Smith', 21, 'B', 'Physics', 'jane.smith@example.com', '2004-08-10', 'A-', 'UK'),
('Alice', 'Johnson', 22, 'A', 'Biology', 'alice.johnson@example.com', '2003-07-22', 'B+', 'Canada'),
('Bob', 'Williams', 19, 'C', 'Chemistry', 'bob.williams@example.com', '2006-03-18', 'AB-', 'Australia'),
('Charlie', 'Brown', 20, 'B', 'Math', 'charlie.brown@example.com', '2005-11-09', 'O-', 'USA'),
('Emily', 'Davis', 23, 'A', 'English', 'emily.davis@example.com', '2002-05-30', 'A+', 'UK'),
('Frank', 'Miller', 21, 'B', 'Physics', 'frank.miller@example.com', '2004-01-14', 'B-', 'Germany'),
('Grace', 'Wilson', 20, 'C', 'Math', 'grace.wilson@example.com', '2005-12-01', 'O+', 'Canada'),
('Henry', 'Moore', 19, 'D', 'History', 'henry.moore@example.com', '2006-06-25', 'AB+', 'USA'),
('Ivy', 'Taylor', 22, 'A', 'Biology', 'ivy.taylor@example.com', '2003-10-03', 'O-', 'Australia'),
('Jack', 'Anderson', 21, 'B', 'Chemistry', 'jack.anderson@example.com', '2004-09-14', 'A+', 'USA'),
('Karen', 'Thomas', 20, 'A', 'Math', 'karen.thomas@example.com', '2005-02-17', 'B+', 'UK'),
('Leo', 'Jackson', 22, 'C', 'Physics', 'leo.jackson@example.com', '2003-12-28', 'O+', 'Canada'),
('Mia', 'White', 19, 'B', 'History', 'mia.white@example.com', '2006-04-20', 'A-', 'Australia'),
('Nina', 'Harris', 20, 'A', 'Biology', 'nina.harris@example.com', '2005-07-05', 'AB+', 'Germany'),
('Oscar', 'Martin', 21, 'C', 'English', 'oscar.martin@example.com', '2004-03-09', 'O-', 'USA'),
('Pam', 'Thompson', 23, 'B', 'Math', 'pam.thompson@example.com', '2002-11-19', 'A+', 'UK'),
('Quinn', 'Garcia', 20, 'A', 'Chemistry', 'quinn.garcia@example.com', '2005-01-07', 'B-', 'Canada'),
('Ryan', 'Martinez', 22, 'B', 'Physics', 'ryan.martinez@example.com', '2003-08-12', 'AB-', 'USA'),
('Sophia', 'Robinson', 21, 'A', 'Biology', 'sophia.robinson@example.com', '2004-06-15', 'O+', 'Australia');


SELECT * FROM students;

SELECT email as "Student email", age, birth_date FROM students;

SELECT * FROM students ORDER BY age DESC;

SELECT DISTINCT blood_group FROM students;

SELECT * FROM students WHERE country = 'USA';

SELECT * FROM students WHERE grade = 'B' and course = 'Physics';

SELECT * FROM students WHERE blood_group = 'A+';

SELECT * FROM students WHERE country = 'USA' OR country = 'Australia';

SELECT * FROM students WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

SELECT * FROM students WHERE age != 20;

SELECT * FROM students WHERE country <> 'USA';

SELECT upper(first_name) as uppercase_first_name, * FROM students;

SELECT concat(first_name,' ', last_name) FROM students;

SELECT length(first_name), first_name FROM students;

SELECT avg(age) FROM students;

SELECT max(age) FROM students;

SELECT min(age) FROM students;

SELECT sum(age) FROM students;

SELECT count(*) FROM students;

SELECT max(length(first_name)) FROM students;









