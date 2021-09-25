USE [master]
GO
/****** Object:  Database [SpyduhTom]    Script Date: 9/25/2021 11:44:01 AM ******/
CREATE DATABASE [SpyduhTom]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SpyduhTom', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SpyduhTom.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SpyduhTom_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SpyduhTom_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SpyduhTom] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SpyduhTom].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SpyduhTom] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SpyduhTom] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SpyduhTom] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SpyduhTom] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SpyduhTom] SET ARITHABORT OFF 
GO
ALTER DATABASE [SpyduhTom] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SpyduhTom] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SpyduhTom] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SpyduhTom] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SpyduhTom] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SpyduhTom] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SpyduhTom] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SpyduhTom] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SpyduhTom] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SpyduhTom] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SpyduhTom] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SpyduhTom] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SpyduhTom] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SpyduhTom] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SpyduhTom] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SpyduhTom] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SpyduhTom] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SpyduhTom] SET RECOVERY FULL 
GO
ALTER DATABASE [SpyduhTom] SET  MULTI_USER 
GO
ALTER DATABASE [SpyduhTom] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SpyduhTom] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SpyduhTom] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SpyduhTom] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SpyduhTom] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SpyduhTom', N'ON'
GO
ALTER DATABASE [SpyduhTom] SET QUERY_STORE = OFF
GO
USE [SpyduhTom]
GO
/****** Object:  Table [dbo].[Diagram]    Script Date: 9/25/2021 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagram](
	[SpyID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Details] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnemySpies]    Script Date: 9/25/2021 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnemySpies](
	[Id] [uniqueidentifier] NOT NULL,
	[SpyID] [uniqueidentifier] NOT NULL,
	[EnemySpyID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendlySpies]    Script Date: 9/25/2021 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendlySpies](
	[Id] [uniqueidentifier] NOT NULL,
	[SpyID] [uniqueidentifier] NOT NULL,
	[FriendlySpyID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 9/25/2021 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[PostID] [uniqueidentifier] NOT NULL,
	[SpyID] [uniqueidentifier] NOT NULL,
	[Services] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spies]    Script Date: 9/25/2021 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spies](
	[SpyID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Details] [varchar](250) NOT NULL,
	[SpyBackground] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpyServices]    Script Date: 9/25/2021 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpyServices](
	[Id] [uniqueidentifier] NOT NULL,
	[SpyID] [uniqueidentifier] NOT NULL,
	[Service] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpySkills]    Script Date: 9/25/2021 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpySkills](
	[Id] [uniqueidentifier] NOT NULL,
	[SpyID] [uniqueidentifier] NOT NULL,
	[Skill] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'71c0c3f3-a265-4f9b-a69d-1899136f59ad', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'dc684e70-5b47-459a-ad6e-2335604ddedb')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'c6d05a26-5b64-420c-8952-1f5f794dedf6', N'294cbb20-9553-4ee1-ae02-88c895aba429', N'97541695-f2bc-40a8-813b-6107face8ce5')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'93a25ebe-b7a5-494b-ad02-1f939c3f6a8a', N'97541695-f2bc-40a8-813b-6107face8ce5', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'86a6c26b-1ee7-45e3-9c16-1fb66709c2c5', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'820249cd-ac48-4f3e-b90d-7d66b6439514')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'dcb142e9-4f54-46ab-ba9c-20bea476ec80', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced', N'294cbb20-9553-4ee1-ae02-88c895aba429')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'c03a476f-4514-4fbb-90ef-20e4aafef587', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'1299b5b0-f566-411c-8865-ccd53f1dfe88')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'd27d2079-d8de-4a2d-bf08-4998c66f2d73', N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'1299b5b0-f566-411c-8865-ccd53f1dfe88')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'6702e087-0150-4fa8-b127-531e5317c8e4', N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'ab7e0832-4f55-4ddc-828f-57272ce423f7', N'08609402-7b18-4fbb-8216-ba0338718a70', N'294cbb20-9553-4ee1-ae02-88c895aba429')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'dde5959a-2643-4f3f-b5bd-7f4812b72c70', N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'294cbb20-9553-4ee1-ae02-88c895aba429')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'c0d18af7-9bb9-4743-9196-80bdcd8fff15', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'97541695-f2bc-40a8-813b-6107face8ce5')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'b3f76c11-fd0f-48ee-be30-8aa02032c76e', N'97541695-f2bc-40a8-813b-6107face8ce5', N'dc684e70-5b47-459a-ad6e-2335604ddedb')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'92bf889b-7e72-4fc5-89bb-8d709d54ba76', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'294cbb20-9553-4ee1-ae02-88c895aba429')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'4bf5aaed-ff65-4443-9b57-994197d0e0f4', N'08609402-7b18-4fbb-8216-ba0338718a70', N'dc684e70-5b47-459a-ad6e-2335604ddedb')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'85fb7185-0fea-4f09-8d7e-9bec26eaae42', N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'08609402-7b18-4fbb-8216-ba0338718a70')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'44a392a1-6ea1-4548-ab60-9c36f529a7e7', N'294cbb20-9553-4ee1-ae02-88c895aba429', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'e91932b4-3eba-4f2f-8f10-a0b0feeda844', N'97541695-f2bc-40a8-813b-6107face8ce5', N'820249cd-ac48-4f3e-b90d-7d66b6439514')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'1d4eef60-cb64-4b40-b0c4-ab8fff3f10af', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'66d957a1-87e0-47ae-a90f-b9e45d5e42bf', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced', N'97541695-f2bc-40a8-813b-6107face8ce5')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'9753eabe-bdc4-4031-a207-c20b84455311', N'08609402-7b18-4fbb-8216-ba0338718a70', N'97541695-f2bc-40a8-813b-6107face8ce5')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'81c47937-0d10-428d-b709-d6031cfd45f3', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'08609402-7b18-4fbb-8216-ba0338718a70')
GO
INSERT [dbo].[EnemySpies] ([Id], [SpyID], [EnemySpyID]) VALUES (N'a32c078d-eefc-4010-bd4c-d74315019795', N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'820249cd-ac48-4f3e-b90d-7d66b6439514')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'13efb604-2adf-4d85-bc71-0af7c2e7ceaf', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'08609402-7b18-4fbb-8216-ba0338718a70')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'13b2dc81-3921-4058-9649-0d00cc94d303', N'294cbb20-9553-4ee1-ae02-88c895aba429', N'dc684e70-5b47-459a-ad6e-2335604ddedb')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'2cb67502-9d1c-4186-8075-2392ab084227', N'97541695-f2bc-40a8-813b-6107face8ce5', N'294cbb20-9553-4ee1-ae02-88c895aba429')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'1fc490b3-6793-4368-b4fd-32096334c217', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'dc684e70-5b47-459a-ad6e-2335604ddedb')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'3dc68425-31ee-41e5-87c9-3c70a24effa8', N'97541695-f2bc-40a8-813b-6107face8ce5', N'08609402-7b18-4fbb-8216-ba0338718a70')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'4b4cd237-f742-4ccb-8966-4604898c322d', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced', N'08609402-7b18-4fbb-8216-ba0338718a70')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'b5bfeafc-82b6-4f9f-85eb-62752ee89644', N'294cbb20-9553-4ee1-ae02-88c895aba429', N'08609402-7b18-4fbb-8216-ba0338718a70')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'1b1eec9c-27fe-49d2-8c7b-6476c24ee5b9', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'08609402-7b18-4fbb-8216-ba0338718a70')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'76fb4d2d-1780-4ebe-b1b4-7cd8543c2dd0', N'08609402-7b18-4fbb-8216-ba0338718a70', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'7c52895f-11d6-423e-966b-9893a9d746ef', N'294cbb20-9553-4ee1-ae02-88c895aba429', N'820249cd-ac48-4f3e-b90d-7d66b6439514')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'4fad2dc3-69c2-45f5-8994-98e74e5e9797', N'08609402-7b18-4fbb-8216-ba0338718a70', N'820249cd-ac48-4f3e-b90d-7d66b6439514')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'd78d26b3-7702-4ce5-80eb-9d955874214d', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'97541695-f2bc-40a8-813b-6107face8ce5')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'f5643f7e-6314-480f-8282-9f5965fcd0a3', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'294cbb20-9553-4ee1-ae02-88c895aba429')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'eb1daa8a-25c3-4ad4-b824-a24e6324daa9', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced', N'dc684e70-5b47-459a-ad6e-2335604ddedb')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'f903c7e1-8c14-4086-8ed7-b01b7db2bd6a', N'294cbb20-9553-4ee1-ae02-88c895aba429', N'1299b5b0-f566-411c-8865-ccd53f1dfe88')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'8f106e02-fed5-477a-8910-b1a5e961f0b9', N'08609402-7b18-4fbb-8216-ba0338718a70', N'1299b5b0-f566-411c-8865-ccd53f1dfe88')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'2542c1ae-2106-4d5d-81ef-bafc42e1f978', N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'97541695-f2bc-40a8-813b-6107face8ce5')
GO
INSERT [dbo].[FriendlySpies] ([Id], [SpyID], [FriendlySpyID]) VALUES (N'339f6af9-30fd-409a-a692-d6ad274c65db', N'97541695-f2bc-40a8-813b-6107face8ce5', N'1299b5b0-f566-411c-8865-ccd53f1dfe88')
GO
INSERT [dbo].[Posts] ([PostID], [SpyID], [Services]) VALUES (N'faad9e3e-f1b7-4815-8995-2e52f27009b8', N'97541695-f2bc-40a8-813b-6107face8ce5', N'Infiltrating enemy intelligence organizations is my specialty. Call me.')
GO
INSERT [dbo].[Posts] ([PostID], [SpyID], [Services]) VALUES (N'382985bd-7ab8-4bcc-9606-7e7d772f6a56', N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'I dig dirt. Figuratively, not literally. Hire me. Literally.')
GO
INSERT [dbo].[Posts] ([PostID], [SpyID], [Services]) VALUES (N'8c25bd8c-404d-4bb1-acb5-b2c7c0fb0402', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'Will match any price for committing espionage.')
GO
INSERT [dbo].[Posts] ([PostID], [SpyID], [Services]) VALUES (N'1beae4c5-184b-4e51-a5fb-b8482dc56373', N'294cbb20-9553-4ee1-ae02-88c895aba429', N'I can get you those classified documents you want...or your money back.')
GO
INSERT [dbo].[Posts] ([PostID], [SpyID], [Services]) VALUES (N'7cb4ecc1-b066-4a01-8e69-cb1261f744a4', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'Need a bomb planted in the vehicle of someone special? I''m the man for the job.')
GO
INSERT [dbo].[Posts] ([PostID], [SpyID], [Services]) VALUES (N'142a7c72-52c2-4580-aa1e-dbe6b4410187', N'08609402-7b18-4fbb-8216-ba0338718a70', N'You won''t find any spy better at creating nuclear standoffs than me.')
GO
INSERT [dbo].[Posts] ([PostID], [SpyID], [Services]) VALUES (N'80156d18-5a11-4b0f-a9e9-e8d98dbb69f1', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced', N'Dumping tea in the Boston Harbor is what I do best.')
GO
INSERT [dbo].[Spies] ([SpyID], [Name], [Details], [SpyBackground]) VALUES (N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'Paul', N'Spy does good job', N'Spy been doin this a long time')
GO
INSERT [dbo].[Spies] ([SpyID], [Name], [Details], [SpyBackground]) VALUES (N'97541695-f2bc-40a8-813b-6107face8ce5', N'Alex', N'You''ll never know who''s side he''s on', N'Has been known to play both sides')
GO
INSERT [dbo].[Spies] ([SpyID], [Name], [Details], [SpyBackground]) VALUES (N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'Nate', N'Spy hasn''t been seen since 1776.', N'The original Spy')
GO
INSERT [dbo].[Spies] ([SpyID], [Name], [Details], [SpyBackground]) VALUES (N'294cbb20-9553-4ee1-ae02-88c895aba429', N'James', N'Spy is here for a good time, not a long time.', N'Spy likes to party.')
GO
INSERT [dbo].[Spies] ([SpyID], [Name], [Details], [SpyBackground]) VALUES (N'08609402-7b18-4fbb-8216-ba0338718a70', N'John', N'Spy does bad job', N'Spy been doin this a short time')
GO
INSERT [dbo].[Spies] ([SpyID], [Name], [Details], [SpyBackground]) VALUES (N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced', N'Ben', N'Spy doesn''t know he''s a spy.', N'Sleeper agent.')
GO
INSERT [dbo].[Spies] ([SpyID], [Name], [Details], [SpyBackground]) VALUES (N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'Boris', N'Spy does good job', N'Spy been doin this a long time')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'f7be6ebd-3d71-4343-9342-1014ca4f02a9', N'97541695-f2bc-40a8-813b-6107face8ce5', N'Orchestrating internal conflict')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'68d6da43-0d3d-4eaa-9b56-1e9853404946', N'294cbb20-9553-4ee1-ae02-88c895aba429', N'Inadvertently crashing geopolitical organizations')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'e5f251b0-7f88-4bf9-99a2-585f65bb6bae', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'Espionage')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'e2240eb6-1c6b-4465-9f52-b2797b05677d', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'Dumping tea in the Boston Harbor')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'cc6a2dd1-2b6c-44d4-b10c-b374b92fd800', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'Espionage')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'1ef9146d-dcb2-42dd-a70e-e24da0edd971', N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'Digging dirt')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'fb4f2af3-657e-4b19-a557-e46e7807eef8', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced', N'Winter Soldier')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'a6b2f7be-5926-4e56-ba11-e8891f3987e9', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'Political take-over')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'd27b05ab-cbb0-43a2-9739-ef2e007bf79b', N'97541695-f2bc-40a8-813b-6107face8ce5', N'Disorganizing internal government agencies')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'24a9b7f4-fd83-4b45-ad96-f14b6816b0d2', N'08609402-7b18-4fbb-8216-ba0338718a70', N'Non-Covert Actions')
GO
INSERT [dbo].[SpyServices] ([Id], [SpyID], [Service]) VALUES (N'37c42db7-03b4-4cc9-8b8e-f330bf41a213', N'08609402-7b18-4fbb-8216-ba0338718a70', N'Inadvertently starting a nuclear standoff')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'c9811dc8-75aa-4078-836e-092de85d7e6d', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'Plotting')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'b7c841da-ef95-4c80-ac2d-2afdb3a748c7', N'08609402-7b18-4fbb-8216-ba0338718a70', N'Spying')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'5fddf454-4880-4f7b-9680-306a52780890', N'08609402-7b18-4fbb-8216-ba0338718a70', N'Failing')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'3a09d42e-72b7-4057-b20c-3a7d1e1f38a1', N'97541695-f2bc-40a8-813b-6107face8ce5', N'Double-Agent')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'120d58eb-d9be-48b2-bd87-4a259002e9b5', N'1299b5b0-f566-411c-8865-ccd53f1dfe88', N'Spying')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'98c37815-9f8e-452b-b895-69abd044c040', N'294cbb20-9553-4ee1-ae02-88c895aba429', N'Chugging Beer')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'2121bb05-0d85-4e8e-a34f-6ed8e42743b3', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced', N'Sleeping')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'f6d7a348-2555-4f6f-a441-797712d7f1ba', N'97541695-f2bc-40a8-813b-6107face8ce5', N'Spying')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'b90817b8-e035-40e4-b450-94d452d11666', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'Spying')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'c7e5038a-82db-4dc2-9f75-98cfebb44d16', N'dc684e70-5b47-459a-ad6e-2335604ddedb', N'None')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'd3f42f03-b42b-4b0d-840a-d1a9d3a85fc2', N'820249cd-ac48-4f3e-b90d-7d66b6439514', N'Demoliton')
GO
INSERT [dbo].[SpySkills] ([Id], [SpyID], [Skill]) VALUES (N'422b45fd-dd46-4328-9742-fd6fea28450c', N'cb919ab3-dacb-4a44-8478-c80a1c4c7ced', N'Spying')
GO
ALTER TABLE [dbo].[Diagram] ADD  CONSTRAINT [DF_Diagram_SpyID]  DEFAULT (newid()) FOR [SpyID]
GO
ALTER TABLE [dbo].[EnemySpies] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[FriendlySpies] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Posts] ADD  DEFAULT (newid()) FOR [PostID]
GO
ALTER TABLE [dbo].[Spies] ADD  DEFAULT (newid()) FOR [SpyID]
GO
ALTER TABLE [dbo].[SpyServices] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SpySkills] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[EnemySpies]  WITH CHECK ADD  CONSTRAINT [FK_EnemyMainSpyID_EnemyMainSpyID] FOREIGN KEY([SpyID])
REFERENCES [dbo].[Spies] ([SpyID])
GO
ALTER TABLE [dbo].[EnemySpies] CHECK CONSTRAINT [FK_EnemyMainSpyID_EnemyMainSpyID]
GO
ALTER TABLE [dbo].[EnemySpies]  WITH CHECK ADD  CONSTRAINT [FK_EnemySpyID_EnemySpyID] FOREIGN KEY([EnemySpyID])
REFERENCES [dbo].[Spies] ([SpyID])
GO
ALTER TABLE [dbo].[EnemySpies] CHECK CONSTRAINT [FK_EnemySpyID_EnemySpyID]
GO
ALTER TABLE [dbo].[FriendlySpies]  WITH CHECK ADD  CONSTRAINT [FK_FriendlySpyID_FriendlySpyID] FOREIGN KEY([FriendlySpyID])
REFERENCES [dbo].[Spies] ([SpyID])
GO
ALTER TABLE [dbo].[FriendlySpies] CHECK CONSTRAINT [FK_FriendlySpyID_FriendlySpyID]
GO
ALTER TABLE [dbo].[FriendlySpies]  WITH CHECK ADD  CONSTRAINT [FK_SpyID_SpyID] FOREIGN KEY([SpyID])
REFERENCES [dbo].[Spies] ([SpyID])
GO
ALTER TABLE [dbo].[FriendlySpies] CHECK CONSTRAINT [FK_SpyID_SpyID]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_PostSpyID_PostSpyID] FOREIGN KEY([SpyID])
REFERENCES [dbo].[Spies] ([SpyID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_PostSpyID_PostSpyID]
GO
ALTER TABLE [dbo].[SpyServices]  WITH CHECK ADD  CONSTRAINT [FK_ServiceSpyID_ServiceSpyID] FOREIGN KEY([SpyID])
REFERENCES [dbo].[Spies] ([SpyID])
GO
ALTER TABLE [dbo].[SpyServices] CHECK CONSTRAINT [FK_ServiceSpyID_ServiceSpyID]
GO
ALTER TABLE [dbo].[SpySkills]  WITH CHECK ADD  CONSTRAINT [FK_SkillSpyID_SkillSpyID] FOREIGN KEY([SpyID])
REFERENCES [dbo].[Spies] ([SpyID])
GO
ALTER TABLE [dbo].[SpySkills] CHECK CONSTRAINT [FK_SkillSpyID_SkillSpyID]
GO
USE [master]
GO
ALTER DATABASE [SpyduhTom] SET  READ_WRITE 
GO
