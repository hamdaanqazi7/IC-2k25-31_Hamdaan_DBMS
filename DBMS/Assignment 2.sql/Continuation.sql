14. Full employee names (e.g. "Ellen Abel")
sql
SELECT CONCAT(first_name, ' ', last_name) AS employee_name
FROM employees;
15. First name with white space removed from both sides
sql
SELECT TRIM(first_name) AS first_name
FROM employees;
16. Length of first name and last name
sql
SELECT first_name, LENGTH(first_name) AS first_name_length,
       last_name, LENGTH(last_name) AS last_name_length
FROM employees;
17. Check if first_name contains numbers
sql
SELECT first_name
FROM employees
WHERE first_name REGEXP '[0-9]';
18. Select the first 10 records
sql
SELECT *
FROM employees
LIMIT 10;
19. Monthly salary (rounded to 2 decimal places)

Assumes salary stores the annual salary.

sql
SELECT employee_id, first_name, last_name,
       ROUND(salary / 12, 2) AS monthly_salary
FROM employees;
