1. Display names with column aliases
sql
SELECT first_name AS "First Name", last_name AS "Last Name"
FROM employees;
2. Unique department IDs
sql
SELECT DISTINCT department_id
FROM employees;
3. All employee details ordered by first name, descending
sql
SELECT *
FROM employees
ORDER BY first_name DESC;
4. Names, salary, and PF (15% of salary)
sql
SELECT first_name, last_name, salary, salary * 0.15 AS PF
FROM employees;
5. Employee ID, names, and salary in ascending order of salary
sql
SELECT employee_id, first_name, last_name, salary
FROM employees
ORDER BY salary ASC;
6. Total salaries payable to employees
sql
SELECT SUM(salary) AS total_salary
FROM employees;
7. Maximum and minimum salary
sql
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees;
8. Average salary and number of employees
sql
SELECT AVG(salary) AS average_salary, COUNT(*) AS number_of_employees
FROM employees;
9. Number of employees working with the company
sql
SELECT COUNT(*) AS total_employees
FROM employees;
10. Number of distinct jobs
sql
SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;
11. First names in upper case
sql
SELECT UPPER(first_name) AS first_name
FROM employees;
12. First 3 characters of first name
sql
SELECT SUBSTRING(first_name, 1, 3) AS first_name_short
FROM employees;
13. Calculate an arithmetic expression (171 × 214 + 625)

A standalone calculation — doesn't require any table, so SELECT is used with DUAL (Oracle/MySQL) or plainly (MySQL, PostgreSQL, SQL Server).

sql
SELECT 171 * 214 + 625 AS result;
 
