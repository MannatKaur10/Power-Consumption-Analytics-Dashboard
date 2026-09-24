USE PowerConsumptionDB;
GO

SELECT
    AVG(UnitsConsumed) AS AverageUnits
FROM MeterReadings;
GO