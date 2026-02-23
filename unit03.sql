--program to calculate Discount Amount (Rs.)
set serveroutput on;
DECLARE
    pname VARCHAR2(20) := '&product_name';
    qty NUMBER := &quantity;
    price NUMBER := &price;
    discount_per NUMBER := &discount_percent;
    total NUMBER;
    discount_amt NUMBER;
BEGIN
    total := qty * price;
    discount_amt := total * discount_per / 100;

    DBMS_OUTPUT.PUT_LINE('Product Name : ' || pname);
    DBMS_OUTPUT.PUT_LINE('Total Amount : ' || total);
    DBMS_OUTPUT.PUT_LINE('Discount Rs. : ' || discount_amt);
END;
/