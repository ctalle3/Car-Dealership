USE CarDealership
GO

INSERT INTO InteriorColors
(InteriorColor)
VALUES
('Tan'),
('Black'),
('Gray'),
('Red');

INSERT INTO ExteriorColors
(ExteriorColor)
VALUES
('White'),
('Black'),
('Blue'),
('Red'),
('Silver'),
('Green'),
('Orange'),
('Yellow');

INSERT INTO BodyStyles
(BodyStyle)
VALUES
('Truck'),
('Sedan'),
('SUV'),
('Mini Van'),
('Coupe');

INSERT INTO Makes
(Make)
VALUES
('Ford'),
('Chevrolet'),
('Toyota'),
('Honda'),
('Dodge'),
('GMC'),
('Jeep');

INSERT INTO Models
(Model, MakeId)
VALUES
('F-150', 1),
('Taurus', 1),
('Escape', 1),
('Astro', 1),
('Mustang', 1),
('Silverado', 2),
('Cruze', 2),
('Tahoe', 2),
('Uplander', 2),
('Corvette', 2),
('Tundra', 3),
('Camry', 3),
('4Runner', 3),
('Sienna', 3),
('Yaris', 3),
('Ridgeline', 4),
('Accord', 4),
('Pilot', 4),
('Odyssey', 4),
('Civic', 4),
('Ram', 5),
('Charger', 5),
('Durango', 5),
('Caravan', 5),
('Dart', 5),
('Sierra', 6),
('Terrain', 6),
('Safari', 6),
('Gladiator', 7),
('Wrangler Unlimited', 7),
('Wrangler', 7);

INSERT INTO Cars
(Year, IsAutomatic, Mileage, VIN, IsFeatured, IsNew, MSRP, SalePrice, InteriorColorId, ExteriorColorId, BodyStyleId, ModelId)
VALUES
(2017, 1, 50000, '4F2YU081X2KM63680', 0, 0, 30000, null, 1, 5, 1, 1),
(2012, 1, 130000, '1GCCT14Z9N2122418', 0, 0, 15000, 13500, 1, 3, 2, 2),
(2010, 1, 150000, '4DRBUAAN17B589499', 0, 0, 5000, 3800, 2, 2, 3, 3),
(1999, 1, 220000, '1FDAW4GR9AEA39216', 0, 0, 1000, 800, 2, 6, 4, 4),
(2019, 0, 100, '1HD1BTY326Y071305', 0, 1, 50000, 45000, 3, 2, 5, 5),
(2019, 1, 50, '3C63R3GT5DG540067', 0, 1, 40000, 37000, 3, 7, 1, 6),
(2012, 1, 130000, 'JAACH15L6H5473938', 0, 0, 10000, null, 4, 8, 2, 7),
(2019, 1, 250, '1FMEU75E56UB27055', 1, 1, 48000, null, 4, 4, 3, 8),
(2005, 1, 180000, '2D4GZ57256H180849', 0, 0, 2000, 15000, 4, 2, 4, 9),
(2020, 0, 5, '1BAADCSA4LF059919', 1, 1, 60000, null, 2, 3, 5, 10),
(2020, 1, 0, 'WDBRN47J92A180928', 1, 1, 52000, 50000, 2, 1, 1, 11),
(2016, 1, 65000, '2C3KA53G46H157079', 0, 0, 20000, 18000, 3, 5, 2, 12),
(2018, 1, 30000, 'JA4MT21R74J093580', 0, 0, 34000, null, 1, 6, 3, 13),
(2013, 1, 100000, '1HTGGAHR0XH629680', 0, 0, 7000, 5500, 3, 2, 4, 14),
(2008, 1, 120000, '3B6KF26671M292084', 0, 0, 5500, null, 4, 1, 5, 15),
(2016, 1, 40000, '1GTJC33181F197578', 0, 0, 23000, 20000, 2, 5, 1, 16),
(2011, 1, 75000, '4V1JDBLFXPR815866', 0, 0, 17000, 15000, 2, 3, 2, 17),
(2017, 1, 35000, '1FDKF38G4LNA48517', 0, 0, 32000, 30000, 2, 2, 3, 18),
(2019, 1, 25, '1FMEU748X6ZA89398', 0, 1, 30000, null, 3, 7, 4, 19),
(2009, 1, 125000, '1BABNBXA57F215749', 0, 0, 5200, null, 1, 2, 5, 20),
(2014, 1, 80000, '2FWJAZCG97AW75259', 0, 0, 25000, 22000, 1, 3, 1, 21),
(2016, 1, 50000, '1GDJP32KXS3542428', 0, 0, 20000, null, 2, 1, 2, 22),
(2007, 1, 165000, '2B4GH55R1PR119443', 0, 0, 5000, 4500, 3, 1, 3, 23),
(2015, 1, 25000, 'WAU3GAFR4FA048198', 0, 0, 13000, 11500, 1, 5, 4, 24),
(2011, 1, 95000, 'JA7FK44E5FP435241', 0, 0, 7000, 6000, 3, 6, 5, 25),
(2011, 1, 125000, '1FTRW04W67KC42178', 0, 0, 16000, 15000, 4, 8, 1, 26),
(2014, 1, 110000, '1FMCU03B31KB93082', 0, 0, 15000, 14000, 4, 4, 3, 27),
(2005, 1, 200000, '1FTPX17L2YKA11520', 0, 0, 4000, 3500, 2, 2, 4, 28),
(2020, 1, 10, '1FABP13P4WW153074', 1, 1, 43000, null, 1, 2, 1, 29),
(2013, 1, 80000, '2C3ED46F8RH290823', 0, 0, 17000, 16000, 2, 3, 3, 30),
(2010, 0, 120000, '3VWRF31KX6M636001', 0, 0, 12000, 10000, 2, 1, 5, 31);

INSERT INTO PurchaseTypes
(PurchaseType)
VALUES
('Bank Finance'),
('Cash'),
('Dealer Finance');

INSERT INTO Users
(UserRole, EmployeeName, IsDisabled, UserEmailAddress, UserPassword)
VALUES
('Admin', 'Jim Pearson', 0,'jim@guildcars.com', 'testing123'),
('Admin', 'Tim Banks', 1, 'tim@guildcars.com', 'testing123'),
('Sales', 'John Duvall', 0, 'john@guildcars.com', 'testing123'),
('Sales', 'Don Rogers', 0, 'don@guildcars.com', 'testing123'),
('Sales', 'Amy King', 0, 'amy@guildcars.com', 'testing123'),
('Sales', 'Pam Halpert', 0, 'pam@guildcars.com', 'testing123');

INSERT INTO CarPurchases
(PurchaseDate, SoldPrice, CarsId, UserId, PurchaseTypeId)
VALUES
( '2019-02-12', 20000, 16, 4, 1),
( '2019-03-01', 12000, 2, 5, 2),
( '2019-04-03', 15000, 26, 6, 3),
( '2019-01-01', 40000, 29, 3, 3),
( '2019-05-05', 6000, 25, 3, 2);

INSERT INTO Customers
(Name, PhoneNumber, Message, StreetAddress, SecondAddress, City, State, ZipCode, CarPurchaseId)
VALUES
('Jacob Jenkins','2705551010', 'Thank you for the new car Amy!', '200 Frank St', null, 'Louisville', 'KY', '40202', 1),
('Chris Coolidge','5025552222', 'Love this truck!', '103 Market St', 'Apt 300', 'Louisville', 'KY', '40202', 2),
('Tom Timber','8595555505', null, '600 Rockford Lane', null, 'Louisville', 'KY', '40202', 3),
('Patty Phillips','5025552323', 'Best ride I''ve ever had.', '88 Bardstown Rd', null, 'Louisville', 'KY', '40202', 4),
('Brenda Beau','5025554545', null, '929 Taylorsville Rd', null, 'Louisville', 'KY', '40202', 5);

INSERT INTO Emails
(EmailAddress, EmailText)
VALUES
('pallen@yahoo.com', 'I''m interested in looking at the Silverado. Please contact me at 502-555-1990.'),
('rjenkins99@gmai.com', 'Please answer your phones. I''ve been calling all day.'),
('dylanj1@hotmail.com', 'Thanks again for all your help!');