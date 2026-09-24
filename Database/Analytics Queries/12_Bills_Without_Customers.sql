USE PowerConsumptionDB;
GO

SELECT
    b.BillID,
    b.CustomerID
FROM Bills b
LEFT JOIN Customers c
    ON b.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;
GO