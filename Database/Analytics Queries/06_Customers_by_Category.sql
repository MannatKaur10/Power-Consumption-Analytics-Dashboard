USE PowerConsumptionDB;
GO

SELECT
    cc.CategoryName,
    COUNT(c.CustomerID) AS TotalCustomers
FROM Customers c
INNER JOIN CustomerCategories cc
    ON c.CategoryID = cc.CategoryID
GROUP BY cc.CategoryName
ORDER BY TotalCustomers DESC;
GO