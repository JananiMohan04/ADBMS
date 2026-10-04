CREATE TABLE student (
    sid NUMBER,
    sname VARCHAR2(30)
);

INSERT INTO student VALUES (1001, 'Kavitha');
INSERT INTO student VALUES (1002, 'Charumathi');

DELETE FROM student
WHERE sid = 102;

ROLLBACK;

SELECT * FROM student;
