USE PowerConsumptionDB;
GO

DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO MeterReadings
    (
        MeterID,
        ReadingDate,
        PreviousReading,
        CurrentReading,
        UnitsConsumed,
        PeakDemand,
        PowerFactor
    )
    VALUES
    (
        @i,
        DATEADD(DAY, -@i, GETDATE()),
        1000 + (@i * 10),
        1000 + (@i * 10) + (RAND() * 50),
        (RAND() * 50),
        (RAND() * 5),
        0.8 + (RAND() * 0.2)
    );

    SET @i = @i + 1;
END;
GO

SELECT COUNT(*) AS TotalMeterReadings FROM MeterReadings;