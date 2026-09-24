USE PowerConsumptionDB;
GO

CREATE TABLE CustomerCategories(
   CategoryID INT PRIMARY KEY IDENTITY(1,1),
   CategoryName VARCHAR(50) NOT NULL UNIQUE
);
GO