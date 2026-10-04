
SET SERVEROUTPUT ON;

DECLARE
    N NUMBER := 10;
    A NUMBER := 0;
    B NUMBER := 1;
    C NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Fibonacci Series:');

    FOR I IN 1..N LOOP
        DBMS_OUTPUT.PUT_LINE(A);

        C := A + B;
        A := B;
        B := C;
    END LOOP;
END;
/
