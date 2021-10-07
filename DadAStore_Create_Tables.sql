CREATE Table dbo.DEPARTMENTS(
	DepartmentID uniqueidentifier NOT NULL Primary Key,
	DepartmentName varchar(25) NOT NULL,
	DepartmentDescription varchar(50) NOT NULL,
)


CREATE Table dbo.CATEGORIES(
	CategoryID uniqueidentifier NOT NULL Primary Key,
	CategoryName varchar(25) NOT NULL,
	CategoryDescription varchar(50) NOT NULL,
	DepartmentID uniqueidentifier NOT NULL,
	CONSTRAiNT FK_DepartmentID FOREIGN KEY (DepartmentID)
	REFERENCES dbo.DEPARTMENTS (DepartmentID)
)

CREATE Table dbo.ITEMS (
	ItemID uniqueidentifier NOT NULL Primary Key,
	ItemName varchar(25) NOT NULL,
	ItemDescription varchar(50) NOT NULL,
	ItemPrice decimal(30, 2) NOT NULL,
	CategoryID uniqueidentifier NOT NULL,
	CONSTRAINT FK_CategoryID FOREIGN KEY (CategoryID)
	REFERENCES dbo.CATEGORIES (CategoryID),
)

CREATE Table dbo.PAYMENTTYPES (
	PaymentID uniqueidentifier NOT NULL Primary Key,
	PaymentType varchar(25) NOT NULL
)

CREATE Table dbo.USERS (
	UserID uniqueidentifier NOT NULL Primary Key,
	UserFirst varchar(25) NOT NULL,
	UserLast varchar(25) NOT NULL,
	UserAddress1 varchar(50) NOT NULL,
	UserAddress2 varchar(25) NULL,
	UserCity varchar(50) NOT NULL,
	UserZipCode int NOT NULL,
	UserState varchar(50) NOT NULL,
	PaymentID uniqueidentifier NOT NULL,
	CONSTRAINT FK_PaymentID FOREIGN KEY (PaymentID)
	REFERENCES dbo.PAYMENTTYPES (PaymentID)
)

CREATE Table dbo.ORDERS (
	OrderID uniqueidentifier NOT NULL Primary Key,
	UserID uniqueidentifier NOT NULL,
	PaymentID uniqueidentifier NOT NULL,
	OrderAmount decimal(30, 2) NOT NULL,
	OrderDate date NOT NULL,
	ShipDate date NOT NULL,
	CONSTRAINT FK_UserID FOREIGN KEY (UserID)
	REFERENCES dbo.USERS (UserID),
	CONSTRAINT FK_PaymentID_PaymentIDs FOREIGN KEY (PaymentID)
	REFERENCES dbo.PAYMENTTYPES (PaymentID)
)

CREATE TABLE dbo.ORDERDETAILS (
	OrderID uniqueidentifier NOT NULL,
	ItemID uniqueidentifier NOT NULL,
	ItemQuantity int NOT NULL,
	ItemPrice decimal(30, 2) NOT NULL,
	CONSTRAINT FK_OrderID FOREIGN KEY (OrderID)
	REFERENCES dbo.ORDERS (OrderID),
	CONSTRAINT FK_ItemID FOREIGN KEY (ItemID)
	REFERENCES dbo.ITEMS (ItemID)
)