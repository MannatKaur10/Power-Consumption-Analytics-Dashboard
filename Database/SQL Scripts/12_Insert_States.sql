USE PowerConsumptionDB;
GO

INSERT INTO States (StateName, Region)
VALUES
('Maharashtra','West'),
('Gujarat','West'),
('Rajasthan','North'),
('Karnataka','South'),
('Tamil Nadu','South'),
('Delhi','North'),
('Uttar Pradesh','North'),
('Punjab','North');
GO
SELECT * FROM States;