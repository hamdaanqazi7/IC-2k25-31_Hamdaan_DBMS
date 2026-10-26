# SQL Queries 

## Q1. Find Employees Earning More Than Employee Bull

```sql
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE last_name = 'Bull'
);
```

## Q2. Find Employees Working in the IT Department

```sql
SELECT first_name, last_name
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT'
);
```

## Q3. Find Employees Who Have a Manager and Work in a USA-Based Department

```sql
SELECT first_name, last_name
FROM employees
WHERE manager_id IS NOT NULL
AND department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id IN (
        SELECT location_id
        FROM locations
        WHERE country_id = 'US'
    )
);
```

## Q4. Find Employees Who Are Managers

```sql
SELECT first_name, last_name
FROM employees
WHERE employee_id IN (
    SELECT DISTINCT manager_id
    FROM employees
    WHERE manager_id IS NOT NULL
);
```

## Q5. Find Employees Earning More Than the Average Salary

```sql
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

## Q6. Find Employees Earning the Minimum Salary for Their Job Grade

```sql
SELECT e.first_name, e.last_name, e.salary
FROM employees e
JOIN job_grades j
ON e.salary BETWEEN j.lowest_sal AND j.highest_sal
WHERE e.salary = j.lowest_sal;
```

## Q7. Find IT Employees Earning More Than the Average Salary

```sql
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
AND department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT'
);
```

## Q8. Find Employees Earning More Than Mr. Bell

```sql
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE last_name = 'Bell'
);
```

## Q9. Find Employees Earning the Minimum Salary in the Company

```sql
SELECT first_name, last_name, salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);
```
