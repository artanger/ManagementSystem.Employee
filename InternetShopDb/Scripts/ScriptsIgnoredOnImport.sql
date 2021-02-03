
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
