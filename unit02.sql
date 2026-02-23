--program to calculate Square and Cube
set serveroutput on;
DECLARE
    n NUMBER := &number;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Square = ' || (n*n));
    DBMS_OUTPUT.PUT_LINE('Cube   = ' || (n*n*n));
END;
/