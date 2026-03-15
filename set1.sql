--program of Implicit Cursor using SQL%ROWCOUNT
set serveroutput on
DECLARE
BEGIN
    UPDATE emp
    SET sal = sal * 1.10
    WHERE deptno = 10;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employees salary updated in Dept 10');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employees found in Dept 10');
    END IF;
END;
/