DECLARE
    f   NUMBER := :Enter_num1;
    s   NUMBER := :Enter_num2;
    uoc NUMBER := :Enter_operation;

BEGIN
    IF uoc = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Add ' || (f + s));

    ELSIF uoc = 2 THEN
        DBMS_OUTPUT.PUT_LINE('Sub ' || (f - s));

    ELSIF uoc = 3 THEN
        DBMS_OUTPUT.PUT_LINE('Multiply ' || (f * s));

    ELSIF uoc = 4 THEN
        DBMS_OUTPUT.PUT_LINE('Division ' || (f / s));

    ELSIF uoc = 5 THEN
        DBMS_OUTPUT.PUT_LINE('Modulus ' || MOD(f, s));

    ELSIF uoc = 6 THEN
        IF f < s THEN
            DBMS_OUTPUT.PUT_LINE(s || ' is greater than ' || f);
        ELSE
            DBMS_OUTPUT.PUT_LINE(f || ' is greater than ' || s);
        END IF;

    ELSIF uoc = 7 THEN
        IF f != 0 AND f = 1 THEN
            DBMS_OUTPUT.PUT_LINE('True');
        ELSE
            DBMS_OUTPUT.PUT_LINE('False');
        END IF;
    END IF;
END;
