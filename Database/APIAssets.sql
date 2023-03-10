USE [master]
GO
/****** Object:  Database [APIAssets]    Script Date: 28/12/2022 23:25:29 ******/
CREATE DATABASE [APIAssets]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'APIAssets', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\APIAssets.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'APIAssets_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\APIAssets_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [APIAssets] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [APIAssets].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [APIAssets] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [APIAssets] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [APIAssets] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [APIAssets] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [APIAssets] SET ARITHABORT OFF 
GO
ALTER DATABASE [APIAssets] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [APIAssets] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [APIAssets] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [APIAssets] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [APIAssets] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [APIAssets] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [APIAssets] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [APIAssets] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [APIAssets] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [APIAssets] SET  ENABLE_BROKER 
GO
ALTER DATABASE [APIAssets] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [APIAssets] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [APIAssets] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [APIAssets] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [APIAssets] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [APIAssets] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [APIAssets] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [APIAssets] SET RECOVERY FULL 
GO
ALTER DATABASE [APIAssets] SET  MULTI_USER 
GO
ALTER DATABASE [APIAssets] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [APIAssets] SET DB_CHAINING OFF 
GO
ALTER DATABASE [APIAssets] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [APIAssets] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [APIAssets] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [APIAssets] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'APIAssets', N'ON'
GO
ALTER DATABASE [APIAssets] SET QUERY_STORE = OFF
GO
USE [APIAssets]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/12/2022 23:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assets]    Script Date: 28/12/2022 23:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Assets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borrow_Assets]    Script Date: 28/12/2022 23:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrow_Assets](
	[NIK] [nvarchar](450) NOT NULL,
	[Asset_Id] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Borrowing_Time] [datetime2](7) NOT NULL,
	[Return_Time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Borrow_Assets] PRIMARY KEY CLUSTERED 
(
	[NIK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departements]    Script Date: 28/12/2022 23:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NIK_HoD] [nvarchar](450) NULL,
 CONSTRAINT [PK_Departements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 28/12/2022 23:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[NIK] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[BirthOfDate] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Role_Id] [int] NOT NULL,
	[Departement_Id] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[NIK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 28/12/2022 23:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28/12/2022 23:25:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[NIK] [nvarchar](450) NOT NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[NIK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221228120318_InitialMigration', N'5.0.9')
GO
SET IDENTITY_INSERT [dbo].[Assets] ON 

INSERT [dbo].[Assets] ([Id], [Name], [Stock]) VALUES (1, N'Pen', 11)
INSERT [dbo].[Assets] ([Id], [Name], [Stock]) VALUES (2, N'Whiteboard', 20)
INSERT [dbo].[Assets] ([Id], [Name], [Stock]) VALUES (3, N'Projector', 50)
INSERT [dbo].[Assets] ([Id], [Name], [Stock]) VALUES (4, N'Spidol', 10)
SET IDENTITY_INSERT [dbo].[Assets] OFF
GO
INSERT [dbo].[Borrow_Assets] ([NIK], [Asset_Id], [Quantity], [Borrowing_Time], [Return_Time]) VALUES (N'202228120001', 1, 1, CAST(N'2022-12-28T00:00:00.0000000' AS DateTime2), CAST(N'2000-12-31T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Borrow_Assets] ([NIK], [Asset_Id], [Quantity], [Borrowing_Time], [Return_Time]) VALUES (N'202228120002', 3, 5, CAST(N'2022-12-28T00:00:00.0000000' AS DateTime2), CAST(N'2000-12-31T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Departements] ON 

INSERT [dbo].[Departements] ([Id], [Name], [NIK_HoD]) VALUES (1, N'Resource Application Services', NULL)
INSERT [dbo].[Departements] ([Id], [Name], [NIK_HoD]) VALUES (2, N'Storage & Assets', NULL)
INSERT [dbo].[Departements] ([Id], [Name], [NIK_HoD]) VALUES (3, N'Network & Security', NULL)
INSERT [dbo].[Departements] ([Id], [Name], [NIK_HoD]) VALUES (4, N'IT Support', NULL)
INSERT [dbo].[Departements] ([Id], [Name], [NIK_HoD]) VALUES (5, N'Marketing Communication', NULL)
INSERT [dbo].[Departements] ([Id], [Name], [NIK_HoD]) VALUES (6, N'Public Relationship', NULL)
INSERT [dbo].[Departements] ([Id], [Name], [NIK_HoD]) VALUES (7, N'Human Resource Development', NULL)
SET IDENTITY_INSERT [dbo].[Departements] OFF
GO
INSERT [dbo].[Employees] ([NIK], [FirstName], [LastName], [BirthOfDate], [Gender], [Address], [Phone], [Email], [Role_Id], [Departement_Id]) VALUES (N'202228120001', N'Andre', N'Kautsar', CAST(N'2000-06-09T00:00:00.0000000' AS DateTime2), 0, N'Tangerang', N'081382868570', N'andre.ktsr9@gmail.com', 1, 1)
INSERT [dbo].[Employees] ([NIK], [FirstName], [LastName], [BirthOfDate], [Gender], [Address], [Phone], [Email], [Role_Id], [Departement_Id]) VALUES (N'202228120002', N'Areks', N'Ryuno', CAST(N'2000-07-09T00:00:00.0000000' AS DateTime2), 0, N'Tangerang', N'081382868579', N'areks.ryuno@gmail.com', 2, 2)
INSERT [dbo].[Employees] ([NIK], [FirstName], [LastName], [BirthOfDate], [Gender], [Address], [Phone], [Email], [Role_Id], [Departement_Id]) VALUES (N'202228120003', N'Fatin', N'Hanifah', CAST(N'2000-09-09T00:00:00.0000000' AS DateTime2), 1, N'Bandung', N'081382868571', N'fatin.hanifah@gmail.com', 3, 2)
INSERT [dbo].[Employees] ([NIK], [FirstName], [LastName], [BirthOfDate], [Gender], [Address], [Phone], [Email], [Role_Id], [Departement_Id]) VALUES (N'202228120004', N'Soto', N'Gaming', CAST(N'2003-09-09T00:00:00.0000000' AS DateTime2), 0, N'Yogyakarta', N'081382868573', N'soto.gaming@gmail.com', 1, 3)
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'Employee')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'Admin')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (3, N'Manager')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[Users] ([NIK], [Password]) VALUES (N'202228120001', N'qwerty')
INSERT [dbo].[Users] ([NIK], [Password]) VALUES (N'202228120002', N'12345')
INSERT [dbo].[Users] ([NIK], [Password]) VALUES (N'202228120003', N'qwerty')
INSERT [dbo].[Users] ([NIK], [Password]) VALUES (N'202228120004', N'$2a$11$4ndxCVrSIeEaVG8RhU9Tl.Xjh3wDHB16QbV/jZy.bdCinK8gEEx1e')
GO
/****** Object:  Index [IX_Borrow_Assets_Asset_Id]    Script Date: 28/12/2022 23:25:30 ******/
CREATE NONCLUSTERED INDEX [IX_Borrow_Assets_Asset_Id] ON [dbo].[Borrow_Assets]
(
	[Asset_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Departements_NIK_HoD]    Script Date: 28/12/2022 23:25:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Departements_NIK_HoD] ON [dbo].[Departements]
(
	[NIK_HoD] ASC
)
WHERE ([NIK_HoD] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employees_Departement_Id]    Script Date: 28/12/2022 23:25:30 ******/
CREATE NONCLUSTERED INDEX [IX_Employees_Departement_Id] ON [dbo].[Employees]
(
	[Departement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employees_Role_Id]    Script Date: 28/12/2022 23:25:30 ******/
CREATE NONCLUSTERED INDEX [IX_Employees_Role_Id] ON [dbo].[Employees]
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Borrow_Assets]  WITH CHECK ADD  CONSTRAINT [FK_Borrow_Assets_Assets_Asset_Id] FOREIGN KEY([Asset_Id])
REFERENCES [dbo].[Assets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Borrow_Assets] CHECK CONSTRAINT [FK_Borrow_Assets_Assets_Asset_Id]
GO
ALTER TABLE [dbo].[Borrow_Assets]  WITH CHECK ADD  CONSTRAINT [FK_Borrow_Assets_Users_NIK] FOREIGN KEY([NIK])
REFERENCES [dbo].[Users] ([NIK])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Borrow_Assets] CHECK CONSTRAINT [FK_Borrow_Assets_Users_NIK]
GO
ALTER TABLE [dbo].[Departements]  WITH CHECK ADD  CONSTRAINT [FK_Departements_Employees_NIK_HoD] FOREIGN KEY([NIK_HoD])
REFERENCES [dbo].[Employees] ([NIK])
GO
ALTER TABLE [dbo].[Departements] CHECK CONSTRAINT [FK_Departements_Employees_NIK_HoD]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departements_Departement_Id] FOREIGN KEY([Departement_Id])
REFERENCES [dbo].[Departements] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departements_Departement_Id]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Roles_Role_Id] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Roles_Role_Id]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Employees_NIK] FOREIGN KEY([NIK])
REFERENCES [dbo].[Employees] ([NIK])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Employees_NIK]
GO
USE [master]
GO
ALTER DATABASE [APIAssets] SET  READ_WRITE 
GO
