USE PowerConsumptionDB;
GO

CREATE PROCEDURE sp_PaymentSummary
AS
BEGIN
    SELECT
        PaymentStatus,
        COUNT(*) AS TotalBills
    FROM Bills
    GROUP BY PaymentStatus;
END;
GO