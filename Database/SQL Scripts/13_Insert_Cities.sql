USE PowerConsumptionDB;
GO

INSERT INTO Cities (CityName, StateID)
VALUES
('Mumbai',1),
('Pune',1),
('Nagpur',1),

('Ahmedabad',2),
('Surat',2),
('Vadodara',2),

('Jaipur',3),
('Udaipur',3),
('Jodhpur',3),

('Bengaluru',4),
('Mysuru',4),

('Chennai',5),
('Coimbatore',5),

('New Delhi',6),

('Lucknow',7),
('Kanpur',7),

('Amritsar',8),
('Ludhiana',8);
GO
SELECT * FROM Cities;