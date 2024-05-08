USE [master]
GO
/****** Object:  Database [MenjamIdentity]    Script Date: 08.05.2024 13:38:27 ******/
CREATE DATABASE [MenjamIdentity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MenjamIdentity', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MenjamIdentity.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MenjamIdentity_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MenjamIdentity_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MenjamIdentity] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MenjamIdentity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MenjamIdentity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MenjamIdentity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MenjamIdentity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MenjamIdentity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MenjamIdentity] SET ARITHABORT OFF 
GO
ALTER DATABASE [MenjamIdentity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MenjamIdentity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MenjamIdentity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MenjamIdentity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MenjamIdentity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MenjamIdentity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MenjamIdentity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MenjamIdentity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MenjamIdentity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MenjamIdentity] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MenjamIdentity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MenjamIdentity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MenjamIdentity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MenjamIdentity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MenjamIdentity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MenjamIdentity] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MenjamIdentity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MenjamIdentity] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MenjamIdentity] SET  MULTI_USER 
GO
ALTER DATABASE [MenjamIdentity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MenjamIdentity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MenjamIdentity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MenjamIdentity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MenjamIdentity] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MenjamIdentity] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MenjamIdentity] SET QUERY_STORE = OFF
GO
USE [MenjamIdentity]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08.05.2024 13:38:27 ******/
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
/****** Object:  Table [dbo].[Advertisement]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Advertisement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[KnownAs] [nvarchar](max) NULL,
	[Number] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[AdvertisementId] [int] NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferUsers]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferUsers](
	[OfferId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_OfferUsers] PRIMARY KEY CLUSTERED 
(
	[OfferId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 08.05.2024 13:38:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[IsMain] [bit] NOT NULL,
	[PublicId] [nvarchar](max) NULL,
	[AdvertisementId] [int] NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240423110143_InitialCreate', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240426112745_IdentityAdded', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240426130034_Najnoviji', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240507093649_DodataPhotoKlasa', N'7.0.0')
GO
SET IDENTITY_INSERT [dbo].[Advertisement] ON 

INSERT [dbo].[Advertisement] ([Id], [Name], [Description], [CategoryId], [UserId]) VALUES (1, N'Fiat Multipla', N'U Odlicnom Stanju', 1, 6)
INSERT [dbo].[Advertisement] ([Id], [Name], [Description], [CategoryId], [UserId]) VALUES (2, N'Bmw', N'U dobrom stanju', 1, NULL)
INSERT [dbo].[Advertisement] ([Id], [Name], [Description], [CategoryId], [UserId]) VALUES (3, N'Bmw', N'U dobrom stanju', NULL, NULL)
INSERT [dbo].[Advertisement] ([Id], [Name], [Description], [CategoryId], [UserId]) VALUES (4, N'Audi', N'Polu ispravan', 1, NULL)
INSERT [dbo].[Advertisement] ([Id], [Name], [Description], [CategoryId], [UserId]) VALUES (5, N'Volkswagen', N'Slupan', 1, NULL)
INSERT [dbo].[Advertisement] ([Id], [Name], [Description], [CategoryId], [UserId]) VALUES (6, N'Jaguar', N'Ocesan', 1, NULL)
INSERT [dbo].[Advertisement] ([Id], [Name], [Description], [CategoryId], [UserId]) VALUES (7, N'Jaguar', N'Ocesan', 1, NULL)
SET IDENTITY_INSERT [dbo].[Advertisement] OFF
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'Korisnik', N'KORISNIK', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'Posetioc', N'POSETIOC', NULL)
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (5, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (6, 2)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [UserName], [KnownAs], [Number], [Email], [AccessFailedCount], [ConcurrencyStamp], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled]) VALUES (1, N'simeon', N'Simke', N'0616101224', NULL, 0, N'90e43ef8-3bab-4e7e-9f98-6ee478e40600', 0, 1, NULL, NULL, N'SIMEON', N'AQAAAAIAAYagAAAAEEX/9sVRY9yjyZK0GsmY7ScCvrqrCDtNi1ofYTBiu8iR1bsm3+q7GjMieuBrjP1R8g==', NULL, 0, N'4BZ5DTT3UJJXOOFEJLRKLS6WC3QGLYEQ', 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [KnownAs], [Number], [Email], [AccessFailedCount], [ConcurrencyStamp], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled]) VALUES (2, N'milos', N'miki', N'065843694', NULL, 0, N'7ffae1fd-55d7-47e6-90c0-715c6f21c5d9', 0, 1, NULL, NULL, N'MILOS', N'AQAAAAIAAYagAAAAEBzvQwSUVA2deP5Jl9EbV/U55rPeJirO4pq8X7J4LrAJ79NkyGrMTK5AO9P1gRa8hA==', NULL, 0, N'6SIHB5WBM3HZTQCZ62DWIQHREQWIMPKS', 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [KnownAs], [Number], [Email], [AccessFailedCount], [ConcurrencyStamp], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled]) VALUES (3, N'stefan', N'gak', N'06541589', NULL, 0, N'8b588cba-024d-43a9-92f1-8f98538103e4', 0, 1, NULL, NULL, N'STEFAN', N'AQAAAAIAAYagAAAAEAfudD1UINKebiA6HiRPplHB3HuzVxXYF6Z4vF/JyMbGW4O5Uq4LO8WLwmuSFMLaTQ==', NULL, 0, N'VAAHNULE2WTU675WYLZ56HBC4H554VVT', 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [KnownAs], [Number], [Email], [AccessFailedCount], [ConcurrencyStamp], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled]) VALUES (4, N'aleksandar', N'coa', N'062321458', NULL, 0, N'5e2dfebf-e4bd-4501-82ae-da9a1be2b49f', 0, 1, NULL, NULL, N'ALEKSANDAR', N'AQAAAAIAAYagAAAAEEN1bUa5iwFmOyg5q/gIR+HrNrMN9YuzQrRHh9U42D62WqhU038T7Umyie6+dHoWzg==', NULL, 0, N'DM56K7YAV3QJD4L7I37GQTJ5SNNYKE6A', 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [KnownAs], [Number], [Email], [AccessFailedCount], [ConcurrencyStamp], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled]) VALUES (5, N'goran', N'gor123', N'062321458', NULL, 0, N'c7271f11-4d61-41ff-884f-777516a7e3b6', 0, 1, NULL, NULL, N'GORAN', N'AQAAAAIAAYagAAAAEAY6Y4Q/ohTurAXqjqlzgLDBr21TN8JTSTAiSzQHL+panXvl1G7U5ZD/VN1kZaGlAA==', NULL, 0, N'5U6A6MN5XXFPK7MILB7N3B5EHZ4LPUGR', 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [KnownAs], [Number], [Email], [AccessFailedCount], [ConcurrencyStamp], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled]) VALUES (6, N'vasilije', N'vasa', N'0656415', NULL, 0, N'72a7a503-36b1-4287-b8bf-3a92ccd32e5a', 0, 1, NULL, NULL, N'VASILIJE', N'AQAAAAIAAYagAAAAEJIYjaZoWTUjz983UH3TJRtWbiVQl9zkgATeET7zGMVxjuBY7GbL0EzAmXuxKajAnw==', NULL, 0, N'T7SQAYJXY7FYJODGQFAOSVKFVU76CPVL', 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (1, N'Automobili')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Photo] ON 

INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (1, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715078034/da-net7/bjlxus9pay4srrf5ypd2.png', 0, N'da-net7/bjlxus9pay4srrf5ypd2', NULL)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (2, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715078339/da-net7/j6vzbruujlidoxlqpmla.png', 0, N'da-net7/j6vzbruujlidoxlqpmla', 1)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (3, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715078857/da-net7/hn9yagfsuwywq6c1ut3k.png', 0, N'da-net7/hn9yagfsuwywq6c1ut3k', 1)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (4, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715079321/da-net7/lpqofwfj6ropzkflfho7.png', 0, N'da-net7/lpqofwfj6ropzkflfho7', 1)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (5, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715079409/da-net7/zpf8caipi9uvzmtmlmnv.png', 0, N'da-net7/zpf8caipi9uvzmtmlmnv', 1)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (6, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715080570/da-net7/nivru3yfxqmshq9mytor.png', 0, N'da-net7/nivru3yfxqmshq9mytor', 1)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (7, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715081526/da-net7/vgxubrqp8hx3opcfobvl.png', 0, N'da-net7/vgxubrqp8hx3opcfobvl', 1)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (8, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715082557/da-net7/w4bdrhbdig9vhb9kgkni.png', 0, N'da-net7/w4bdrhbdig9vhb9kgkni', 1)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (9, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715163677/da-net7/zj0gsxcdk8sacoi5tbmc.jpg', 0, N'da-net7/zj0gsxcdk8sacoi5tbmc', 4)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (10, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715163909/da-net7/tjzztszmmub7acv4bv6g.jpg', 0, N'da-net7/tjzztszmmub7acv4bv6g', 5)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (11, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715164641/da-net7/wjtqhkbgsbamigk0icck.jpg', 0, N'da-net7/wjtqhkbgsbamigk0icck', 7)
INSERT [dbo].[Photo] ([Id], [Url], [IsMain], [PublicId], [AdvertisementId]) VALUES (12, N'https://res.cloudinary.com/dmvpeb2sn/image/upload/v1715164649/da-net7/dldt1uiyw9hy6owb47iz.png', 0, N'da-net7/dldt1uiyw9hy6owb47iz', 7)
SET IDENTITY_INSERT [dbo].[Photo] OFF
GO
/****** Object:  Index [IX_Advertisement_CategoryId]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [IX_Advertisement_CategoryId] ON [dbo].[Advertisement]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Advertisement_UserId]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [IX_Advertisement_UserId] ON [dbo].[Advertisement]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 08.05.2024 13:38:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 08.05.2024 13:38:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Offers_AdvertisementId]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [IX_Offers_AdvertisementId] ON [dbo].[Offers]
(
	[AdvertisementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OfferUsers_UserId]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [IX_OfferUsers_UserId] ON [dbo].[OfferUsers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Photo_AdvertisementId]    Script Date: 08.05.2024 13:38:28 ******/
CREATE NONCLUSTERED INDEX [IX_Photo_AdvertisementId] ON [dbo].[Photo]
(
	[AdvertisementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [AccessFailedCount]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [EmailConfirmed]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [LockoutEnabled]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [PhoneNumberConfirmed]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [TwoFactorEnabled]
GO
USE [master]
GO
ALTER DATABASE [MenjamIdentity] SET  READ_WRITE 
GO
