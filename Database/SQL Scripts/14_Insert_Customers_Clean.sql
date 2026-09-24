USE PowerConsumptionDB;
GO

INSERT INTO Customers 
(FirstName, LastName, Gender, DateOfBirth, PhoneNumber, Email, CityID, CategoryID, ConnectionDate, ConnectionStatus)
VALUES
('Amit', 'Sharma', 'Male', '1995-06-12', '9876543210', 'amit@gmail.com', 1, 1, '2022-01-15', 'Active'),
('Priya', 'Verma', 'Female', '1998-09-22', '9876543211', 'priya@gmail.com', 2, 1, '2022-02-10', 'Active'),
('Rahul', 'Patel', 'Male', '1992-03-18', '9876543212', 'rahul@gmail.com', 4, 2, '2022-03-05', 'Active'),
('Sneha', 'Iyer', 'Female', '1996-11-30', '9876543213', 'sneha@gmail.com', 5, 1, '2022-04-12', 'Active'),
('Vikram', 'Singh', 'Male', '1990-01-25', '9876543214', 'vikram@gmail.com', 10, 3, '2022-05-20', 'Active');
SELECT * FROM Customers;