set serveroutput on
DECLARE
    CURSOR c_emp(p_dept NUMBER) IS
        SELECT ename, sal
        FROM emp
        WHERE deptno = p_dept;

    v_total NUMBER := 0;
BEGIN
    FOR d IN (SELECT DISTINCT deptno FROM emp)
    LOOP
        v_total := 0;

        DBMS_OUTPUT.PUT_LINE('Department: ' || d.deptno);

        FOR e IN c_emp(d.deptno)
        LOOP
            DBMS_OUTPUT.PUT_LINE(e.ename || '  ' || e.sal);
            v_total := v_total + e.sal;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('Total Salary: ' || v_total);
        DBMS_OUTPUT.PUT_LINE('----------------------');
    END LOOP;
END;
/