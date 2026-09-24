USE PowerConsumptionDB;
GO

SELECT
    MeterNumber,
    COUNT(*) AS TotalMeters
FROM Meters
GROUP BY MeterNumber
HAVING COUNT(*) > 1;
GO