
SET SERVEROUTPUT ON;

CREATE TABLE employee1 (
    eid NUMBER,
    ename VARCHAR2(30),
    salary NUMBER
);

INSERT INTO employee1 VALUES (101, 'Ravi', 15000);
INSERT INTO employee1 VALUES (102, 'Priya', 20000);
INSERT INTO employee1 VALUES (103, 'Arun', 25000);

SELECT * FROM employee1;

CREATE OR REPLACE TRIGGER emp_trigger
BEFORE INSERT OR UPDATE ON employee1
DECLARE
    vmsg VARCHAR2(30) := 'Trigger Fired: ';
BEGIN
    IF INSERTING THEN
        DBMS_OUTPUT.PUT_LINE(vmsg || 'Record Inserted');

    ELSIF UPDATING THEN
        DBMS_OUTPUT.PUT_LINE(vmsg || 'Record Updated');
    END IF;
END;
/

INSERT INTO employee1 VALUES (104, 'Kumar', 30000);

UPDATE employee1
SET salary = 35000
WHERE eid = 104;

SELECT * FROM employee1;
