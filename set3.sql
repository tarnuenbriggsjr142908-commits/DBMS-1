set serveroutput on
DECLARE
    CURSOR c_highsal IS
        SELECT ename, deptno, sal
        FROM emp
        ORDER BY sal DESC;

    v_name emp.ename%TYPE;
    v_dept emp.deptno%TYPE;
    v_sal emp.sal%TYPE;

BEGIN
    OPEN c_highsal;

    LOOP
        FETCH c_highsal INTO v_name, v_dept, v_sal;
        EXIT WHEN c_highsal%NOTFOUND OR c_highsal%ROWCOUNT > 5;

        DBMS_OUTPUT.PUT_LINE(v_name || '  ' || v_dept || '  ' || v_sal);
    END LOOP;

    CLOSE c_highsal;
END;
/