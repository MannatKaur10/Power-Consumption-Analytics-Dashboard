USE PowerConsumptionDB;
GO

CREATE VIEW vw_MeterReadings
AS
SELECT
    mr.ReadingID,
    mr.ReadingDate,
    m.MeterNumber,
    c.CustomerID,
    c.FirstName,
    c.LastName,
    mr.UnitsConsumed,
    mr.PeakDemand,
    mr.PowerFactor
FROM MeterReadings mr
INNER JOIN Meters m
    ON mr.MeterID = m.MeterID
INNER JOIN Customers c
    ON m.CustomerID = c.CustomerID;
GO