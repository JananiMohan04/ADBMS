SET SERVEROUTPUT ON;

DECLARE
    str VARCHAR2(100) := '&str';
    rev VARCHAR2(100) := '';
BEGIN
    FOR i IN REVERSE 1..LENGTH(str) LOOP
        rev := rev || SUBSTR(str, i, 1);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Original String: ' || str);
    DBMS_OUTPUT.PUT_LINE('Reversed String: ' || rev);
END;
/
