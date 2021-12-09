USE [BrewsBizSystem]
GO

INSERT INTO dbo.USERS
           (UserRole
           ,UserFirst
           ,UserLast
           ,UserCompany)
     VALUES
           ('Sales'
           ,'Casey'
           ,'Walker'
           ,'Brews Biz System')
GO

SELECT * FROM USERS

USE [BrewsBizSystem]
GO

INSERT INTO dbo.CUSTOMERS
           (CustomerName
           ,CustomerAddress
           ,CustomerCity
           ,CustomerZipCode
           ,CustomerState)
     VALUES
           ('Bourbon and Beers',
			'404 Main St',
			'Nashville',
			'37206',
			'TN'),
			('Bill''s Biker Bar',
			'1 Dirty Ln',
			'Nashville',
			'37206',
			'TN'),
			('Craft Brews and Burgers',
			'2 Fancy Ct',
			'Nashville',
			'37206',
			'TN')
GO

SELECT * FROM CUSTOMERS

USE [BrewsBizSystem]
GO

INSERT INTO dbo.PRODUCTS
           (ProductName
           ,ProductDescription
           ,ProductPrice)
     VALUES
           ('Winter Pale Ale',
		   'A hoppy ale with a copper color.',
		   8.99),
		   ('Walker Red Ale',
		   'A dark red Irish Red Ale.',
		   10.28
		   ),
		   ('London Brown',
		   'A dark amber ale with British roots.',
		   9.99
		   ),
		   ('Warner Pale Ale',
		   'A slightly hoppy pale ale with citrus notes.',
		   12.99
		   ),
		   ('Dad''s Coffee Porter',
		   'A raosty malt porter with a bold coffee aroma.',
		   10.99
		   )
GO

SELECT * 
FROM PRODUCTS

USE [BrewsBizSystem]
GO

INSERT INTO dbo.QUOTES
           (UserID
           ,CustomerID
           ,QuoteAmount
           ,Complete)
     VALUES
           (cast('C2773B3B-D8C7-47D6-95CD-36CE2424867B' as uniqueidentifier), cast('3F555DC3-DF4E-44DD-A167-BAA96DD12016' as uniqueidentifier), 56.82, 0),
		   (cast('C2773B3B-D8C7-47D6-95CD-36CE2424867B' as uniqueidentifier), cast('7C1A28F6-9AC1-45CA-B59F-C6285549D776' as uniqueidentifier), 81.92, 0),
		   (cast('C2773B3B-D8C7-47D6-95CD-36CE2424867B' as uniqueidentifier), cast('DE2C66F4-7636-4DBE-83CB-D9EF939EA1E5' as uniqueidentifier), 102.22, 0)
GO

SELECT * FROM QUOTES

USE [BrewsBizSystem]
GO

INSERT INTO dbo.QUOTEDETAILS
           (QuoteID
           ,ProductID
           ,ProductQuantity
           ,ProductPrice)
     VALUES
           (cast('95424C7E-31AC-4A02-A7E2-24FF19D619B3' as uniqueidentifier), cast('98B1A493-AF57-4DE7-97FA-2D5C77A46463' as uniqueidentifier), 2, 12.99),
		   (cast('95424C7E-31AC-4A02-A7E2-24FF19D619B3' as uniqueidentifier), cast('7E556FAF-CC95-4437-972E-CFF66177FFC9' as uniqueidentifier), 3, 10.28),
		   (cast('1DB78684-39BB-4F11-B089-6B837DB5F23C' as uniqueidentifier), cast('33A52B72-1CDD-43EE-AD07-3FC2EA2FF690' as uniqueidentifier), 3, 8.99),
		   (cast('1DB78684-39BB-4F11-B089-6B837DB5F23C' as uniqueidentifier), cast('F87F175B-A70E-4CDF-848F-4D1A9B85453F' as uniqueidentifier), 5, 10.99),
		   (cast('B97BF095-81F9-4FCE-BC84-B550FBC7057A' as uniqueidentifier), cast('5E0101EC-B87C-4ED2-BD6C-3FEE20EF8D15' as uniqueidentifier), 2, 9.99),
		   (cast('B97BF095-81F9-4FCE-BC84-B550FBC7057A' as uniqueidentifier), cast('7E556FAF-CC95-4437-972E-CFF66177FFC9' as uniqueidentifier), 8, 10.28)
GO

SELECT * FROM QUOTEDETAILS

USE [BrewsBizSystem]
GO

INSERT INTO dbo.ORDERS
           (UserID
           ,CustomerID
           ,OrderAmount
           ,Complete)
     VALUES
           (cast('C2773B3B-D8C7-47D6-95CD-36CE2424867B' as uniqueidentifier), cast('3F555DC3-DF4E-44DD-A167-BAA96DD12016' as uniqueidentifier), 56.82, 0),
		   (cast('C2773B3B-D8C7-47D6-95CD-36CE2424867B' as uniqueidentifier), cast('7C1A28F6-9AC1-45CA-B59F-C6285549D776' as uniqueidentifier), 81.92, 0),
		   (cast('C2773B3B-D8C7-47D6-95CD-36CE2424867B' as uniqueidentifier), cast('DE2C66F4-7636-4DBE-83CB-D9EF939EA1E5' as uniqueidentifier), 102.22, 0)
GO

SELECT * FROM ORDERS

INSERT INTO dbo.ORDERDETAILS
           (OrderID
           ,ProductID
           ,ProductQuantity
           ,ProductPrice)
     VALUES
           (cast('78845BD6-2B14-4245-8473-206620CE29E8' as uniqueidentifier), cast('98B1A493-AF57-4DE7-97FA-2D5C77A46463' as uniqueidentifier), 2, 12.99),
		   (cast('78845BD6-2B14-4245-8473-206620CE29E8' as uniqueidentifier), cast('7E556FAF-CC95-4437-972E-CFF66177FFC9' as uniqueidentifier), 3, 10.28),
		   (cast('0CC8C109-9052-411D-97DD-9607C1E089E6' as uniqueidentifier), cast('33A52B72-1CDD-43EE-AD07-3FC2EA2FF690' as uniqueidentifier), 3, 8.99),
		   (cast('0CC8C109-9052-411D-97DD-9607C1E089E6' as uniqueidentifier), cast('F87F175B-A70E-4CDF-848F-4D1A9B85453F' as uniqueidentifier), 5, 10.99),
		   (cast('7D659738-E73B-403D-8486-EBBFAC7553F7' as uniqueidentifier), cast('5E0101EC-B87C-4ED2-BD6C-3FEE20EF8D15' as uniqueidentifier), 2, 9.99),
		   (cast('7D659738-E73B-403D-8486-EBBFAC7553F7' as uniqueidentifier), cast('7E556FAF-CC95-4437-972E-CFF66177FFC9' as uniqueidentifier), 8, 10.28)
GO

SELECT * FROM ORDERDETAILS
