--program to display Male employees from HR Dept
set serveroutput on;
BEGIN
    FOR rec IN (
        SELECT * FROM EMP
        WHERE Gender = 'M' AND Deptname = 'HR'
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            rec.EID || ' ' || rec.EName || ' ' || rec.Deptname
        );
    END LOOP;
END;
/