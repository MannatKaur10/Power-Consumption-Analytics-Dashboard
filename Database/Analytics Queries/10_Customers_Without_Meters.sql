USE PowerConsumptionDB;
GO

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName
FROM Customers c
LEFT JOIN Meters m
    ON c.CustomerID = m.CustomerID
WHERE m.MeterID IS NULL;
GO