USE PowerConsumptionDB;
GO

INSERT INTO CustomerCategories (CategoryName)
VALUES
('Residential'),
('Commercial'),
('Industrial'),
('Agricultural');
GO

SELECT * FROM CustomerCategories;
DELETE FROM CustomerCategories;
DELETE FROM CustomerCategories;
DBCC CHECKIDENT ('CustomerCategories', RESEED, 0);
INSERT INTO CustomerCategories (CategoryName)
VALUES
('Residential'),
('Commercial'),
('Industrial'),
('Agricultural');
SELECT * FROM CustomerCategories;