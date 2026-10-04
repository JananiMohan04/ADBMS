-- CREATE TABLE

CREATE TABLE staff_salary (
    emp_id NUMBER,
    emp_name VARCHAR2(30),
    salary NUMBER,
    dept_id NUMBER
);

-- INSERT VALUES

INSERT INTO staff_salary VALUES (1, 'deepak', 30000, 101);
INSERT INTO staff_salary VALUES (2, 'ravi', 40000, 102);
INSERT INTO staff_salary VALUES (3, 'hema', 50000, 101);
INSERT INTO staff_salary VALUES (4, 'tara', 35000, 103);
INSERT INTO staff_salary VALUES (5, 'anu', 45000, 102);

COMMIT;

-- DISPLAY TABLE

SELECT * FROM staff_salary;


-- 1. COUNT
SELECT COUNT(*) AS total_employees
FROM staff_salary;


-- 2. SUM
SELECT SUM(salary) AS total_salary
FROM staff_salary;


-- 3. AVG
SELECT AVG(salary) AS average_salary
FROM staff_salary;


-- 4. MAX
SELECT MAX(salary) AS highest_salary
FROM staff_salary;


-- 5. MIN
SELECT MIN(salary) AS lowest_salary
FROM staff_salary;


-- 6. ALL AGGREGATE FUNCTIONS TOGETHER

SELECT COUNT(*) AS total_employees,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM staff_salary;
