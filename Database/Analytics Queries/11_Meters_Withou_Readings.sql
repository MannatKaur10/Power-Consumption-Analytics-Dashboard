USE PowerConsumptionDB;
GO

SELECT
    m.MeterID,
    m.MeterNumber
FROM Meters m
LEFT JOIN MeterReadings mr
    ON m.MeterID = mr.MeterID
WHERE mr.ReadingID IS NULL;
GO