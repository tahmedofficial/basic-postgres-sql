-- Active: 1748020506171@@127.0.0.1@5432@ph@public

CREATE Table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments (department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)

DROP Table departments


CREATE Table departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)

insert INTO
    departments (department_name)
VALUES ('HR'),
    ('Marketing'),
    ('Finance'),
    ('IT'),
    ('Sales'),
    ('Engineering'),
    ('Customer Support'),
    ('Adninstration'),
    ('Research'),
    ('Quality Assurance');

INSERT INTO
    employees (
        employee_name,
        department_id,
        salary,
        hire_date
    )
VALUES (
        'Alice Johnson',
        1,
        52000.00,
        '2021-03-15'
    ),
    (
        'Bob Smith',
        2,
        48000.00,
        '2020-06-10'
    ),
    (
        'Charlie Davis',
        3,
        61000.00,
        '2019-11-01'
    ),
    (
        'Diana Lee',
        1,
        54000.00,
        '2022-01-20'
    ),
    (
        'Edward Kim',
        4,
        57000.00,
        '2023-07-12'
    ),
    (
        'Fiona Brown',
        5,
        50000.00,
        '2020-09-05'
    ),
    (
        'George Wilson',
        2,
        46000.00,
        '2021-04-25'
    ),
    (
        'Hannah White',
        3,
        59000.00,
        '2023-02-14'
    ),
    (
        'Ian Clark',
        4,
        62000.00,
        '2018-12-30'
    ),
    (
        'Julia Adams',
        1,
        53000.00,
        '2022-06-18'
    ),
    (
        'Kevin Moore',
        5,
        51000.00,
        '2020-10-10'
    ),
    (
        'Laura Green',
        2,
        55000.00,
        '2021-08-09'
    ),
    (
        'Michael Scott',
        3,
        64000.00,
        '2023-05-03'
    ),
    (
        'Natalie Brooks',
        4,
        58000.00,
        '2022-11-21'
    ),
    (
        'Oscar Reed',
        1,
        60000.00,
        '2019-03-28'
    );

SELECT * FROM employees

SELECT * FROM departments

SELECT *
FROM employees
    JOIN departments ON employees.department_id = departments.department_id

SELECT * FROM employees JOIN departments USING (department_id)

SELECT department_name, round(avg(salary)) as avg_salary
FROM employees
    JOIN departments USING (department_id)
GROUP BY (department_name)

SELECT department_name, count(employee_name)
FROM employees
    JOIN departments USING (department_id)
GROUP BY (department_name)

SELECT department_name, round(avg(salary)) as avg_salary
FROM employees
    JOIN departments USING (department_id)
GROUP BY (department_name)
ORDER BY (avg_salary) DESC
LIMIT 1


SELECT extract(
        YEAR
        FROM hire_date
    ) as hire_year, count(employee_id)
FROM employees
GROUP BY (hire_year)

CREATE Table orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
)

insert INTO
    orders (
        customer_id,
        order_date,
        total_amount
    )
VALUES (1, '2025-06-01', 250.75),
    (2, '2025-04-02', 120.00),
    (3, '2025-06-03', 315.50),
    (1, '2025-05-04', 89.99),
    (4, '2025-06-04', 450.00),
    (2, '2025-06-05', 199.95),
    (5, '2025-03-06', 60.00),
    (6, '2025-03-06', 132.40),
    (3, '2025-06-07', 275.00),
    (7, '2025-06-07', 80.00),
    (8, '2025-06-08', 400.00),
    (4, '2025-06-08', 145.25),
    (9, '2025-05-09', 210.10),
    (6, '2025-05-09', 99.99),
    (10, '2025-06-10', 310.00);

DROP Table orders

SELECT * FROM orders

SELECT
    customer_id,
    count(order_id) as total_order,
    sum(total_amount) as total_spent
FROM orders
GROUP BY
    customer_id
HAVING
    count(order_id) > 2;

SELECT extract(
        MONTH
        FROM order_date
    ) as month, sum(total_amount)
FROM orders
WHERE
    extract(
        YEAR
        FROM order_date
    ) = 2025
GROUP BY
    MONTH
