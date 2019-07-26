USE [master]
GO

If EXISTS (SELECT * FROM sys.databases WHERE NAME = N'CarDealership')
BEGIN
	EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'CarDealership';
	ALTER DATABASE CarDealership SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE CarDealership;
END

CREATE DATABASE CarDealership
GO

USE CarDealership
GO

CREATE TABLE InteriorColors(
	InteriorColorId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	InteriorColor VARCHAR(10) NOT NULL
)

CREATE TABLE ExteriorColors(
	ExteriorColorId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	ExteriorColor VARCHAR(10) NOT NULL
)

CREATE TABLE BodyStyles(
	BodyStyleId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BodyStyle VARCHAR(10) NOT NULL
)

CREATE TABLE Makes(
	MakeId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Make VARCHAR(10) NOT NULL
) 

CREATE TABLE Models(
	ModelId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Model VARCHAR(20) NOT NULL,
	MakeId INT NOT NULL FOREIGN KEY REFERENCES Makes
) 

CREATE TABLE Cars(
	CarId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Year INT NOT NULL,
	IsAutomatic BIT NOT NULL,
	Mileage INT NOT NULL,
	VIN VARCHAR(17) NOT NULL,
	IsFeatured BIT NOT NULL,
	IsNew BIT NOT NULL,
	MSRP MONEY Not Null,
	SalePrice MONEY Null,
	InteriorColorId INT NOT NULL FOREIGN KEY REFERENCES InteriorColors,
	ExteriorColorId INT NOT NULL FOREIGN KEY REFERENCES ExteriorColors,
	BodyStyleId INT NOT NULL FOREIGN KEY REFERENCES BodyStyles,
	ModelId INT NOT NULL FOREIGN KEY REFERENCES Models
)

CREATE TABLE PurchaseTypes(
	PurchaseTypeId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	PurchaseType VARCHAR(20) NOT NULL
)

CREATE TABLE Users(
	UserId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	UserRole VARCHAR(10) NOT NULL,
	EmployeeName VARCHAR(50) NOT NULL,
	IsDisabled BIT NOT NULL,
	UserEmailAddress VARCHAR(50) NOT NULL,
	UserPassword VARCHAR(15) NOT NULL
)

CREATE TABLE CarPurchases(
	CarPurchaseId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	PurchaseDate DATE NULL,
	SoldPrice MONEY NULL,
	CarsId INT NOT NULL FOREIGN KEY REFERENCES Cars,
	UserId INT NOT NULL FOREIGN KEY REFERENCES Users,
	PurchaseTypeId INT NOT NULL FOREIGN KEY REFERENCES PurchaseTypes
)

CREATE TABLE Customers(
	CustomerId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Name VARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(10) NULL,
	Email VARCHAR(50) NULL,
	Message TEXT NULL,
	StreetAddress VARCHAR(50) NULL,
	SecondAddress VARCHAR(20) NULL,
	City VARCHAR(50) NULL,
	State VARCHAR(2) NULL,
	ZipCode VARCHAR(5) NULL,
	CarPurchaseId INT NOT NULL FOREIGN KEY REFERENCES CarPurchases
)

CREATE TABLE Messages(
	EmailId	INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Name VARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(10) NULL,
	EmailAddress VARCHAR(50) NULL,
	Message VARCHAR(max) NULL
)