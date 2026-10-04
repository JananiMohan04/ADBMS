-- CREATE TABLES

CREATE TABLE employee (
    emp_id NUMBER,
    emp_name VARCHAR2(30),
    branch_id NUMBER
);

CREATE TABLE branch (
    branch_id NUMBER,
    branch_name VARCHAR2(30)
);

-- INSERT VALUES

INSERT INTO employee VALUES (1, 'Meena', 201);
INSERT INTO employee VALUES (2, 'Rahul', 202);
INSERT INTO employee VALUES (3, 'Suresh', 203);
INSERT INTO employee VALUES (4, 'Divya', 204);

INSERT INTO branch VALUES (201, 'Chennai');
INSERT INTO branch VALUES (202, 'Bangalore');
INSERT INTO branch VALUES (203, 'Mumbai');
INSERT INTO branch VALUES (205, 'Hyderabad');

COMMIT;

-- DISPLAY TABLES

SELECT * FROM employee;

SELECT * FROM branch;


-- 1. INNER JOIN

SELECT employee.emp_id,
       employee.emp_name,
       branch.branch_name
FROM employee
INNER JOIN branch
ON employee.branch_id = branch.branch_id;


-- 2. LEFT JOIN

SELECT employee.emp_id,
       employee.emp_name,
       branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.branch_id = branch.branch_id;


-- 3. RIGHT JOIN

SELECT employee.emp_id,
       employee.emp_name,
       branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.branch_id = branch.branch_id;


-- 4. FULL OUTER JOIN

SELECT employee.emp_id,
       employee.emp_name,
       branch.branch_name
FROM employee
FULL OUTER JOIN branch
ON employee.branch_id = branch.branch_id;
