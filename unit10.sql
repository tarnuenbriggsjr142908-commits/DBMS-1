10) PL/SQL block to Delete Employee Record
set serveroutput on;
DECLARE
    id NUMBER := &eid;
BEGIN
    DELETE FROM EMP WHERE EID = id;
    DBMS_OUTPUT.PUT_LINE('Employee record deleted');
END;
/