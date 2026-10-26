16. Two separate foreign keys — department_id and job_id
sql
CREATE TABLE employees (
    employee_id    INT NOT NULL,
    first_name     VARCHAR(25),
    last_name      VARCHAR(25) NOT NULL,
    email          VARCHAR(25) NOT NULL,
    phone_number   VARCHAR(20),
    hire_date      DATE NOT NULL,
    job_id         VARCHAR(10) NOT NULL,
    salary         DECIMAL(8,2),
    commission     DECIMAL(8,2),
    manager_id     DECIMAL(6,0),
    department_id  DECIMAL(4,0),
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES departments (department_id),
    FOREIGN KEY (job_id) REFERENCES jobs (job_id)
) ENGINE=InnoDB;


17. ON UPDATE CASCADE, ON DELETE RESTRICT (default)

Updates to jobs.job_id cascade into employees; deleting a referenced job is rejected.

sql
CREATE TABLE employees (
    employee_id  INT NOT NULL,
    first_name   VARCHAR(25),
    last_name    VARCHAR(25) NOT NULL,
    job_id       INT NOT NULL,
    salary       DECIMAL(8,2),
    PRIMARY KEY (employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs (job_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;


18. ON DELETE CASCADE, ON UPDATE RESTRICT

Deleting a job in jobs deletes matching rows in employees; updating job_id is rejected.

sql
CREATE TABLE employees (
    employee_id  INT NOT NULL,
    first_name   VARCHAR(25),
    last_name    VARCHAR(25) NOT NULL,
    job_id       INT NOT NULL,
    salary       DECIMAL(8,2),
    PRIMARY KEY (employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs (job_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
) ENGINE=InnoDB;


19. ON DELETE SET NULL, ON UPDATE SET NULL

job_id must be nullable for this to work — deleting or updating the referenced job resets employees.job_id to NULL.

sql
CREATE TABLE employees (
    employee_id  INT NOT NULL,
    first_name   VARCHAR(25),
    last_name    VARCHAR(25) NOT NULL,
    job_id       INT,
    salary       DECIMAL(8,2),
    PRIMARY KEY (employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs (job_id)
        ON DELETE SET NULL
        ON UPDATE SET NULL
) ENGINE=InnoDB;


20. ON DELETE NO ACTION, ON UPDATE NO ACTION

Both deletion of a referenced job and updates to job_id are rejected (functionally equivalent to RESTRICT in InnoDB, checked immediately since MySQL doesn't support deferred constraints).

sql
CREATE TABLE employees (
    employee_id  INT NOT NULL,
    first_name   VARCHAR(25),
    last_name    VARCHAR(25) NOT NULL,
    job_id       INT NOT NULL,
    salary       DECIMAL(8,2),
    PRIMARY KEY (employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs (job_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB;
