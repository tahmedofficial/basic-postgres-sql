SHOW timezone;


CREATE Table timeZ (
    ts TIMESTAMP without time zone,
    tsz TIMESTAMP with time zone
);

INSERT INTO
    timeZ
VALUES (
        '2025-2-27 10:45:00',
        '2025-2-27 10:45:00'
    );

SELECT * FROM timeZ

SELECT now();

SELECT now()::date;

SELECT now()::TIME;

SELECT CURRENT_DATE; 

SELECT to_char(now(), 'ddd')

SELECT CURRENT_DATE - INTERVAL '10 year 3 month 5 day'

SELECT age(CURRENT_DATE, '1999/11/27')

SELECT * FROM students

SELECT *, age(CURRENT_DATE, birth_date) FROM students;

SELECT extract(YEAR FROM '2025-01-25'::date)

SELECT 'y'::BOOLEAN























