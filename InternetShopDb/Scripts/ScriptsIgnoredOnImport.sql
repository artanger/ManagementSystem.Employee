
USE [InternetShopDB]
GO

ALTER TABLE [dbo].[Stocks] DROP CONSTRAINT [FK_Stocks_Products]
GO

ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_ProductDetails]
GO

ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Employees]
GO

ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Customers]
GO

ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Products]
GO

ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders1]
GO

ALTER TABLE [dbo].[EmployeesInfo] DROP CONSTRAINT [FK_EmployeesInfo_Employees]
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 03.02.2021 19:56:50 ******/
DROP TABLE [dbo].[Stocks]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 03.02.2021 19:56:50 ******/
DROP TABLE [dbo].[Products]
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 03.02.2021 19:56:50 ******/
DROP TABLE [dbo].[ProductDetails]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 03.02.2021 19:56:50 ******/
DROP TABLE [dbo].[Orders]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 03.02.2021 19:56:50 ******/
DROP TABLE [dbo].[OrderDetails]
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 03.02.2021 19:56:50 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 03.02.2021 19:56:50 ******/
DROP TABLE [dbo].[Employees]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 03.02.2021 19:56:50 ******/
DROP TABLE [dbo].[Customers]
GO

USE [master]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 03.02.2021 19:56:50 ******/
DROP DATABASE [InternetShopDB]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 03.02.2021 19:56:50 ******/
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

/****** Object:  Table [dbo].[Customers]    Script Date: 03.02.2021 19:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 03.02.2021 19:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 03.02.2021 19:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 03.02.2021 19:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 03.02.2021 19:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 03.02.2021 19:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 03.02.2021 19:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 03.02.2021 19:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO

USE [InternetShopDB]
GO

ALTER TABLE [dbo].[Stocks] DROP CONSTRAINT [FK_Stocks_Products]
GO

ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_ProductDetails]
GO

ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Employees]
GO

ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Customers]
GO

ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Products]
GO

ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders1]
GO

ALTER TABLE [dbo].[EmployeesInfo] DROP CONSTRAINT [FK_EmployeesInfo_Employees]
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 03.02.2021 20:11:08 ******/
DROP TABLE [dbo].[Stocks]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 03.02.2021 20:11:08 ******/
DROP TABLE [dbo].[Products]
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 03.02.2021 20:11:08 ******/
DROP TABLE [dbo].[ProductDetails]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 03.02.2021 20:11:08 ******/
DROP TABLE [dbo].[Orders]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 03.02.2021 20:11:08 ******/
DROP TABLE [dbo].[OrderDetails]
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 03.02.2021 20:11:08 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 03.02.2021 20:11:08 ******/
DROP TABLE [dbo].[Employees]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 03.02.2021 20:11:08 ******/
DROP TABLE [dbo].[Customers]
GO

USE [master]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 03.02.2021 20:11:08 ******/
DROP DATABASE [InternetShopDB]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 03.02.2021 20:11:08 ******/
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

/****** Object:  Table [dbo].[Customers]    Script Date: 03.02.2021 20:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 03.02.2021 20:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 03.02.2021 20:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 03.02.2021 20:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 03.02.2021 20:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 03.02.2021 20:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 03.02.2021 20:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 03.02.2021 20:11:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO

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

ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders1]
GO

ALTER TABLE [dbo].[EmployeesInfo] DROP CONSTRAINT [FK_EmployeesInfo_Employees]
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 21:45:27 ******/
DROP TABLE [dbo].[Stocks]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 21:45:27 ******/
DROP TABLE [dbo].[Products]
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 21:45:27 ******/
DROP TABLE [dbo].[ProductDetails]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 21:45:27 ******/
DROP TABLE [dbo].[Orders]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 21:45:27 ******/
DROP TABLE [dbo].[OrderDetails]
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 21:45:27 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 21:45:27 ******/
DROP TABLE [dbo].[Employees]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 21:45:27 ******/
DROP TABLE [dbo].[Customers]
GO

USE [master]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 21:45:27 ******/
DROP DATABASE [InternetShopDB]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 21:45:27 ******/
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

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 21:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 21:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 21:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 21:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 21:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 21:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 21:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 21:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT [dbo].[Customers] ([ID], [FirstName], [LastName], [Address], [City], [Phone], [DateInSystem]) VALUES (1, N'Art', N'Anger', N'asdasdas', N'asdasd', N'05686050    ', CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] ON
GO

INSERT [dbo].[EmployeesInfo] ([ID], [MaritalStatus], [BirthDate], [Address], [Phone], [EmployeesID]) VALUES (1, N'single', CAST(N'1993-03-08' AS Date), N'test', N'80955675009 ', 4)
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (1, 1, 4, CAST(N'2021-02-06' AS Date))
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (2, 1, 5, CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] ON
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (1, N'silver              ', N'Good realistic Sword', 5)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (3, N'Green               ', N'Jedi', 6)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (4, N'Red                 ', N'DarkSideJadi', 7)
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Sword One')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (4, N'Sword two')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (5, N'Third sabre')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (6, N'Lightsaber')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (7, N'Lightsaber2')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO

SET IDENTITY_INSERT [dbo].[Stocks] ON
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 25, 1)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (4, 100, 2)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 500, 3)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (7, 1000, 5)
GO

SET IDENTITY_INSERT [dbo].[Stocks] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO

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

ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders1]
GO

ALTER TABLE [dbo].[EmployeesInfo] DROP CONSTRAINT [FK_EmployeesInfo_Employees]
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:12:21 ******/
DROP TABLE [dbo].[Stocks]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:12:21 ******/
DROP TABLE [dbo].[Products]
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:12:21 ******/
DROP TABLE [dbo].[ProductDetails]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:12:21 ******/
DROP TABLE [dbo].[Orders]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:12:21 ******/
DROP TABLE [dbo].[OrderDetails]
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:12:21 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:12:21 ******/
DROP TABLE [dbo].[Employees]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:12:21 ******/
DROP TABLE [dbo].[Customers]
GO

USE [master]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:12:21 ******/
DROP DATABASE [InternetShopDB]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:12:21 ******/
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

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:12:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:12:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:12:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:12:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:12:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:12:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:12:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:12:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT [dbo].[Customers] ([ID], [FirstName], [LastName], [Address], [City], [Phone], [DateInSystem]) VALUES (1, N'Art', N'Anger', N'asdasdas', N'asdasd', N'05686050    ', CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] ON
GO

INSERT [dbo].[EmployeesInfo] ([ID], [MaritalStatus], [BirthDate], [Address], [Phone], [EmployeesID]) VALUES (1, N'single', CAST(N'1993-03-08' AS Date), N'test', N'80955675009 ', 4)
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (1, 1, 4, CAST(N'2021-02-06' AS Date))
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (2, 1, 5, CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] ON
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (1, N'silver              ', N'Good realistic Sword', 5)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (3, N'Green               ', N'Jedi', 6)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (4, N'Red                 ', N'DarkSideJadi', 7)
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Sword One')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (4, N'Sword two')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (5, N'Third sabre')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (6, N'Lightsaber')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (7, N'Lightsaber2')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO

SET IDENTITY_INSERT [dbo].[Stocks] ON
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 25, 1)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (4, 100, 2)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 500, 3)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (7, 1000, 5)
GO

SET IDENTITY_INSERT [dbo].[Stocks] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO

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

ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders1]
GO

ALTER TABLE [dbo].[EmployeesInfo] DROP CONSTRAINT [FK_EmployeesInfo_Employees]
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:24:02 ******/
DROP TABLE [dbo].[Stocks]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:24:02 ******/
DROP TABLE [dbo].[Products]
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:24:02 ******/
DROP TABLE [dbo].[ProductDetails]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:24:02 ******/
DROP TABLE [dbo].[Orders]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:24:02 ******/
DROP TABLE [dbo].[OrderDetails]
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:24:02 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:24:02 ******/
DROP TABLE [dbo].[Employees]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:24:02 ******/
DROP TABLE [dbo].[Customers]
GO

USE [master]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:24:02 ******/
DROP DATABASE [InternetShopDB]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:24:02 ******/
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

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:24:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:24:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:24:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:24:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:24:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:24:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:24:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:24:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT [dbo].[Customers] ([ID], [FirstName], [LastName], [Address], [City], [Phone], [DateInSystem]) VALUES (1, N'Art', N'Anger', N'asdasdas', N'asdasd', N'05686050    ', CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] ON
GO

INSERT [dbo].[EmployeesInfo] ([ID], [MaritalStatus], [BirthDate], [Address], [Phone], [EmployeesID]) VALUES (1, N'single', CAST(N'1993-03-08' AS Date), N'test', N'80955675009 ', 4)
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (1, 1, 4, CAST(N'2021-02-06' AS Date))
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (2, 1, 5, CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] ON
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (1, N'silver              ', N'Good realistic Sword', 5)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (3, N'Green               ', N'Jedi', 6)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (4, N'Red                 ', N'DarkSideJadi', 7)
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Sword One')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (4, N'Sword two')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (5, N'Third sabre')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (6, N'Lightsaber')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (7, N'Lightsaber2')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO

SET IDENTITY_INSERT [dbo].[Stocks] ON
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 25, 1)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (4, 100, 2)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 500, 3)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (7, 1000, 5)
GO

SET IDENTITY_INSERT [dbo].[Stocks] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO

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

ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Orders1]
GO

ALTER TABLE [dbo].[EmployeesInfo] DROP CONSTRAINT [FK_EmployeesInfo_Employees]
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:31:14 ******/
DROP TABLE [dbo].[Stocks]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:31:14 ******/
DROP TABLE [dbo].[Products]
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:31:14 ******/
DROP TABLE [dbo].[ProductDetails]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:31:14 ******/
DROP TABLE [dbo].[Orders]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:31:14 ******/
DROP TABLE [dbo].[OrderDetails]
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:31:14 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:31:14 ******/
DROP TABLE [dbo].[Employees]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:31:14 ******/
DROP TABLE [dbo].[Customers]
GO

USE [master]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:31:14 ******/
DROP DATABASE [InternetShopDB]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:31:14 ******/
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

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:31:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:31:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:31:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:31:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:31:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:31:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:31:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:31:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT [dbo].[Customers] ([ID], [FirstName], [LastName], [Address], [City], [Phone], [DateInSystem]) VALUES (1, N'Art', N'Anger', N'asdasdas', N'asdasd', N'05686050    ', CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] ON
GO

INSERT [dbo].[EmployeesInfo] ([ID], [MaritalStatus], [BirthDate], [Address], [Phone], [EmployeesID]) VALUES (1, N'single', CAST(N'1993-03-08' AS Date), N'test', N'80955675009 ', 4)
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (1, 1, 4, CAST(N'2021-02-06' AS Date))
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (2, 1, 5, CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] ON
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (1, N'silver              ', N'Good realistic Sword', 5)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (3, N'Green               ', N'Jedi', 6)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (4, N'Red                 ', N'DarkSideJadi', 7)
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Sword One')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (4, N'Sword two')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (5, N'Third sabre')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (6, N'Lightsaber')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (7, N'Lightsaber2')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO

SET IDENTITY_INSERT [dbo].[Stocks] ON
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 25, 1)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (4, 100, 2)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 500, 3)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (7, 1000, 5)
GO

SET IDENTITY_INSERT [dbo].[Stocks] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO

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

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:38:21 ******/
DROP TABLE [dbo].[Stocks]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:38:21 ******/
DROP TABLE [dbo].[Products]
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:38:21 ******/
DROP TABLE [dbo].[ProductDetails]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:38:21 ******/
DROP TABLE [dbo].[Orders]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:38:21 ******/
DROP TABLE [dbo].[OrderDetails]
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:38:21 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:38:21 ******/
DROP TABLE [dbo].[Employees]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:38:21 ******/
DROP TABLE [dbo].[Customers]
GO

USE [master]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:38:21 ******/
DROP DATABASE [InternetShopDB]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:38:21 ******/
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

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:38:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT [dbo].[Customers] ([ID], [FirstName], [LastName], [Address], [City], [Phone], [DateInSystem]) VALUES (1, N'Art', N'Anger', N'asdasdas', N'asdasd', N'05686050    ', CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] ON
GO

INSERT [dbo].[EmployeesInfo] ([ID], [MaritalStatus], [BirthDate], [Address], [Phone], [EmployeesID]) VALUES (1, N'single', CAST(N'1993-03-08' AS Date), N'test', N'80955675009 ', 4)
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (1, 1, 4, CAST(N'2021-02-06' AS Date))
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (2, 1, 5, CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] ON
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (1, N'silver              ', N'Good realistic Sword', 5)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (3, N'Green               ', N'Jedi', 6)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (4, N'Red                 ', N'DarkSideJadi', 7)
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Sword One')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (4, N'Sword two')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (5, N'Third sabre')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (6, N'Lightsaber')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (7, N'Lightsaber2')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO

SET IDENTITY_INSERT [dbo].[Stocks] ON
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 25, 1)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (4, 100, 2)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 500, 3)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (7, 1000, 5)
GO

SET IDENTITY_INSERT [dbo].[Stocks] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO

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

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:47:10 ******/
DROP TABLE [dbo].[Stocks]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:47:10 ******/
DROP TABLE [dbo].[Products]
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:47:10 ******/
DROP TABLE [dbo].[ProductDetails]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:47:10 ******/
DROP TABLE [dbo].[Orders]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:47:10 ******/
DROP TABLE [dbo].[OrderDetails]
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:47:10 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:47:10 ******/
DROP TABLE [dbo].[Employees]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:47:10 ******/
DROP TABLE [dbo].[Customers]
GO

USE [master]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:47:10 ******/
DROP DATABASE [InternetShopDB]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 22:47:10 ******/
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

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 22:47:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 22:47:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 22:47:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 22:47:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 22:47:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 22:47:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 22:47:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 22:47:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT [dbo].[Customers] ([ID], [FirstName], [LastName], [Address], [City], [Phone], [DateInSystem]) VALUES (1, N'Art', N'Anger', N'asdasdas', N'asdasd', N'05686050    ', CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] ON
GO

INSERT [dbo].[EmployeesInfo] ([ID], [MaritalStatus], [BirthDate], [Address], [Phone], [EmployeesID]) VALUES (1, N'single', CAST(N'1993-03-08' AS Date), N'test', N'80955675009 ', 4)
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (1, 1, 4, CAST(N'2021-02-06' AS Date))
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (2, 1, 5, CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] ON
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (1, N'silver              ', N'Good realistic Sword', 5)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (3, N'Green               ', N'Jedi', 6)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (4, N'Red                 ', N'DarkSideJadi', 7)
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Sword One')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (4, N'Sword two')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (5, N'Third sabre')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (6, N'Lightsaber')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (7, N'Lightsaber2')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO

SET IDENTITY_INSERT [dbo].[Stocks] ON
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 25, 1)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (4, 100, 2)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 500, 3)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (7, 1000, 5)
GO

SET IDENTITY_INSERT [dbo].[Stocks] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO

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

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 23:00:51 ******/
DROP TABLE [dbo].[Stocks]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 23:00:51 ******/
DROP TABLE [dbo].[Products]
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 23:00:51 ******/
DROP TABLE [dbo].[ProductDetails]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 23:00:51 ******/
DROP TABLE [dbo].[Orders]
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 23:00:51 ******/
DROP TABLE [dbo].[OrderDetails]
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 23:00:51 ******/
DROP TABLE [dbo].[EmployeesInfo]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 23:00:51 ******/
DROP TABLE [dbo].[Employees]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 23:00:51 ******/
DROP TABLE [dbo].[Customers]
GO

USE [master]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 23:00:51 ******/
DROP DATABASE [InternetShopDB]
GO

/****** Object:  Database [InternetShopDB]    Script Date: 09.02.2021 23:00:51 ******/
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

/****** Object:  Table [dbo].[Customers]    Script Date: 09.02.2021 23:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 23:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 23:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 23:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 23:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 23:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 23:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 23:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT [dbo].[Customers] ([ID], [FirstName], [LastName], [Address], [City], [Phone], [DateInSystem]) VALUES (1, N'Art', N'Anger', N'asdasdas', N'asdasd', N'05686050    ', CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] ON
GO

INSERT [dbo].[EmployeesInfo] ([ID], [MaritalStatus], [BirthDate], [Address], [Phone], [EmployeesID]) VALUES (1, N'single', CAST(N'1993-03-08' AS Date), N'test', N'80955675009 ', 4)
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (1, 1, 4, CAST(N'2021-02-06' AS Date))
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (2, 1, 5, CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] ON
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (1, N'silver              ', N'Good realistic Sword', 5)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (3, N'Green               ', N'Jedi', 6)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (4, N'Red                 ', N'DarkSideJadi', 7)
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Sword One')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (4, N'Sword two')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (5, N'Third sabre')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (6, N'Lightsaber')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (7, N'Lightsaber2')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO

SET IDENTITY_INSERT [dbo].[Stocks] ON
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 25, 1)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (4, 100, 2)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 500, 3)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (7, 1000, 5)
GO

SET IDENTITY_INSERT [dbo].[Stocks] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO

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

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[ProductDetails]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Products]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Stocks]    Script Date: 09.02.2021 23:04:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO

INSERT [dbo].[Customers] ([ID], [FirstName], [LastName], [Address], [City], [Phone], [DateInSystem]) VALUES (1, N'Art', N'Anger', N'asdasdas', N'asdasd', N'05686050    ', CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

SET IDENTITY_INSERT [dbo].[Employees] ON
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (4, N'art', N'anger', N'1', 1.0000, 1.0000)
GO

INSERT [dbo].[Employees] ([EmployeesID], [FirstName], [LastName], [Post], [Salary], [PriorSalary]) VALUES (5, N'Wolf', N'Gammer', N'53224', 10000.0000, 8000.0000)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] ON
GO

INSERT [dbo].[EmployeesInfo] ([ID], [MaritalStatus], [BirthDate], [Address], [Phone], [EmployeesID]) VALUES (1, N'single', CAST(N'1993-03-08' AS Date), N'test', N'80955675009 ', 4)
GO

SET IDENTITY_INSERT [dbo].[EmployeesInfo] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (1, 1, 4, CAST(N'2021-02-06' AS Date))
GO

INSERT [dbo].[Orders] ([ID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (2, 1, 5, CAST(N'2021-02-06' AS Date))
GO

SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] ON
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (1, N'silver              ', N'Good realistic Sword', 5)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (3, N'Green               ', N'Jedi', 6)
GO

INSERT [dbo].[ProductDetails] ([ID], [Color], [Description], [ProductID]) VALUES (4, N'Red                 ', N'DarkSideJadi', 7)
GO

SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Sword One')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (4, N'Sword two')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (5, N'Third sabre')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (6, N'Lightsaber')
GO

INSERT [dbo].[Products] ([ID], [Name]) VALUES (7, N'Lightsaber2')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO

SET IDENTITY_INSERT [dbo].[Stocks] ON
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 25, 1)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (4, 100, 2)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (6, 500, 3)
GO

INSERT [dbo].[Stocks] ([ProductID], [Qty], [ID]) VALUES (7, 1000, 5)
GO

SET IDENTITY_INSERT [dbo].[Stocks] OFF
GO

USE [master]
GO

ALTER DATABASE [InternetShopDB] SET  READ_WRITE
GO
