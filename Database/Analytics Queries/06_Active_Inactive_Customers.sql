USE PowerConsumptionDB;
GO

SELECT
    ConnectionStatus,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY ConnectionStatus;
GO
SELECT *
FROM Customers;
