-- Active: 1748020506171@@127.0.0.1@5432@ph

SELECT * FROM students;

SELECT * FROM students GROUP BY country;
SELECT country, count(*), avg(age) FROM students GROUP BY country;

SELECT country, count(*), avg(age) FROM students GROUP BY country HAVING avg(age)>20;

SELECT extract(year FROM birth_date) as birth_year, count(*) FROM students GROUP BY birth_year;
















