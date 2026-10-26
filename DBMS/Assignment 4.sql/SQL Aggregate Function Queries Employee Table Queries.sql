-- 1. Number of distinct jobs available
SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;

-- 2. Total salaries payable
SELECT SUM(salary) AS total_salary
FROM employees;

-- 3. Minimum salary
SELECT MIN(salary) AS minimum_salary
FROM employees;

-- 4. Maximum salary of a Programmer
SELECT MAX(salary) AS maximum_programmer_salary
FROM employees
WHERE job_id = 'IT_PROG';

-- 5. Average salary and employee count in department 90
SELECT AVG(salary) AS average_salary, COUNT(*) AS employee_count
FROM employees
WHERE department_id = 90;

-- 6. Highest, lowest, total, and average salary
SELECT
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary
FROM employees;

-- 7. Number of employees for each job
SELECT job_id, COUNT(*) AS employee_count
FROM employees
GROUP BY job_id;

-- 8. Difference between highest and lowest salaries
SELECT MAX(salary) - MIN(salary) AS salary_difference
FROM employees;

-- 9. Manager ID and lowest salary under each manager
SELECT manager_id, MIN(salary) AS lowest_salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;
