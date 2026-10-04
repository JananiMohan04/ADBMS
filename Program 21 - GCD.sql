DECLARE
    num1 NUMBER :=:input_num1;
    num2 NUMBER :=:input_num2;
    remainder NUMBER;
    gcd NUMBER;
BEGIN
    WHILE num2 <> 0 LOOP
        remainder := MOD(num1, num2);
        num1 := num2;
        num2 := remainder;
    END LOOP;

    gcd := num1;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || gcd);
END;
/
