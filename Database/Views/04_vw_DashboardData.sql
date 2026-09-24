USE PowerConsumptionDB;
GO

CREATE VIEW vw_DashboardData
AS
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    cc.CategoryName,
    ci.CityName,
    s.StateName,
    mr.ReadingDate,
    mr.UnitsConsumed,
    mr.PeakDemand,
    mr.PowerFactor,
    b.BillAmount,
    b.PaymentStatus
FROM Customers c
INNER JOIN CustomerCategories cc
    ON c.CategoryID = cc.CategoryID
INNER JOIN Cities ci
    ON c.CityID = ci.CityID
INNER JOIN States s
    ON ci.StateID = s.StateID
INNER JOIN Meters m
    ON c.CustomerID = m.CustomerID
INNER JOIN MeterReadings mr
    ON m.MeterID = mr.MeterID
INNER JOIN Bills b
    ON c.CustomerID = b.CustomerID
    AND b.BillMonth = mr.ReadingDate;
GO