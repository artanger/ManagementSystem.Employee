USE [InternetShopDB]
GO
ALTER TABLE [dbo].[Stocks] DROP CONSTRAINT [FK_Stocks_Products]
GO
ALTER TABLE [dbo].[ProductDetails] DROP CONSTRAINT [FK_ProductDetails_Products]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[EmployeesInfo] DROP CONSTRAINT [FK_EmployeesInfo_Employees]
GO
/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 23:04:16 ******/
DROP TABLE [dbo].[Stocks]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 23:04:16 ******/
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 23:04:16 ******/
DROP TABLE [dbo].[ProductDetails]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 23:04:16 ******/
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 23:04:16 ******/
DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 23:04:16 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 23:04:16 ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 23:04:16 ******/
DROP TABLE [dbo].[Customers]
GO
USE [master]
GO
/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 23:04:16 ******/
DROP DATABASE [InternetShopDB]
GO
/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 23:04:16 ******/
CREATE DATABASE [InternetShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InternetShopDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\InternetShopDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'InternetShopDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\InternetShopDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [InternetShopDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InternetShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InternetShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InternetShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InternetShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InternetShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InternetShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [InternetShopDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InternetShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InternetShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InternetShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InternetShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InternetShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InternetShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InternetShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InternetShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InternetShopDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InternetShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InternetShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InternetShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InternetShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InternetShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InternetShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InternetShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InternetShopDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [InternetShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [InternetShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InternetShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InternetShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InternetShopDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [InternetShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [InternetShopDB]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Phone] [char](12) NULL,
	[DateInSystem] [date] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeesID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Post] [nvarchar](50) NULL,
	[Salary] [money] NOT NULL,
	[PriorSalary] [money] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeesInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaritalStatus] [varchar](10) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [char](12) NOT NULL,
	[EmployeesID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeesInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[TotalPrice]  AS (CONVERT([money],[Qty]*[Price])),
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nchar](20) NULL,
	[Description] [nvarchar](max) NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stocks](
	[ProductID] [int] NOT NULL,
	[Qty] [int] NULL CONSTRAINT [DF_Stocks_Qty]  DEFAULT ((0)),
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Stocks_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([ID], [FirstName], [LastName], [Address], [City], [Phone], [DateInSystem]) VALUES (1, N'Art', N'Anger', N'asdasdas', N'asdasd', N'05686050    ', CAST(N'2021-02-06' AS Date))
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[EmployeesInfo] ON 

INSERT [dbo].[EmployeesInfo] ([ID], [MaritalStatus], [BirthDate], [Address], [Phone], [EmployeesID]) VALUES (1, N'single', CAST(N'1993-03-08' AS Date), N'test', N'80955675009 ', 4)
SET IDENTITY_INSERT [dbo].[EmployeesInfo] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (1, 1, 4, CAST(N'2021-02-06' AS Date))
INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (2, 1, 5, CAST(N'2021-02-06' AS Date))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (1, N'silver              ', N'Good realistic Sword', 5)
INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (3, N'Green               ', N'Jedi', 6)
INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (4, N'Red                 ', N'DarkSideJadi', 7)
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Sword One')
INSERT [dbo].[Products] ([ID], [Name]) VALUES (4, N'Sword two')
INSERT [dbo].[Products] ([ID], [Name]) VALUES (5, N'Third sabre')
INSERT [dbo].[Products] ([ID], [Name]) VALUES (6, N'Lightsaber')
INSERT [dbo].[Products] ([ID], [Name]) VALUES (7, N'Lightsaber2')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Stocks] ON 

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 25, 1)
INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (4, 100, 2)
INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 500, 3)
INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (7, 1000, 5)
SET IDENTITY_INSERT [dbo].[Stocks] OFF
ALTER TABLE [dbo].[EmployeesInfo]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesInfo_Employees] FOREIGN KEY([EmployeesID])
REFERENCES [dbo].[Employees] ([EmployeesID])
GO
ALTER TABLE [dbo].[EmployeesInfo] CHECK CONSTRAINT [FK_EmployeesInfo_Employees]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeesID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Products]
GO
ALTER TABLE [dbo].[Stocks]  WITH CHECK ADD  CONSTRAINT [FK_Stocks_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[Stocks] CHECK CONSTRAINT [FK_Stocks_Products]
GO
USE [master]
GO
ALTER DATABASE [InternetShopDB] SET  READ_WRITE 
GO
