-- =========================================
-- NESTED SUBQUERY PROGRAM
-- =========================================

-- 1. CREATE TABLE

CREATE TABLE staff_subquery (
    emp_id NUMBER,
    emp_name VARCHAR2(30),
    salary NUMBER,
    dept_id NUMBER
);


-- 2. INSERT VALUES

INSERT INTO staff_subquery VALUES (1, 'Priya', 30000, 101);
INSERT INTO staff_subquery VALUES (2, 'Arun', 40000, 102);
INSERT INTO staff_subquery VALUES (3, 'Ravi', 50000, 101);
INSERT INTO staff_subquery VALUES (4, 'Kumar', 35000, 103);
INSERT INTO staff_subquery VALUES (5, 'Anu', 45000, 102);

COMMIT;


-- 3. DISPLAY ALL RECORDS

SELECT * FROM staff_subquery;

-- =========================================
-- 1. NESTED SUBQUERY
-- Employees whose salary is greater
-- than average salary
-- =========================================

SELECT emp_id, emp_name, salary FROM staff_subquery WHERE salary > ( SELECT AVG(salary)  FROM staff_subquery );


-- =========================================
-- 2. NESTED SUBQUERY
-- Employees who belong to the same
-- department as Priya
-- =========================================

SELECT emp_id, emp_name, dept_id FROM staff_subquery WHERE dept_id = ( SELECT dept_id FROM staff_subqueryWHERE emp_name = 'Priya');


-- =========================================
-- 3. NESTED SUBQUERY
-- Employee with the highest salary
-- =========================================

SELECT emp_id, emp_name, salary FROM staff_subquery WHERE salary = ( SELECT MAX(salary) FROM staff_subquery );


-- =========================================
-- 4. NESTED SUBQUERY
-- Employee with the lowest salary
-- =========================================

SELECT emp_id, emp_name, salary FROM staff_subquery WHERE salary = ( SELECT MIN(salary) FROM staff_subquery );
