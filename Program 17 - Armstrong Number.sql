CREATE OR REPLACE PROCEDURE check_armstrong(n IN NUMBER)
IS
    temp NUMBER;
    digit NUMBER;
    total NUMBER := 0;
BEGIN
    temp := n;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        total := total + POWER(digit, 3);
        temp := TRUNC(temp / 10);
    END LOOP;

    IF total = n THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is an Armstrong Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not an Armstrong Number');
    END IF;
END;
/
SET SERVEROUTPUT ON;

BEGIN
    check_armstrong(153);
END;
/
