INSERT INTO [dbo].[DEPARTMENTS]
           ([DepartmentName]
           ,[DepartmentDescription])
     VALUES
           ('Clothing', 'All clothing items to cut the lawn in style.'),
		   ('Outdoors', 'Equipment four every part of the weekend.'),
		   ('Household', 'Essentials for maintaining order in your domain.')

SELECT *
FROM DEPARTMENTS

INSERT INTO [dbo].[CATEGORIES]
           ([CategoryName]
           ,[CategoryDescription]
           ,[DepartmentID])
     VALUES
           ('Shoes', 'You gotta wear those shoes.', cast('D04D4F6C-CA8A-4EEB-8287-B89FB88421C7' as uniqueidentifier)),
		   ('Socks', 'High socks, high motivation.', cast('D04D4F6C-CA8A-4EEB-8287-B89FB88421C7' as uniqueidentifier)),
		   ('Pants', 'We know who wears the pants.', cast('D04D4F6C-CA8A-4EEB-8287-B89FB88421C7' as uniqueidentifier)),
		   ('Grilling', 'Propane and propane accessories.', cast('2A2AF15C-0FDD-4C24-9D8A-A35F4703A537' as uniqueidentifier)),
		   ('Lawncare', 'Keep the best lawn in the neighborhood.', cast('2A2AF15C-0FDD-4C24-9D8A-A35F4703A537' as uniqueidentifier)),
		   ('Home Maintenance', 'Protect your castle.', cast('52419A9A-8080-4261-A553-13DFA2BDD79C' as uniqueidentifier)),
		   ('Essentials', 'The bare necessities.', cast('52419A9A-8080-4261-A553-13DFA2BDD79C' as uniqueidentifier)),
		   ('Tools', 'Tim Taylor approved.', cast('52419A9A-8080-4261-A553-13DFA2BDD79C' as uniqueidentifier))

		   SELECT *
		   FROM CATEGORIES



INSERT INTO [dbo].[ITEMS]
           ([ItemName]
           ,[ItemDescription]
           ,[ItemPrice]
           ,[CategoryID])
     VALUES
           ('New Balance Shoes', 'The staple footwear of lawn care.', 44.99, cast('DFD8176D-6EFB-44F9-8B9A-3163DF7EECFE' as uniqueidentifier)),
		   ('Knee High Socks', 'High socks, high motivation.', 3.28, cast('55B6D0D8-EA2C-4B36-B612-08A7381770A2' as uniqueidentifier)),
		   ('Jean Shorts', 'Expandable waistline.', 19.91, cast('F695FB64-9C20-44B0-92BD-638DF9EBC091' as uniqueidentifier)),
		   ('Propane Grill', 'Strickland Propane Grill.', 199.10, cast('AB92B066-9922-4ED6-A4D9-8C87E868C1C1' as uniqueidentifier)),
		   ('Grill Accessories', 'Every tool to cook a rare steak.', 10.28, cast('AB92B066-9922-4ED6-A4D9-8C87E868C1C1' as uniqueidentifier)),
		   ('Riding Mower', '2 beer holders, 4 tires.', 777.33, cast('578E0F64-94E1-40BC-A715-809E3CAFE78A' as uniqueidentifier)),
		   ('Weed Eater', 'Never runs out of string.', 102.90, cast('578E0F64-94E1-40BC-A715-809E3CAFE78A' as uniqueidentifier)),
		   ('Leaf Blower', 'Blows grass clippings onto the neighbors driveway.', 102.90, cast('578E0F64-94E1-40BC-A715-809E3CAFE78A' as uniqueidentifier)),
		   ('Thermostat Protectors', 'Prevents family from lowering AC temp.', 73.28, cast('1239624A-A391-41C5-95B7-4E6345611FFD' as uniqueidentifier)),
		   ('Light Switch Alarm', 'Calls emergency responders if lights are left on.', 55.72, cast('1239624A-A391-41C5-95B7-4E6345611FFD' as uniqueidentifier)),
		   ('Sweti Cooler', 'Holds 12 cold ones.', 375.10, cast('868269ED-5701-423E-939B-B45C5BF82FDE' as uniqueidentifier)),
		   ('Hammer', 'Nail stuff, also opens beer.', 9.99, cast('34F321BD-C905-42A2-88BC-5CFA5698BD1E' as uniqueidentifier)),
		   ('Drill', 'Perfect for drilling stuff.', 49.99, cast('34F321BD-C905-42A2-88BC-5CFA5698BD1E' as uniqueidentifier)),
		   ('Drill', 'Perfect for drilling stuff.', 49.99, cast('34F321BD-C905-42A2-88BC-5CFA5698BD1E' as uniqueidentifier))

		   SELECT *
		   FROM ITEMS