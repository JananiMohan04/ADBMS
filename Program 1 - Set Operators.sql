create table employeeA (eid number(10),name varchar(30));
create table employeeB (eid number(10), name varchar(30));

-- INSERT VALUES
insert into employeeA values (101, 'Deepak');
insert into employeeA values (102, 'Gokul');
insert into employeeA values (103, 'Ravi');

insert into employeeB values (102, 'Gokul');
insert into employeeB values (103, 'Ravi');
insert into employeeB values (104, 'Arun');

commit;

-- DISPLAY BOTH TABLES
Select*from employeeA;
Select*from employeeB;

-- 1. UNION
Select*from employeeA UNION Select*from employeeB;

-- 2. UNION ALL
Select*from employeeA UNION ALL Select*from employeeB;

-- 3. INTERSECT
Select*from employeeA INTERSECT Select*from employeeB;

-- 4. MINUS
Select*from employeeA MINUS Select*from employeeB;
