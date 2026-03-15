set serveroutput on
BEGIN
    FOR rec IN (
        SELECT ename, sal
        FROM emp
        ORDER BY sal DESC
    )
    LOOP
        EXIT WHEN rec%ROWCOUNT > 3;

        DBMS_OUTPUT.PUT_LINE(rec.ename || '  ' || rec.sal);
    END LOOP;
END;
/