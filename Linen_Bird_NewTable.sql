
CREATE TABLE dbo.BirdAccessories
	(
	Id uniqueidentifier NOT NULL PRIMARY KEY default(newsequentialid()),
	Name varchar(50) NOT NULL,
	BirdId uniqueidentifier NOT NULL,
	CONSTRAINT FK_BirdAccesories_Birds FOREIGN KEY (BirdId)
		REFERENCES Birds (Id)
	)  

	SELECT *
	FROM Birds

INSERT INTO [dbo].[BirdAccessories]
           ([Name]
           ,[BirdId])
     VALUES
           ('Hat',
		   CAST('E96C5C95-2DD4-48DF-8DE3-2E363626DE1E' as uniqueidentifier)),
		   ('CANE',
		   CAST('E96C5C95-2DD4-48DF-8DE3-2E363626DE1E' as uniqueidentifier)),
		   ('Top Hat',
		   CAST('2188DE66-766D-4096-98E2-7AF026B2482F' as uniqueidentifier)),
		   ('Bow Tie',
		   CAST('2188DE66-766D-4096-98E2-7AF026B2482F' as uniqueidentifier)),
		   ('Grill',
		   CAST('4FFE24A3-392C-461C-BB31-8B71AC94E5D6' as uniqueidentifier)),
		   ('Chain',
		   CAST('4FFE24A3-392C-461C-BB31-8B71AC94E5D6' as uniqueidentifier)),
		   ('Eye Patch',
		   CAST('FC3F7825-C861-4D2B-ADBF-8E74044046CD' as uniqueidentifier)),
		   ('Helmet',
		   CAST('53070E4D-9646-40E8-BD67-B4AB50C67C73' as uniqueidentifier))

		   SELECT *
		   FROM BirdAccessories


