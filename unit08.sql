set serveroutput on;
DECLARE
    eid EMP.EID%TYPE := &eid;
    basic EMP.BasicSal%TYPE;
    gross NUMBER;
BEGIN
    SELECT BasicSal INTO basic
    FROM EMP
    WHERE EID = eid;

    gross := basic + (basic*0.5) + (basic*0.15) + 500 - (basic*0.10);

    DBMS_OUTPUT.PUT_LINE('Gross Salary = ' || gross);
END;
/