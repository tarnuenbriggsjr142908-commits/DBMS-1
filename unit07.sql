set serveroutput on;
DECLARE
    rno RESULT.Rollno%TYPE := rollon;
    total NUMBER;
    per NUMBER;
    grade VARCHAR2(5);
BEGIN
    SELECT Sub1+Sub2+Sub3+Sub4+Sub5
    INTO total
    FROM RESULT
    WHERE Rollno = rno;

    per := total / 5;

    IF per >= 75 THEN
        grade := 'A';
    ELSIF per >= 60 THEN
        grade := 'B';
    ELSIF per >= 50 THEN
        grade := 'C';
    ELSE
        grade := 'FAIL';
    END IF;

    UPDATE RESULT
    SET Total = total, Per = per, Grade = grade
    WHERE Rollno = rno;

    DBMS_OUTPUT.PUT_LINE('Total = ' || total);
    DBMS_OUTPUT.PUT_LINE('Percentage = ' || per);
    DBMS_OUTPUT.PUT_LINE('Grade = ' || grade);
END;
/