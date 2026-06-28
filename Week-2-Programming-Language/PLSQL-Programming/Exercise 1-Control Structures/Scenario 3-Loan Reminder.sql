SET SERVEROUTPUT ON;

DECLARE
BEGIN
    FOR l IN (
        SELECT c.Name, lo.DueDate
        FROM Customers c
        JOIN Loans lo
        ON c.CustomerID = lo.CustomerID
        WHERE lo.DueDate BETWEEN SYSDATE AND SYSDATE + 30
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Loan payment is due for '
            || l.Name ||
            ' on ' ||
            TO_CHAR(l.DueDate,'DD-MON-YYYY')
        );
    END LOOP;
END;
/