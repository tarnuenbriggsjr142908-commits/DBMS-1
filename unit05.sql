--program to convert Celsius to Fahrenheit
set serveroutput on;
DECLARE
    c NUMBER := &celsius;
    f NUMBER;
BEGIN
    f := (c * 9 / 5) + 32;
    DBMS_OUTPUT.PUT_LINE('Fahrenheit = ' || f);
END;
/