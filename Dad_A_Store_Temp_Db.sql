USE [master]
GO
/****** Object:  Database [TempData-A-Store]    Script Date: 10/16/2021 10:43:21 AM ******/
CREATE DATABASE [TempData-A-Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TempData-A-Store', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TempData-A-Store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TempData-A-Store_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TempData-A-Store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TempData-A-Store] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TempData-A-Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TempData-A-Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TempData-A-Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TempData-A-Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TempData-A-Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TempData-A-Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [TempData-A-Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TempData-A-Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TempData-A-Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TempData-A-Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TempData-A-Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TempData-A-Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TempData-A-Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TempData-A-Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TempData-A-Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TempData-A-Store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TempData-A-Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TempData-A-Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TempData-A-Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TempData-A-Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TempData-A-Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TempData-A-Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TempData-A-Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TempData-A-Store] SET RECOVERY FULL 
GO
ALTER DATABASE [TempData-A-Store] SET  MULTI_USER 
GO
ALTER DATABASE [TempData-A-Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TempData-A-Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TempData-A-Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TempData-A-Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TempData-A-Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TempData-A-Store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TempData-A-Store', N'ON'
GO
ALTER DATABASE [TempData-A-Store] SET QUERY_STORE = OFF
GO
USE [TempData-A-Store]
GO
/****** Object:  Table [dbo].[CATEGORIES]    Script Date: 10/16/2021 10:43:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIES](
	[CategoryID] [uniqueidentifier] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[CategoryDescription] [nvarchar](50) NOT NULL,
	[DepartmentID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENTS]    Script Date: 10/16/2021 10:43:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENTS](
	[DepartmentID] [uniqueidentifier] NOT NULL,
	[Departmentname] [nvarchar](50) NOT NULL,
	[DepartmentDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DEPARTMENTS] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ITEMS]    Script Date: 10/16/2021 10:43:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITEMS](
	[ItemID] [uniqueidentifier] NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[ItemDescription] [nvarchar](50) NOT NULL,
	[ItemPrice] [decimal](8, 2) NOT NULL,
	[CategoryID] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERDETAILS]    Script Date: 10/16/2021 10:43:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERDETAILS](
	[OrderID] [uniqueidentifier] NOT NULL,
	[ItemID] [uniqueidentifier] NOT NULL,
	[ItemQuantity] [int] NOT NULL,
	[ItemPrice] [decimal](8, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 10/16/2021 10:43:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[OrderID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[PaymentID] [uniqueidentifier] NOT NULL,
	[OrderAmount] [decimal](10, 2) NOT NULL,
	[OrderDate] [smalldatetime] NOT NULL,
	[ShipDate] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYMENTTYPES]    Script Date: 10/16/2021 10:43:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENTTYPES](
	[PaymentID] [uniqueidentifier] NOT NULL,
	[PaymentType] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 10/16/2021 10:43:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[UserID] [uniqueidentifier] NOT NULL,
	[UserFirst] [nvarchar](50) NOT NULL,
	[UserLast] [nvarchar](50) NOT NULL,
	[UserAddress1] [nvarchar](300) NULL,
	[UserAddress2] [nvarchar](300) NULL,
	[UserCity] [varchar](50) NULL,
	[UserZip] [int] NOT NULL,
	[UserState] [varchar](30) NOT NULL,
	[PaymentID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CATEGORIES] ([CategoryID], [CategoryName], [CategoryDescription], [DepartmentID]) VALUES (N'84133f45-922e-ec11-8b52-5cea1db77666', N'Lawn', N'Keep Dad ocupied in the yard', N'2fce3e18-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[CATEGORIES] ([CategoryID], [CategoryName], [CategoryDescription], [DepartmentID]) VALUES (N'85133f45-922e-ec11-8b52-5cea1db77666', N'Equipment', N'Tools that Dad thinks are dangerous', N'2fce3e18-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[CATEGORIES] ([CategoryID], [CategoryName], [CategoryDescription], [DepartmentID]) VALUES (N'86133f45-922e-ec11-8b52-5cea1db77666', N'Clothing', N'keep Dad looking good with the threads', N'30ce3e18-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[CATEGORIES] ([CategoryID], [CategoryName], [CategoryDescription], [DepartmentID]) VALUES (N'87133f45-922e-ec11-8b52-5cea1db77666', N'Gadgets', N'Keep Dad thinking he is cool', N'30ce3e18-922e-ec11-8b52-5cea1db77666')
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentID], [Departmentname], [DepartmentDescription]) VALUES (N'2fce3e18-922e-ec11-8b52-5cea1db77666', N'Outdoor', N'Get Dad out of the house')
INSERT [dbo].[DEPARTMENTS] ([DepartmentID], [Departmentname], [DepartmentDescription]) VALUES (N'30ce3e18-922e-ec11-8b52-5cea1db77666', N'Indoor', N'Keep Dad in the house')
GO
INSERT [dbo].[ITEMS] ([ItemID], [ItemName], [ItemDescription], [ItemPrice], [CategoryID]) VALUES (N'e1d04f55-922e-ec11-8b52-5cea1db77666', N'Mower', N'Grass Height Setting Equipment', CAST(1500.00 AS Decimal(8, 2)), N'84133f45-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[ITEMS] ([ItemID], [ItemName], [ItemDescription], [ItemPrice], [CategoryID]) VALUES (N'e2d04f55-922e-ec11-8b52-5cea1db77666', N'Clippers', N'Bushes growth regulator', CAST(50.00 AS Decimal(8, 2)), N'84133f45-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[ITEMS] ([ItemID], [ItemName], [ItemDescription], [ItemPrice], [CategoryID]) VALUES (N'e3d04f55-922e-ec11-8b52-5cea1db77666', N'Grill', N'Caveman tool for cooking', CAST(900.00 AS Decimal(8, 2)), N'85133f45-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[ITEMS] ([ItemID], [ItemName], [ItemDescription], [ItemPrice], [CategoryID]) VALUES (N'e4d04f55-922e-ec11-8b52-5cea1db77666', N'Thermometer', N'Outside temerature telling device', CAST(25.00 AS Decimal(8, 2)), N'85133f45-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[ITEMS] ([ItemID], [ItemName], [ItemDescription], [ItemPrice], [CategoryID]) VALUES (N'e5d04f55-922e-ec11-8b52-5cea1db77666', N'Short-shorts', N'Plese No Dad :(', CAST(15.00 AS Decimal(8, 2)), N'86133f45-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[ITEMS] ([ItemID], [ItemName], [ItemDescription], [ItemPrice], [CategoryID]) VALUES (N'e6d04f55-922e-ec11-8b52-5cea1db77666', N'Calf-high-Socks', N'Protecting the legs', CAST(10.00 AS Decimal(8, 2)), N'86133f45-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[ITEMS] ([ItemID], [ItemName], [ItemDescription], [ItemPrice], [CategoryID]) VALUES (N'e7d04f55-922e-ec11-8b52-5cea1db77666', N'Letherman', N'Hip Pocket Accessory', CAST(25.00 AS Decimal(8, 2)), N'87133f45-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[ITEMS] ([ItemID], [ItemName], [ItemDescription], [ItemPrice], [CategoryID]) VALUES (N'e8d04f55-922e-ec11-8b52-5cea1db77666', N'Glass protector', N'Glasses live extension device', CAST(30.00 AS Decimal(8, 2)), N'87133f45-922e-ec11-8b52-5cea1db77666')
GO
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'4f9e4086-952e-ec11-8b52-5cea1db77666', N'e2d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'4f9e4086-952e-ec11-8b52-5cea1db77666', N'e3d04f55-922e-ec11-8b52-5cea1db77666', 2, CAST(1800.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'4f9e4086-952e-ec11-8b52-5cea1db77666', N'e4d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'4f9e4086-952e-ec11-8b52-5cea1db77666', N'e6d04f55-922e-ec11-8b52-5cea1db77666', 13, CAST(130.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'4f9e4086-952e-ec11-8b52-5cea1db77666', N'e7d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'4f9e4086-952e-ec11-8b52-5cea1db77666', N'e8d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'7261daa8-952e-ec11-8b52-5cea1db77666', N'e2d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'7261daa8-952e-ec11-8b52-5cea1db77666', N'e3d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(900.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'7261daa8-952e-ec11-8b52-5cea1db77666', N'e4d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'7261daa8-952e-ec11-8b52-5cea1db77666', N'e6d04f55-922e-ec11-8b52-5cea1db77666', 3, CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'7261daa8-952e-ec11-8b52-5cea1db77666', N'e7d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'7261daa8-952e-ec11-8b52-5cea1db77666', N'e8d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'662f41d4-952e-ec11-8b52-5cea1db77666', N'e2d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'662f41d4-952e-ec11-8b52-5cea1db77666', N'e3d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(900.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'662f41d4-952e-ec11-8b52-5cea1db77666', N'e4d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'662f41d4-952e-ec11-8b52-5cea1db77666', N'e6d04f55-922e-ec11-8b52-5cea1db77666', 3, CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'662f41d4-952e-ec11-8b52-5cea1db77666', N'e7d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'662f41d4-952e-ec11-8b52-5cea1db77666', N'e8d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'06c391fe-952e-ec11-8b52-5cea1db77666', N'e2d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(50.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'06c391fe-952e-ec11-8b52-5cea1db77666', N'e3d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(900.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'06c391fe-952e-ec11-8b52-5cea1db77666', N'e4d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'06c391fe-952e-ec11-8b52-5cea1db77666', N'e6d04f55-922e-ec11-8b52-5cea1db77666', 3, CAST(30.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'06c391fe-952e-ec11-8b52-5cea1db77666', N'e7d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(25.00 AS Decimal(8, 2)))
INSERT [dbo].[ORDERDETAILS] ([OrderID], [ItemID], [ItemQuantity], [ItemPrice]) VALUES (N'06c391fe-952e-ec11-8b52-5cea1db77666', N'e8d04f55-922e-ec11-8b52-5cea1db77666', 1, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[ORDERS] ([OrderID], [UserID], [PaymentID], [OrderAmount], [OrderDate], [ShipDate]) VALUES (N'4f9e4086-952e-ec11-8b52-5cea1db77666', N'8c13af63-922e-ec11-8b52-5cea1db77666', N'0703875b-922e-ec11-8b52-5cea1db77666', CAST(2060.00 AS Decimal(10, 2)), CAST(N'2021-10-16T10:27:00' AS SmallDateTime), CAST(N'2021-10-16T10:27:00' AS SmallDateTime))
INSERT [dbo].[ORDERS] ([OrderID], [UserID], [PaymentID], [OrderAmount], [OrderDate], [ShipDate]) VALUES (N'7261daa8-952e-ec11-8b52-5cea1db77666', N'8d13af63-922e-ec11-8b52-5cea1db77666', N'0803875b-922e-ec11-8b52-5cea1db77666', CAST(1060.00 AS Decimal(10, 2)), CAST(N'2021-10-16T10:28:00' AS SmallDateTime), CAST(N'2021-10-16T10:28:00' AS SmallDateTime))
INSERT [dbo].[ORDERS] ([OrderID], [UserID], [PaymentID], [OrderAmount], [OrderDate], [ShipDate]) VALUES (N'662f41d4-952e-ec11-8b52-5cea1db77666', N'8e13af63-922e-ec11-8b52-5cea1db77666', N'0903875b-922e-ec11-8b52-5cea1db77666', CAST(1060.00 AS Decimal(10, 2)), CAST(N'2021-10-16T10:29:00' AS SmallDateTime), CAST(N'2021-10-16T10:29:00' AS SmallDateTime))
INSERT [dbo].[ORDERS] ([OrderID], [UserID], [PaymentID], [OrderAmount], [OrderDate], [ShipDate]) VALUES (N'06c391fe-952e-ec11-8b52-5cea1db77666', N'8f13af63-922e-ec11-8b52-5cea1db77666', N'0a03875b-922e-ec11-8b52-5cea1db77666', CAST(1060.00 AS Decimal(10, 2)), CAST(N'2021-10-16T10:31:00' AS SmallDateTime), CAST(N'2021-10-16T10:31:00' AS SmallDateTime))
GO
INSERT [dbo].[PAYMENTTYPES] ([PaymentID], [PaymentType]) VALUES (N'0703875b-922e-ec11-8b52-5cea1db77666', N'Visa')
INSERT [dbo].[PAYMENTTYPES] ([PaymentID], [PaymentType]) VALUES (N'0803875b-922e-ec11-8b52-5cea1db77666', N'Mastercard')
INSERT [dbo].[PAYMENTTYPES] ([PaymentID], [PaymentType]) VALUES (N'0903875b-922e-ec11-8b52-5cea1db77666', N'American Express')
INSERT [dbo].[PAYMENTTYPES] ([PaymentID], [PaymentType]) VALUES (N'0a03875b-922e-ec11-8b52-5cea1db77666', N'Discover networks')
GO
INSERT [dbo].[USERS] ([UserID], [UserFirst], [UserLast], [UserAddress1], [UserAddress2], [UserCity], [UserZip], [UserState], [PaymentID]) VALUES (N'8c13af63-922e-ec11-8b52-5cea1db77666', N'Bob', N'Belcher', N'1001 bourger street Seymours Bay', N'', N'San Francisco', 90210, N'California', N'0703875b-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[USERS] ([UserID], [UserFirst], [UserLast], [UserAddress1], [UserAddress2], [UserCity], [UserZip], [UserState], [PaymentID]) VALUES (N'8d13af63-922e-ec11-8b52-5cea1db77666', N'Hank', N'Hill', N'1002 The Hank Hill Homestead', N'', N'Arlen', 75216, N'Texas', N'0803875b-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[USERS] ([UserID], [UserFirst], [UserLast], [UserAddress1], [UserAddress2], [UserCity], [UserZip], [UserState], [PaymentID]) VALUES (N'8e13af63-922e-ec11-8b52-5cea1db77666', N'Bob', N'Parr', N'440 Somewhere', N'', N'Metroville', 70000, N'Texas', N'0903875b-922e-ec11-8b52-5cea1db77666')
INSERT [dbo].[USERS] ([UserID], [UserFirst], [UserLast], [UserAddress1], [UserAddress2], [UserCity], [UserZip], [UserState], [PaymentID]) VALUES (N'8f13af63-922e-ec11-8b52-5cea1db77666', N'Phil', N'Dunphy', N'10336 Dunleer Dr', N'', N'Los Angeles', 90210, N'California', N'0a03875b-922e-ec11-8b52-5cea1db77666')
GO
ALTER TABLE [dbo].[CATEGORIES] ADD  DEFAULT (newsequentialid()) FOR [CategoryID]
GO
ALTER TABLE [dbo].[CATEGORIES] ADD  DEFAULT ('') FOR [CategoryName]
GO
ALTER TABLE [dbo].[CATEGORIES] ADD  DEFAULT ('') FOR [CategoryDescription]
GO
ALTER TABLE [dbo].[DEPARTMENTS] ADD  DEFAULT (newsequentialid()) FOR [DepartmentID]
GO
ALTER TABLE [dbo].[DEPARTMENTS] ADD  DEFAULT ('') FOR [Departmentname]
GO
ALTER TABLE [dbo].[DEPARTMENTS] ADD  DEFAULT ('') FOR [DepartmentDescription]
GO
ALTER TABLE [dbo].[ITEMS] ADD  DEFAULT (newsequentialid()) FOR [ItemID]
GO
ALTER TABLE [dbo].[ITEMS] ADD  DEFAULT ('') FOR [ItemName]
GO
ALTER TABLE [dbo].[ITEMS] ADD  DEFAULT ('') FOR [ItemDescription]
GO
ALTER TABLE [dbo].[ITEMS] ADD  DEFAULT ((0.0)) FOR [ItemPrice]
GO
ALTER TABLE [dbo].[ORDERDETAILS] ADD  DEFAULT ((0)) FOR [ItemQuantity]
GO
ALTER TABLE [dbo].[ORDERDETAILS] ADD  DEFAULT ((0.0)) FOR [ItemPrice]
GO
ALTER TABLE [dbo].[ORDERS] ADD  DEFAULT (newsequentialid()) FOR [OrderID]
GO
ALTER TABLE [dbo].[ORDERS] ADD  DEFAULT ('') FOR [UserID]
GO
ALTER TABLE [dbo].[ORDERS] ADD  DEFAULT ('') FOR [PaymentID]
GO
ALTER TABLE [dbo].[ORDERS] ADD  DEFAULT ((0.0)) FOR [OrderAmount]
GO
ALTER TABLE [dbo].[ORDERS] ADD  DEFAULT (CONVERT([smalldatetime],getdate())) FOR [OrderDate]
GO
ALTER TABLE [dbo].[ORDERS] ADD  DEFAULT (CONVERT([smalldatetime],getdate())) FOR [ShipDate]
GO
ALTER TABLE [dbo].[PAYMENTTYPES] ADD  DEFAULT (newsequentialid()) FOR [PaymentID]
GO
ALTER TABLE [dbo].[PAYMENTTYPES] ADD  DEFAULT ('') FOR [PaymentType]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT (newsequentialid()) FOR [UserID]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ('') FOR [UserFirst]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ('') FOR [UserLast]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ('') FOR [UserAddress1]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ('') FOR [UserAddress2]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ('') FOR [UserCity]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ((0)) FOR [UserZip]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ('') FOR [UserState]
GO
ALTER TABLE [dbo].[CATEGORIES]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORIES] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[DEPARTMENTS] ([DepartmentID])
GO
ALTER TABLE [dbo].[CATEGORIES] CHECK CONSTRAINT [FK_CATEGORIES]
GO
ALTER TABLE [dbo].[ITEMS]  WITH CHECK ADD  CONSTRAINT [FK_ITEMS] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CATEGORIES] ([CategoryID])
GO
ALTER TABLE [dbo].[ITEMS] CHECK CONSTRAINT [FK_ITEMS]
GO
ALTER TABLE [dbo].[ORDERDETAILS]  WITH CHECK ADD FOREIGN KEY([ItemID])
REFERENCES [dbo].[ITEMS] ([ItemID])
GO
ALTER TABLE [dbo].[ORDERDETAILS]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[ORDERS] ([OrderID])
GO
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD FOREIGN KEY([PaymentID])
REFERENCES [dbo].[PAYMENTTYPES] ([PaymentID])
GO
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[USERS] ([UserID])
GO
ALTER TABLE [dbo].[USERS]  WITH CHECK ADD  CONSTRAINT [FK_USERS] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[PAYMENTTYPES] ([PaymentID])
GO
ALTER TABLE [dbo].[USERS] CHECK CONSTRAINT [FK_USERS]
GO
USE [master]
GO
ALTER DATABASE [TempData-A-Store] SET  READ_WRITE 
GO