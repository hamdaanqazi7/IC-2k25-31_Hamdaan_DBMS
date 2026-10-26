1. Create a simple table "countries".
--> create table countries(column_id int, country_name varchar(30), region_id int);
Output: Query OK, 0 rows affected (0.25 sec)

2. Create a simple table "countries" that already exists.
--> create table countries(column_id int, country_name varchar(30), region_id int);
Output: ERROR 1050 (42S01): Table 'countries' already exists

3. Create structure of the table dup_countries similar to countries. (Only Structure)
--> create table dup_countries like countries;
Output: Query OK, 0 rows affected (0.04 sec)

4. Create a copy of countries including structure and data both in a table named dup_countries.
--> create table dup_countries as select * from countries;
Output: Query OK, 0 rows affected (0.03 sec)
        Records: 0  Duplicates: 0  Warnings: 0

5. Create table countries set a constraint NULL.
--> create table countries(column_id int not null, country_name varchar(30), region_id int not null);
Output: Query OK, 0 rows affected (0.02 sec)

6. Create a table "jobs" with columns job_id, job_title, min_salary, max_salary where max salary cannot exceed 25000.
--> create table jobs(job_id int, job_title varchar(20), min_salary float, max_salary float, check (max_salary <= 25000));
Output: Query OK, 0 rows affected (0.05 sec)

7. Create a table countries where only "India" "Italy" "China" can be entered in the table.
--> create table countries(column_id int, country_name varchar(30), region_id int, check (country_name IN ("Italy", "India", "China")));
Output: Query OK, 0 rows affected (0.02 sec)
8. A SQL statement to create a table named job_histry, value against column end_date will be entered at the time of insertion to the format like '--/--/----'.
--> CREATE TABLE job_histry (employee_id int, start_date date, end_date varchar(10), job_id varchar(10), department_id int, constraint chk_end_date_format check (end_date like '__/__/____'));
Output: Query OK, 0 rows affected (0.118 sec)

9. A SQL statement to create a table named countries, no duplicate data against column country_id will be allowed at the time of insertion.
--> create table countries(country_id int, country_name varchar(30), region_id int, constraint pk_country_id primary key (country_id));
Output: Query OK, 0 rows affected (0.118 sec)

10. A SQL statement to create a table named jobs, the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns.
--> create table jobs(job_id varchar(10) not null primary key, job_title varchar(30) default ' ', min_salary int default 8000, max_salary int default null);
Output: Query OK, 0 rows affected (0.109 sec)

11. A SQL statement to create a table named countries, the country_id column will be a key field which will not contain any duplicate data at the time of insertion.
--> create table countries(country_id int, country_name varchar(30), region_id int, constraint pk_country_id primary key (country_id));
Output: Query OK, 0 rows affected (0.118 sec)

12. A SQL statement to create a table countries, the column country_id will be unique and store an auto incremented value.
--> create table countries(country_id int auto_increment primary key, country_name varchar(30), region_id int);
Output: Query OK, 0 rows affected (0.104 sec)

13. A SQL statement to create a table countries, the combination of columns country_id and region_id will be unique.
--> create table countries(country_id int, country_name varchar(30), region_id int, constraint uq_country_region primary key (country_id, region_id));
Output: Query OK, 0 rows affected (0.108 sec)

14. A SQL statement to create a table job_history, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table. 
--> create table job_history (employee_id int not null primary key, start_date date not null, end_date date not null, job_id varchar(10) not null, department_id int, constraint fk_job_id foreign key (job_id) references jobs(job_id));
Output: Query OK, 0 rows affected (0.210 sec)

15. A SQL statement to create a table employees, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which combinations are exists in the departments table.
--> create table employees (employee_id int not null primary key, first_name varchar(30) not null, last_name varchar(30) not null, email varchar(25) not null, phone_number varchar(20), hire_date date not null, job_id varchar(10) not null, salary decimal(8, 2), commission decimal(2, 2), manager_id decimal(6, 0) department_id int, constraint fk_dept_mgr foreign key (department_id, manager_id) references departments (department_id, manager_id));
Output: Query OK, 0 rows affected (0.213 sec)
