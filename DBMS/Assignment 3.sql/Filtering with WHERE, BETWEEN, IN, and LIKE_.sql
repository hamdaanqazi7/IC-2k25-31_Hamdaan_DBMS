1. Salary NOT in the range $10,000–$15,000
sql
SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;
2. Employees in department 30 or 100, ascending
sql
SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (30, 100)
ORDER BY department_id ASC;
3. Salary NOT in $10,000–$15,000 AND in department 30 or 100
sql
SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000
  AND department_id IN (30, 100);
4. Employees hired in 1987
sql
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) = 1987;
5. First names containing both "b" and "c"
sql
SELECT first_name
FROM employees
WHERE first_name LIKE '%b%'
  AND first_name LIKE '%c%';
6. Programmers or Shipping Clerks, excluding specific salaries
sql
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('PROGRAMMER', 'SH_CLERK')
  AND salary NOT IN (4500, 10000, 15000);
7. Last names with exactly 6 characters
sql
SELECT last_name
FROM employees
WHERE LENGTH(last_name) = 6;
