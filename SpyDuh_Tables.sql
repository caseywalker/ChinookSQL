CREATE TABLE dbo.Spies
	(
	SpyID uniqueidentifier NOT NULL Primary Key default(newid()),
	Name varchar(50) NOT NULL,
	Details varchar(250) NOT NULL,
	SpyBackground varchar(250) NOT NULL
	)  

CREATE TABLE dbo.FriendlySpies
	(
	Id uniqueidentifier NOT NULL Primary Key default(newid()),
	SpyID uniqueidentifier NOT NULL,
	FriendlySpyID uniqueidentifier NOT NULL,
	CONSTRAINT FK_SpyID_SpyID FOREIGN KEY (SpyID)
	REFERENCES dbo.Spies (SpyID),
	CONSTRAINT FK_FriendlySpyID_FriendlySpyID FOREIGN KEY (FriendlySpyID)
	REFERENCES dbo.Spies (SpyID)
	)

CREATE TABLE dbo.EnemySpies
	(
	Id uniqueidentifier NOT NULL Primary Key default(newid()),
	SpyID uniqueidentifier NOT NULL,
	EnemySpyID uniqueidentifier NOT NULL,
	CONSTRAINT FK_EnemyMainSpyID_EnemyMainSpyID FOREIGN KEY (SpyID)
	REFERENCES dbo.Spies (SpyID),
	CONSTRAINT FK_EnemySpyID_EnemySpyID FOREIGN KEY (EnemySpyID)
	REFERENCES dbo.Spies (SpyID)
	)

CREATE TABLE dbo.SpySkills
	(
	Id uniqueidentifier NOT NULL Primary Key default(newid()),
	SpyID uniqueidentifier NOT NULL,
	Skill varchar(50) NOT NULL,
	CONSTRAINT FK_SkillSpyID_SkillSpyID FOREIGN KEY (SpyID)
	REFERENCES dbo.Spies (SpyID)
	)

CREATE TABLE dbo.SpyServices
	(
	Id uniqueidentifier NOT NULL Primary Key default(newid()),
	SpyID uniqueidentifier NOT NULL,
	Service varchar(50) NOT NULL,
	CONSTRAINT FK_ServiceSpyID_ServiceSpyID FOREIGN KEY (SpyID)
	REFERENCES dbo.Spies (SpyID)
	)

CREATE TABLE dbo.Posts
	(
	PostID uniqueidentifier NOT NULL Primary Key default(newid()),
	SpyID uniqueidentifier NOT NULL,
	[Services] varchar(250) NOT NULL, 
	CONSTRAINT FK_PostSpyID_PostSpyID FOREIGN KEY (SpyID)
	REFERENCES dbo.Spies (SpyID)
	)