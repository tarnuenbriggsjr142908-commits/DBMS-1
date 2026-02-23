--program to calculate Simple Interest
set serveroutput on;
DECLARE
    p NUMBER := &principal;
    r NUMBER := &rate;
    t NUMBER := &years;
    si NUMBER;
BEGIN
    si := (p * r * t) / 100;
    DBMS_OUTPUT.PUT_LINE('Simple Interest = ' || si);
END;
/