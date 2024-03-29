USE master
GO
-- Creating the ModernApiDB database
PRINT N'Creating the ModernApiDB database.'
CREATE DATABASE ModernApiDB
GO

USE [ModernApiDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- Creating the Customer Table
GO
CREATE TABLE [dbo].[Customers] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Address]     NVARCHAR (MAX) NULL,
    [CompanyName] NVARCHAR (MAX) NULL,
    [Name]        NVARCHAR (MAX) NULL
);

GO
-- Inserting test data
PRINT N'inserting the test data.'
USE ModernApiDB
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT INTO [dbo].[Customers] ([Id], [Address], [CompanyName], [Name]) VALUES (1, N'100 main street', N'Microsoft', N'Joe Doe')
INSERT INTO [dbo].[Customers] ([Id], [Address], [CompanyName], [Name]) VALUES (2, N'200 main street', N'Microsoft', N'Jane Doe')
INSERT INTO [dbo].[Customers] ([Id], [Address], [CompanyName], [Name]) VALUES (3, N'300 main street', N'Microsoft', N'Jimmy Doe')
INSERT INTO [dbo].[Customers] ([Id], [Address], [CompanyName], [Name]) VALUES (4, N'400 main street', N'Microsoft', N'Jesse Doe')
INSERT INTO [dbo].[Customers] ([Id], [Address], [CompanyName], [Name]) VALUES (5, N'500 main street', N'Microsoft', N'Jesse Doe')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO