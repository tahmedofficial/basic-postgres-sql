-- Active: 1748020506171@@127.0.0.1@5432@ph

CREATE Table employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
)

CREATE Table departments ( dept INT, dept_name VARCHAR(50) )

INSERT INTO departments VALUES (102, 'markketing')

INSERT INTO departments VALUES (101, 'human resource')

SELECT * FROM post as p FULL OUTER JOIN "user" u on p.user_id = u.id;

INSERT INTO employees values (1, 'john doe', 111)

INSERT INTO employees VALUES (2, 'del carnegi', 112)

INSERT INTO employees values (3, 'james anderson', 113)

SELECT * FROM employees;

SELECT * FROM departments;

UPDATE employees set dept_id = 101 WHERE emp_id = 3;

SELECT * FROM employees CROSS JOIN departments;

SELECT * FROM employees NATURAL JOIN departments;

ALTER Table departments RENAME dept to dept_id;