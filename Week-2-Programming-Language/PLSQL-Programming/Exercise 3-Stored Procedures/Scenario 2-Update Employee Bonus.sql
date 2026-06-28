CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus
(
    p_Department IN VARCHAR2,
    p_Bonus IN NUMBER
)
AS
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * p_Bonus / 100)
    WHERE Department = p_Department;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Bonus updated successfully.');
END;
/