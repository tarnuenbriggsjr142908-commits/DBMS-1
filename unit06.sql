--Program to generate numbers using LOOP, FOR, WHILE
set serveroutput on
DECLARE
    n NUMBER := &limit;
    i NUMBER := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- LOOP ---');
    LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
        EXIT WHEN i > n;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('--- FOR LOOP ---');
    FOR j IN 1..n LOOP
        DBMS_OUTPUT.PUT_LINE(j);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('--- WHILE LOOP ---');
    i := 1;
    WHILE i <= n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;
END;
/