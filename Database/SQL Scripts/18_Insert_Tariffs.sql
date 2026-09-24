USE PowerConsumptionDB;
GO

INSERT INTO Tariffs
(
    CategoryID,
    PricePerUnit,
    FixedCharge
)
VALUES
(1,6.50,100.00),
(2,8.20,250.00),
(3,10.50,500.00),
(4,4.80,75.00);
GO
SELECT * FROM Tariffs;

SELECT COUNT(*) AS Customers FROM Customers;
SELECT COUNT(*) AS Meters FROM Meters;
SELECT COUNT(*) AS Categories FROM CustomerCategories;
SELECT COUNT(*) AS Cities FROM Cities;
SELECT COUNT(*) AS States FROM States;