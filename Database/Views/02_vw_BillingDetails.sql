USE PowerConsumptionDB;
GO

CREATE VIEW vw_BillingDetails
AS
SELECT
    b.BillID,
    b.BillMonth,
    c.CustomerID,
    c.FirstName,
    c.LastName,
    cc.CategoryName,
    b.UnitsConsumed,
    b.BillAmount,
    b.PaymentStatus
FROM Bills b
INNER JOIN Customers c
    ON b.CustomerID = c.CustomerID
INNER JOIN CustomerCategories cc
    ON c.CategoryID = cc.CategoryID;
GO