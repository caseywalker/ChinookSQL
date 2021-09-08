CREATE TABLE dbo.Birds
	(
	Id uniqueidentifier NOT NULL Primary Key ,
	Type int NOT NULL,
	Color varchar(25) NOT NULL,
	Size varchar(10) NOT NULL,
	Name varchar(50) NULL
	)

DROP TABLE dbo.Hats

CREATE TABLE dbo.Hats
(
Id uniqueidentifier NOT NULL Primary Key default(newid()),
Designer varchar(200) NULL,
Color VARCHAR(25) NOT NULL,
Style int NOT NULL default(0)
)
DROP TABLE dbo.orders

CREATE TABLE dbo.orders
(
Id uniqueidentifier NOT NULL Primary Key default(newid()),
BirdId uniqueidentifier NOT NULL,
HatId uniqueidentifier NOT NULL,
Price decimal(18,2) 
CONSTRAINT FK_BirdId_BirdsID FOREIGN KEY (BirdId)
	REFERENCES dbo.Birds (id),
CONSTRAINT FK_HatId_HatsID FOREIGN KEY (HatId)
	REFERENCES dbo.Hats (id)
)

SELECT * 
FROM Orders
JOIN Birds
	On Birds.Id = Orders.BirdId
JOIN Hats
	On Hats.Id = Orders.HatId

