USE PowerConsumptionDB;
GO

SELECT
    s.StateName,
    COUNT(c.CustomerID) AS TotalCustomers
FROM Customers c
INNER JOIN Cities ci
    ON c.CityID = ci.CityID
INNER JOIN States s
    ON ci.StateID = s.StateID
GROUP BY s.StateName
ORDER BY TotalCustomers DESC;
GO