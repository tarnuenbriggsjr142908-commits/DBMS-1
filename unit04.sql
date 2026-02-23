--program to convert Feet into cm, inch, meter
set serveroutput on;
DECLARE
    feet NUMBER := &feet;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Centimeter = ' || (feet * 30.48));
    DBMS_OUTPUT.PUT_LINE('Inches     = ' || (feet * 12));
    DBMS_OUTPUT.PUT_LINE('Meters     = ' || (feet * 0.3048));
END;
/