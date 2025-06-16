-- Active: 1748020506171@@127.0.0.1@5432@ph@public

SELECT * FROM employees

CREATE Function emp_count () RETURNS INT LANGUAGE SQL as $$
SELECT count(*) FROM employees
$$

CREATE OR REPLACE FUNCTION delete_emp(p_emp_id INT)RETURNS void LANGUAGE SQL as $$
DELETE FROM employees WHERE employee_id = p_emp_id;
$$

SELECT emp_count ()

SELECT delete_emp (16)

CREATE Procedure remove_emp(p_emp_id INT) LANGUAGE plpgsql as $$
    DECLARE
        test_var INT
    BEGIN
        SELECT employee_id INTO TEST_VAR FROM employees WHERE employee_id = p_emp_id;
        DELETE FROM employees WHERE employee_id = test_var;
        RAISE NOTICE 'employee removed successfully'
    END
$$;


CALL remove_emp (5)