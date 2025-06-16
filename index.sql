-- Active: 1748020506171@@127.0.0.1@5432@ph@public


SELECT * FROM employees


EXPLAIN ANALYSE
SELECT * FROM employees WHERE employee_name = 'Bob Smith'

CREATE INDEX idk_employees_employee_name ON employees (employee_name);

SHOW data_directory;