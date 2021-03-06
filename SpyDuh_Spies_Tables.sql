INSERT INTO [dbo].[Spies]
           ([Name]
           ,[Details]
           ,[SpyBackground])
     VALUES
           ('Boris',
		   'Spy does good job',
		   'Spy been doin this a long time'
		   ),
		   ('John',
		   'Spy does bad job',
		   'Spy been doin this a short time'
		   ),
           ('Alex',
		   'You''ll never know who''s side he''s on',
		   'Has been known to play both sides'
		   ),
           ('Paul',
		   'Spy does good job',
		   'Spy been doin this a long time'
		   ),
           ('Nate',
		   'Spy hasn''t been seen since 1776.',
		   'The original Spy'
		   ),
           ('Ben',
		   'Spy doesn''t know he''s a spy.',
		   'Sleeper agent.'
		   ),           
		   ('James',
		   'Spy is here for a good time, not a long time.',
		   'Spy likes to party.'
		   )

SELECT *
FROM Spies

INSERT INTO [dbo].[FriendlySpies]
           ([SpyID]
           ,[FriendlySpyID])
     VALUES
	 --Boris friends list
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER)),
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER)),
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER)),
	--John friends list
	    (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER)),
        (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER)),
        (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER)),
	--Alex friends list
		(CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER)),
        (CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER)),
        (CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER)),
	--Paul friends list
		(CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER),
		 CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER)),
	--Nate friends list
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER)),
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER)),
	--Ben friends list
		(CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER),
		 CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER)),
		(CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER),
		 CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER)),
    --James friends list
		(CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER),
		 CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER)),
        (CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER),
		 CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER)),
        (CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER),
		 CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER)),
        (CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER),
		 CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER))



SELECT * 
FROM FriendlySpies

SELECT *
FROM EnemySpies

INSERT INTO [dbo].[EnemySpies]
           ([SpyID]
           ,[EnemySpyID])
     VALUES
	 --Boris enemy list
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER)),
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER)),
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER)),
	--John enemy list
	    (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER)),
        (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER)),
        (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER)),
	--Alex enemy list
		(CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER)),
        (CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER)),
        (CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER)),
	--Paul enemy list
		(CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER),
		 CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER)),
		(CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER),
		 CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER)),
		(CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER),
		 CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER)),
		(CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER),
		 CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER)),
		(CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER),
		 CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER)),
	--Nate enemy list
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER)),
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER)),
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER)),
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER)),
	--Ben enemy list
		(CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER),
		 CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER)),
		(CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER),
		 CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER)),
    --James enemy list
		(CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER),
		 CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER)),
        (CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER),
		 CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER))



INSERT INTO [dbo].[SpyServices]
           ([SpyID]
           ,[Service])
     VALUES
	 --Boris services list
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 'Espionage'),
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 'Political take-over'),
	--John services list
	    (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 'Non-Covert Actions'),
        (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 'Inadvertently starting a nuclear standoff'),
	--Alex services list
		(CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 'Orchestrating internal conflict'),
        (CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 'Disorganizing internal government agencies'),
	--Paul services list
		(CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER),
		'Digging dirt'),
	--Nate services list
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 'Espionage'),
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 'Dumping tea in the Boston Harbor'),
	--Ben services list
		(CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER),
		 'Winter Soldier'),
    --James services list
		(CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER),
		 'Inadvertently crashing geopolitical organizations')

SELECT *
FROM SpyServices


INSERT INTO [dbo].[SpySkills]
           ([SpyID]
           ,[Skill])
     VALUES
	 --Boris skill list
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 'Spying'),
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 'Plotting'),
	--John skill list
	    (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 'Spying'),
        (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 'Failing'),
	--Alex skill list
		(CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 'Spying'),
        (CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 'Double-Agent'),
	--Paul skill list
		(CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER),
		'None'),
	--Nate skill list
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 'Spying'),
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 'Demoliton'),
	--Ben enemy list
		(CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER),
		 'Spying'),
		(CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER),
		'Sleeping'),
    --James skill list
		(CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER),
		 'Chugging Beer')

SELECT *
FROM SpySkills

SELECT *
FROM Posts


INSERT INTO [dbo].[Posts]
           ([SpyID]
           ,[Services])
     VALUES
	 --Boris posts
        (CAST('1299B5B0-F566-411C-8865-CCD53F1DFE88' AS UNIQUEIDENTIFIER),
		 'Will match any price for committing espionage.'),
	--John posts
	    (CAST('08609402-7B18-4FBB-8216-BA0338718A70' AS UNIQUEIDENTIFIER),
		 'You won''t find any spy better at creating nuclear standoffs than me.'),
	--Alex posts
		(CAST('97541695-F2BC-40A8-813B-6107FACE8CE5' AS UNIQUEIDENTIFIER),
		 'Infiltrating enemy intelligence organizations is my specialty. Call me.'),
	--Paul posts
		(CAST('DC684E70-5B47-459A-AD6E-2335604DDEDB' AS UNIQUEIDENTIFIER),
		'I dig dirt. Figuratively, not literally. Hire me. Literally.'),
	--Nate posts
		(CAST('820249CD-AC48-4F3E-B90D-7D66B6439514' AS UNIQUEIDENTIFIER),
		 'Need a bomb planted in the vehicle of someone special? I''m the man for the job.'),
	--Ben posts
		(CAST('CB919AB3-DACB-4A44-8478-C80A1C4C7CED' AS UNIQUEIDENTIFIER),
		 'Dumping tea in the Boston Harbor is what I do best.'),
    --James posts
		(CAST('294CBB20-9553-4EE1-AE02-88C895ABA429' AS UNIQUEIDENTIFIER),
		 'I can get you those classified documents you want...or your money back.')
		   

