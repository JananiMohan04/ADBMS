INSERT INTO employee1 VALUES (103, 'Kumar', 28000);

SAVEPOINT s1;

UPDATE employee1
SET salary = 35000
WHERE emp_id = 103;

ROLLBACK TO s1;
