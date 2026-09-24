USE PowerConsumptionDB;
GO

SELECT
    SUM(BillAmount) AS TotalRevenue
FROM Bills;
GO