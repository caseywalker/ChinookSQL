CREATE Table dbo.USERS(
	UserID uniqueidentifier NOT NULL Primary Key default(newid()),
	UserUID varchar(50) NULL,
	UserRole varchar(25) NULL,
	UserFirst varchar(25) NULL,
	UserLast varchar(25) NULL,
	UserCompany varchar(50) NULL,
)

CREATE Table dbo.CUSTOMERS(
	CustomerID uniqueidentifier NOT NULL Primary Key default(newid()),
	CustomerName varchar(50) NULL,
	CustomerAddress varchar(50) NULL,
	CustomerCity varchar(50) NULL,
	CustomerZipCode int NULL,
	CustomerState varchar(25)
)

CREATE Table dbo.PRODUCTS(
	ProductID uniqueidentifier NOT NULL Primary Key default(newid()),
	ProductName varchar(25) NULL,
	ProductDescription varchar(50) NULL,
	ProductPrice decimal(30, 2) NULL
)

CREATE Table dbo.QUOTES(
	QuoteID uniqueidentifier NOT NULL Primary Key default(newid()),
	UserID uniqueidentifier NOT NULL,
	CustomerID uniqueidentifier NOT NULL,
	QuoteAmount decimal(30, 2) NULL,
	QuoteDate date NULL default(getdate()),
	Complete bit NULL,
	CONSTRAINT FK_UserID_Quotes FOREIGN KEY (UserID)
	REFERENCES dbo.USERS (UserID),
	CONSTRAINT FK_CustomerID_Quotes FOREIGN KEY (CustomerID)
	REFERENCES dbo.CUSTOMERS (CustomerID)
)

CREATE Table dbo.QUOTEDETAILS(
	QuoteDetailID uniqueidentifier NOT NULL Primary Key default(newid()),
	QuoteID uniqueidentifier NOT NULL,
	ProductID uniqueidentifier NOT NULL,
	ProductQuantity int NULL,
	ProductPrice decimal(30, 2) NULL,
	CONSTRAINT FK_QuoteID_QuoteDetails FOREIGN KEY (QuoteID)
	REFERENCES dbo.QUOTES (QuoteID),
	CONSTRAINT FK_ProductID_QuoteDetails FOREIGN KEY (ProductID)
	REFERENCES dbo.PRODUCTS (ProductID)
)

CREATE Table dbo.ORDERS(
	OrderID uniqueidentifier NOT NULL Primary Key default(newid()),
	UserID uniqueidentifier NOT NULL,
	CustomerID uniqueidentifier NOT NULL,
	OrderAmount decimal(30, 2) NULL,
	OrderDate date NULL default(getdate()),
	Complete bit NULL,
	CONSTRAINT FK_UserID_Orders FOREIGN KEY (UserID)
	REFERENCES dbo.USERS (UserID),
	CONSTRAINT FK_CustomerID_Orders FOREIGN KEY (CustomerID)
	REFERENCES dbo.CUSTOMERS (CustomerID)
)

CREATE Table dbo.ORDERDETAILS(
	OrderDetailID uniqueidentifier NOT NULL Primary Key default(newid()),
	OrderID uniqueidentifier NOT NULL,
	ProductID uniqueidentifier NOT NULL,
	ProductQuantity int NULL,
	ProductPrice decimal(30, 2) NULL,
	CONSTRAINT FK_QuoteID_OrderDetails FOREIGN KEY (oRDERID)
	REFERENCES dbo.ORDERS (OrderID),
	CONSTRAINT FK_ProductID_OrderDetails FOREIGN KEY (ProductID)
	REFERENCES dbo.PRODUCTS (ProductID)
)




