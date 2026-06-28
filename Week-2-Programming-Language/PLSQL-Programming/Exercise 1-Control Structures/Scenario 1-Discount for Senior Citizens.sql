SET SERVEROUTPUT ON;

DECLARE
BEGIN
    FOR c IN (
        SELECT c.CustomerID, c.Age, l.InterestRate
        FROM Customers c
        JOIN Loans l
        ON c.CustomerID = l.CustomerID
    )
    LOOP
        IF c.Age > 60 THEN
            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = c.CustomerID;

            DBMS_OUTPUT.PUT_LINE('Discount applied for Customer ID: ' || c.CustomerID);
        END IF;
    END LOOP;

    COMMIT;
END;
/