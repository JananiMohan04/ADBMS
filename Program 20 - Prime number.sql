DECLARE
    num NUMBER := :input_num;
    i NUMBER;
    flag NUMBER := 0;
BEGIN
    IF num <= 1 THEN
        flag := 1;
    ELSE
        i := 2;

        WHILE i <= SQRT(num) LOOP
            IF MOD(num, i) = 0 THEN
                flag := 1;
                EXIT;
            END IF;

            i := i + 1;
        END LOOP;
    END IF;

    IF flag = 0 THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a Prime Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is Not a Prime Number');
    END IF;
END;
/
