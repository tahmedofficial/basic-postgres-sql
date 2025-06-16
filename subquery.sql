-- Active: 1748020506171@@127.0.0.1@5432@ph@public

CREATE Table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
)

DROP Table employees

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES 
('Alice Johnson', 'HR', 52000.00, '2020-03-15'),
('Bob Smith', 'IT', 75000.00, '2019-07-22'),
('Charlie Davis', 'Finance', 68000.00, '2021-01-10'),
('Diana Ross', 'Marketing', 60000.00, '2018-05-12'),
('Ethan Brown', 'Sales', 72000.00, '2022-09-05'),
('Fiona Adams', 'IT', 79000.00, '2020-11-30'),
('George Wilson', 'HR', 51000.00, '2023-02-18'),
('Hannah Moore', 'Finance', 67000.00, '2017-08-24'),
('Ian Taylor', 'Marketing', 58000.00, '2021-06-19'),
('Julia Clark', 'Sales', 73000.00, '2019-04-01');


INSERT INTO
    employees (
        employee_name,
        department_name,
        salary,
        hire_date
    )
VALUES (
        'Alice Johnson',
        'HR',
        52000.00,
        '2021-01-15'
    ),
    (
        'Bob Smith',
        'Engineering',
        75000.50,
        '2020-03-22'
    ),
    (
        'Charlie Brown',
        'Marketing',
        60000.00,
        '2019-06-10'
    ),
    (
        'Diana Prince',
        'Finance',
        83000.25,
        '2022-07-01'
    ),
    (
        'Ethan Hunt',
        'Security',
        70000.00,
        '2020-11-30'
    ),
    (
        'Fiona Gallagher',
        'Sales',
        58000.00,
        '2021-04-18'
    ),
    (
        'George Miller',
        'Engineering',
        72000.00,
        '2022-01-20'
    ),
    (
        'Hannah Lee',
        'HR',
        51000.00,
        '2023-05-09'
    ),
    (
        'Ivan Petrov',
        'IT',
        67000.75,
        '2021-09-13'
    ),
    (
        'Jasmine Khan',
        'Engineering',
        79000.00,
        '2018-02-25'
    ),
    (
        'Kevin Adams',
        'Finance',
        88000.00,
        '2017-12-05'
    ),
    (
        'Lena Torres',
        'Marketing',
        61000.20,
        '2020-08-17'
    ),
    (
        'Mohammed Ali',
        'Sales',
        55000.00,
        '2019-10-08'
    ),
    (
        'Nina Lopez',
        'IT',
        64000.00,
        '2022-03-29'
    ),
    (
        'Oscar White',
        'Security',
        73000.00,
        '2021-12-01'
    ),
    (
        'Paula Green',
        'HR',
        50000.00,
        '2023-07-04'
    ),
    (
        'Quentin Blake',
        'Engineering',
        77000.00,
        '2018-09-23'
    ),
    (
        'Rita Ora',
        'Marketing',
        62000.00,
        '2020-05-30'
    ),
    (
        'Steve Rogers',
        'Security',
        75000.00,
        '2016-01-11'
    ),
    (
        'Tina Turner',
        'Sales',
        59000.00,
        '2023-02-14'
    );

SELECT * FROM employees

SELECT * FROM employees WHERE salary > (SELECT max(salary) FROM employees WHERE department_name= 'HR');

SELECT max(salary) FROM employees WHERE department_name = 'HR';

SELECT *, (SELECT sum(salary) FROM employees) FROM employees

SELECT department_name, sum(salary) FROM employees GROUP BY department_name

SELECT department_name FROM (SELECT department_name, sum(salary) FROM employees GROUP BY department_name)

SELECT department_name FROM employees WHERE department_name LIKE '%R%';

SELECT employee_name, salary, department_name FROM employees WHERE department_name in (SELECT department_name FROM employees WHERE department_name LIKE '%R%')












