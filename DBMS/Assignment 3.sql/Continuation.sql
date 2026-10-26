8. Last names having 'e' as the third character
sql
SELECT last_name
FROM employees
WHERE last_name LIKE '__e%';
9. Jobs/designations available
sql
SELECT DISTINCT job_id
FROM employees;
10. Name, salary, and PF (15% of salary)
sql
SELECT first_name, last_name, salary, salary * 0.15 AS PF
FROM employees;
11. Employees with last name in a given list
sql
SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');
Content
1789015942054_mysql db assignment-2.docx

DOCX

15. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of inserti

PASTED
