USE [master]
GO
/****** Object:  Database [SharedTravel]    Script Date: 23.6.2020 г. 11:05:52 ******/
CREATE DATABASE [SharedTravel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SharedTravel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SharedTravel.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SharedTravel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SharedTravel_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SharedTravel] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SharedTravel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SharedTravel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SharedTravel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SharedTravel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SharedTravel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SharedTravel] SET ARITHABORT OFF 
GO
ALTER DATABASE [SharedTravel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SharedTravel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SharedTravel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SharedTravel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SharedTravel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SharedTravel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SharedTravel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SharedTravel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SharedTravel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SharedTravel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SharedTravel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SharedTravel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SharedTravel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SharedTravel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SharedTravel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SharedTravel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SharedTravel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SharedTravel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SharedTravel] SET  MULTI_USER 
GO
ALTER DATABASE [SharedTravel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SharedTravel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SharedTravel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SharedTravel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SharedTravel] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SharedTravel]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BrandCar]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandCar](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [text] NOT NULL,
 CONSTRAINT [PK_BrandCar] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Car]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](50) NULL,
	[Year] [int] NULL,
	[ModelID] [int] NOT NULL,
	[Photo] [varchar](max) NULL,
	[UserID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelCar]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelCar](
	[ModelID] [int] IDENTITY(1,1) NOT NULL,
	[ModelName] [text] NOT NULL,
	[BrandID] [int] NOT NULL,
 CONSTRAINT [PK_ModelCar] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PopulatedPlace]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopulatedPlace](
	[PlaceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [text] NOT NULL,
 CONSTRAINT [PK_PopulatedPlace] PRIMARY KEY CLUSTERED 
(
	[PlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trip]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trip](
	[TripID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[FreeSeats] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[MoreInformation] [text] NULL,
	[Finished] [bit] NULL,
	[PlaceBag] [bit] NULL,
	[Smooking] [bit] NULL,
	[FoodDrink] [bit] NULL,
	[Pet] [bit] NULL,
	[AirConditioning] [bit] NULL,
	[CarID] [int] NOT NULL,
 CONSTRAINT [PK_Trip] PRIMARY KEY CLUSTERED 
(
	[TripID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TripPopulatedPlace]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TripPopulatedPlace](
	[PlaceID] [int] NOT NULL,
	[TripID] [int] NOT NULL,
	[Point] [text] NOT NULL,
 CONSTRAINT [PK_TripPopulatedPlace] PRIMARY KEY CLUSTERED 
(
	[PlaceID] ASC,
	[TripID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTrip]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTrip](
	[UserID] [nvarchar](128) NOT NULL,
	[TripID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_UserTrip] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[TripID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTripRole]    Script Date: 23.6.2020 г. 11:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTripRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserTripRole] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 23.6.2020 г. 11:05:52 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 23.6.2020 г. 11:05:52 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 23.6.2020 г. 11:05:52 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 23.6.2020 г. 11:05:52 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 23.6.2020 г. 11:05:52 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 23.6.2020 г. 11:05:52 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_AspNetUsers]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_ModelCar] FOREIGN KEY([ModelID])
REFERENCES [dbo].[ModelCar] ([ModelID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_ModelCar]
GO
ALTER TABLE [dbo].[ModelCar]  WITH CHECK ADD  CONSTRAINT [FK_ModelCar_BrandCar] FOREIGN KEY([BrandID])
REFERENCES [dbo].[BrandCar] ([BrandID])
GO
ALTER TABLE [dbo].[ModelCar] CHECK CONSTRAINT [FK_ModelCar_BrandCar]
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO
ALTER TABLE [dbo].[Trip] CHECK CONSTRAINT [FK_Trip_Car]
GO
ALTER TABLE [dbo].[TripPopulatedPlace]  WITH CHECK ADD  CONSTRAINT [FK_TripPopulatedPlace_PopulatedPlace] FOREIGN KEY([PlaceID])
REFERENCES [dbo].[PopulatedPlace] ([PlaceID])
GO
ALTER TABLE [dbo].[TripPopulatedPlace] CHECK CONSTRAINT [FK_TripPopulatedPlace_PopulatedPlace]
GO
ALTER TABLE [dbo].[TripPopulatedPlace]  WITH CHECK ADD  CONSTRAINT [FK_TripPopulatedPlace_Trip] FOREIGN KEY([TripID])
REFERENCES [dbo].[Trip] ([TripID])
GO
ALTER TABLE [dbo].[TripPopulatedPlace] CHECK CONSTRAINT [FK_TripPopulatedPlace_Trip]
GO
ALTER TABLE [dbo].[UserTrip]  WITH CHECK ADD  CONSTRAINT [FK_UserTrip_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserTrip] CHECK CONSTRAINT [FK_UserTrip_AspNetUsers]
GO
ALTER TABLE [dbo].[UserTrip]  WITH CHECK ADD  CONSTRAINT [FK_UserTrip_Trip] FOREIGN KEY([TripID])
REFERENCES [dbo].[Trip] ([TripID])
GO
ALTER TABLE [dbo].[UserTrip] CHECK CONSTRAINT [FK_UserTrip_Trip]
GO
ALTER TABLE [dbo].[UserTrip]  WITH CHECK ADD  CONSTRAINT [FK_UserTrip_UserTripRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[UserTripRole] ([RoleID])
GO
ALTER TABLE [dbo].[UserTrip] CHECK CONSTRAINT [FK_UserTrip_UserTripRole]
GO
USE [master]
GO
ALTER DATABASE [SharedTravel] SET  READ_WRITE 
GO
