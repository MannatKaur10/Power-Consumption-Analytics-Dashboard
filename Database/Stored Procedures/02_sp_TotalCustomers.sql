USE PowerConsumptionDB;
GO

CREATE PROCEDURE sp_TotalCustomers
AS
BEGIN
    SELECT
        COUNT(*) AS TotalCustomers
    FROM Customers;
END;
GO