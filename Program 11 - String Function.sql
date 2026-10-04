-- CREATE TABLE
CREATE TABLE employee_string (
    id NUMBER,
    name VARCHAR2(30)
);

-- INSERT VALUES
INSERT INTO employee_string VALUES (1, 'Meena');
INSERT INTO employee_string VALUES (2, 'Rahul');
INSERT INTO employee_string VALUES (3, 'Suresh');

COMMIT;

-- DISPLAY TABLE
SELECT * FROM employee_string;

-- 1. UPPER
SELECT UPPER(name) AS uppercase
FROM employee_string;

-- 2. LOWER
SELECT LOWER(name) AS lowercase
FROM employee_string;

-- 3. INITCAP
SELECT INITCAP(name) AS capitalized
FROM employee_string;

-- 4. LENGTH
SELECT name, LENGTH(name) AS length
FROM employee_string;

-- 5. SUBSTR
SELECT name, SUBSTR(name, 1, 3) AS substring
FROM employee_string;

-- 6. CONCAT
SELECT CONCAT(name, ' CS') AS fullname
FROM employee_string;

-- 7. INSTR
SELECT name, INSTR(name, 'a') AS position
FROM employee_string;

-- 8. REPLACE
SELECT name, REPLACE(name, 'a', 'o') AS replaced
FROM employee_string;

-- 9. TRIM
SELECT TRIM('  Oracle Database  ') AS trimmed
FROM DUAL;

-- 10. LPAD
SELECT LPAD(name, 10, '*') AS left_padding
FROM employee_string;

-- 11. RPAD
SELECT RPAD(name, 10, '*') AS right_padding
FROM employee_string;

-- 12. REVERSE
SELECT REVERSE(name) AS reversed
FROM employee_string;
