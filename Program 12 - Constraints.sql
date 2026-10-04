-- CREATE TABLE

CREATE TABLE subject (
    course_id NUMBER,
    course_name VARCHAR2(30)
);

CREATE TABLE student (
    learner_id NUMBER,
    learner_name VARCHAR2(30),
    email VARCHAR2(50),
    age NUMBER,
    course_id NUMBER
);

-- INSERT VALUES

INSERT INTO subject VALUES (201, 'Information Technology');
INSERT INTO subject VALUES (202, 'Business Management');

INSERT INTO student VALUES (1, 'Meena', 'meena@gmail.com', 19, 201);
INSERT INTO student VALUES (2, 'Rahul', 'rahul@gmail.com', 22, 202);

COMMIT;

-- PRIMARY KEY

ALTER TABLE student
ADD CONSTRAINT pk_student
PRIMARY KEY (learner_id);

-- UNIQUE

ALTER TABLE student
ADD CONSTRAINT uq_student_email
UNIQUE (email);

-- FOREIGN KEY

ALTER TABLE student
ADD CONSTRAINT fk_student_course
FOREIGN KEY (course_id)
REFERENCES subject(course_id);

-- CHECK

ALTER TABLE student
ADD CONSTRAINT chk_student_age
CHECK (age >= 18);

-- SELECT

SELECT * FROM student;
