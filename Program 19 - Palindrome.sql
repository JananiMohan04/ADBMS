DECLARE
    num NUMBER := :input_num;
    temp NUMBER;
    digit NUMBER;
    reverse_num NUMBER := 0;
BEGIN
    temp := num;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        reverse_num := reverse_num * 10 + digit;
        temp := TRUNC(temp / 10);
    END LOOP;

    IF num = reverse_num THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a Palindrome');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is Not a Palindrome');
    END IF;
END;
/
