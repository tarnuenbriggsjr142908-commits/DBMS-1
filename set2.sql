set serveroutput on
DECLARE
    CURSOR c_emp IS
        SELECT empno, ename, sal
        FROM emp
        WHERE deptno = 20
        FOR UPDATE;

    v_empno emp.empno%TYPE;
    v_ename emp.ename%TYPE;
    v_sal emp.sal%TYPE;

BEGIN
    OPEN c_emp;

    IF c_emp%ISOPEN THEN
        LOOP
            FETCH c_emp INTO v_empno, v_ename, v_sal;
            EXIT WHEN c_emp%NOTFOUND;

            UPDATE emp
            SET sal = sal * 1.05
            WHERE CURRENT OF c_emp;

            INSERT INTO emp_update(empno, update_date)
            VALUES(v_empno, SYSDATE);

        END LOOP;
    END IF;

    CLOSE c_emp;

    DBMS_OUTPUT.PUT_LINE('Salary updated for Dept 20 employees');

END;
/