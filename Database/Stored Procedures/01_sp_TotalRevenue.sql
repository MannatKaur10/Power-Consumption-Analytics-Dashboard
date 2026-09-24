USE PowerConsumptionDB;
GO

CREATE PROCEDURE sp_TotalRevenue
AS
BEGIN
    SELECT
        SUM(BillAmount) AS TotalRevenue
    FROM Bills;
END;
GO