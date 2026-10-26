-- 10. Department ID and total salary payable in each department
SELECT
    department_id,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- 11. Average salary for each job ID, excluding Programmer
SELECT
    job_id,
    AVG(salary) AS average_salary
FROM employees
WHERE job_id <> 'IT_PROG'
GROUP BY job_id;

-- 12. Total, maximum, minimum, and average salary job-wise in department 90
SELECT
    job_id,
    SUM(salary) AS total_salary,
    MAX(salary) AS maximum_salary,
    MIN(salary) AS minimum_salary,
    AVG(salary) AS average_salary
FROM employees
WHERE department_id = 90
GROUP BY job_id;

-- 13. Job ID and maximum salary where maximum salary is at least 4000
SELECT
    job_id,
    MAX(salary) AS maximum_salary
FROM employees
GROUP BY job_id
HAVING MAX(salary) >= 4000;

-- 14. Average salary for departments with more than 10 employees
SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 10;
