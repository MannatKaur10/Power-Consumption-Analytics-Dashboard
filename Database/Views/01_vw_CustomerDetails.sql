USE PowerConsumptionDB;
GO

CREATE VIEW vw_CustomerDetails
AS
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Gender,
    c.ConnectionStatus,
    cc.CategoryName,
    ci.CityName,
    s.StateName
FROM Customers c
INNER JOIN CustomerCategories cc
    ON c.CategoryID = cc.CategoryID
INNER JOIN Cities ci
    ON c.CityID = ci.CityID
INNER JOIN States s
    ON ci.StateID = s.StateID;
GO