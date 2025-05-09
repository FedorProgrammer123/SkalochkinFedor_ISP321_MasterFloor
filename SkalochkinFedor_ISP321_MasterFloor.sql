USE [master]
GO
/****** Object:  Database [SkalochkinFedor_ISP321_MasterFloor]    Script Date: 26.04.2025 16:23:24 ******/
CREATE DATABASE [SkalochkinFedor_ISP321_MasterFloor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SkalochkinFedor_ISP321_MasterFloor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SkalochkinFedor_ISP321_MasterFloor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SkalochkinFedor_ISP321_MasterFloor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SkalochkinFedor_ISP321_MasterFloor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SkalochkinFedor_ISP321_MasterFloor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET ARITHABORT OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET  MULTI_USER 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET QUERY_STORE = ON
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SkalochkinFedor_ISP321_MasterFloor]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 26.04.2025 16:23:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[IDAddress] [int] IDENTITY(1,1) NOT NULL,
	[PostIndexID] [int] NOT NULL,
	[RegionID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[StreetID] [int] NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[IDAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[IDCity] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[IDCity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialTypeImport]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialTypeImport](
	[IDMaterialType] [int] IDENTITY(1,1) NOT NULL,
	[MaterialType] [nvarchar](250) NOT NULL,
	[PercentDeffect] [float] NOT NULL,
 CONSTRAINT [PK_MaterialTypeImport] PRIMARY KEY CLUSTERED 
(
	[IDMaterialType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProductsImport]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProductsImport](
	[PartnerProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PartnerTitleID] [int] NOT NULL,
	[CountProduct] [bigint] NOT NULL,
	[DateSaller] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProductsImport] PRIMARY KEY CLUSTERED 
(
	[PartnerProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnersImport]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnersImport](
	[IDPartnerImport] [int] IDENTITY(1,1) NOT NULL,
	[TypePartnerID] [int] NOT NULL,
	[TitlePartnerID] [int] NOT NULL,
	[Female] [nvarchar](250) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Patronymic] [nvarchar](250) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Phone] [nvarchar](250) NOT NULL,
	[AddressID] [int] NOT NULL,
	[INN] [bigint] NOT NULL,
	[Rate] [int] NOT NULL,
 CONSTRAINT [PK_PartnersImport] PRIMARY KEY CLUSTERED 
(
	[IDPartnerImport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostIndex]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostIndex](
	[IDPostIndex] [int] IDENTITY(1,1) NOT NULL,
	[PostIndex] [int] NOT NULL,
 CONSTRAINT [PK_PostIndex] PRIMARY KEY CLUSTERED 
(
	[IDPostIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IDProduct] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IDProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsImport]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsImport](
	[IDProductImport] [int] IDENTITY(1,1) NOT NULL,
	[TypeProductID] [int] NOT NULL,
	[TitleProductID] [int] NOT NULL,
	[Article] [bigint] NOT NULL,
	[MinPrice] [float] NOT NULL,
 CONSTRAINT [PK_ProductsImport] PRIMARY KEY CLUSTERED 
(
	[IDProductImport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeImport]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeImport](
	[IDTypeProduct] [int] IDENTITY(1,1) NOT NULL,
	[TypeProduct] [nvarchar](250) NOT NULL,
	[CoeffTypeProduct] [float] NOT NULL,
 CONSTRAINT [PK_ProductTypeImport] PRIMARY KEY CLUSTERED 
(
	[IDTypeProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[IDRegion] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[IDRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[IDStreet] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[IDStreet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TitlePartner]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TitlePartner](
	[IDPartnerTitle] [int] IDENTITY(1,1) NOT NULL,
	[PartnerTitle] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_TitlePartner] PRIMARY KEY CLUSTERED 
(
	[IDPartnerTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePartner]    Script Date: 26.04.2025 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePartner](
	[IDTypePartner] [int] IDENTITY(1,1) NOT NULL,
	[TypePartner] [nchar](3) NOT NULL,
 CONSTRAINT [PK_TypePartner] PRIMARY KEY CLUSTERED 
(
	[IDTypePartner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([IDAddress], [PostIndexID], [RegionID], [CityID], [StreetID], [House]) VALUES (1, 5, 3, 5, 1, 15)
INSERT [dbo].[Address] ([IDAddress], [PostIndexID], [RegionID], [CityID], [StreetID], [House]) VALUES (2, 2, 1, 3, 5, 18)
INSERT [dbo].[Address] ([IDAddress], [PostIndexID], [RegionID], [CityID], [StreetID], [House]) VALUES (3, 3, 4, 1, 2, 21)
INSERT [dbo].[Address] ([IDAddress], [PostIndexID], [RegionID], [CityID], [StreetID], [House]) VALUES (4, 1, 5, 2, 4, 51)
INSERT [dbo].[Address] ([IDAddress], [PostIndexID], [RegionID], [CityID], [StreetID], [House]) VALUES (5, 4, 2, 4, 3, 122)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([IDCity], [City]) VALUES (1, N'город Приморск')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (2, N'город Реутов')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (3, N'город Северодвинск')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (4, N'город Старый Оскол')
INSERT [dbo].[City] ([IDCity], [City]) VALUES (5, N'город Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] ON 

INSERT [dbo].[MaterialTypeImport] ([IDMaterialType], [MaterialType], [PercentDeffect]) VALUES (1, N'Тип материала 1', 0.001)
INSERT [dbo].[MaterialTypeImport] ([IDMaterialType], [MaterialType], [PercentDeffect]) VALUES (2, N'Тип материала 2', 0.0095)
INSERT [dbo].[MaterialTypeImport] ([IDMaterialType], [MaterialType], [PercentDeffect]) VALUES (3, N'Тип материала 3', 0.0028)
INSERT [dbo].[MaterialTypeImport] ([IDMaterialType], [MaterialType], [PercentDeffect]) VALUES (4, N'Тип материала 4', 0.0055)
INSERT [dbo].[MaterialTypeImport] ([IDMaterialType], [MaterialType], [PercentDeffect]) VALUES (5, N'Тип материала 5', 0.0034)
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProductsImport] ON 

INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProductsImport] ([PartnerProductID], [ProductID], [PartnerTitleID], [CountProduct], [DateSaller]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProductsImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnersImport] ON 

INSERT [dbo].[PartnersImport] ([IDPartnerImport], [TypePartnerID], [TitlePartnerID], [Female], [Name], [Patronymic], [Email], [Phone], [AddressID], [INN], [Rate]) VALUES (1, 1, 1, N'Иванова', N'Александра', N'Ивановна', N'aleksandraivanova@ml.ru', N'+7(493)-123-45-67', 5, 2222455179, 7)
INSERT [dbo].[PartnersImport] ([IDPartnerImport], [TypePartnerID], [TitlePartnerID], [Female], [Name], [Patronymic], [Email], [Phone], [AddressID], [INN], [Rate]) VALUES (2, 3, 3, N'Петров', N'Василий', N'Петрович', N'vppetrov@vl.ru', N'+7(987)-123-56-78', 2, 3333888520, 7)
INSERT [dbo].[PartnersImport] ([IDPartnerImport], [TypePartnerID], [TitlePartnerID], [Female], [Name], [Patronymic], [Email], [Phone], [AddressID], [INN], [Rate]) VALUES (3, 4, 5, N'Соловьев', N'Андрей', N'Николаевич', N'ansolovev@st.ru', N'+7(812)-223-32-00', 3, 4440391035, 7)
INSERT [dbo].[PartnersImport] ([IDPartnerImport], [TypePartnerID], [TitlePartnerID], [Female], [Name], [Patronymic], [Email], [Phone], [AddressID], [INN], [Rate]) VALUES (4, 2, 4, N'Воробьева', N'Екатерина', N'Валерьевна', N'ekaterina.vorobeva@ml.ru', N'+7(444)-222-33-11', 1, 1111520857, 5)
INSERT [dbo].[PartnersImport] ([IDPartnerImport], [TypePartnerID], [TitlePartnerID], [Female], [Name], [Patronymic], [Email], [Phone], [AddressID], [INN], [Rate]) VALUES (5, 1, 2, N'Степанов', N'Степан', N'Сергеевич', N'stepanov@stepan.ru', N'+7(912)-888-33-33', 4, 5552431140, 10)
SET IDENTITY_INSERT [dbo].[PartnersImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PostIndex] ON 

INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (1, 143960)
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (2, 164500)
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (3, 188910)
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (4, 309500)
INSERT [dbo].[PostIndex] ([IDPostIndex], [PostIndex]) VALUES (5, 652050)
SET IDENTITY_INSERT [dbo].[PostIndex] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IDProduct], [ProductName]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[Product] ([IDProduct], [ProductName]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[Product] ([IDProduct], [ProductName]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[Product] ([IDProduct], [ProductName]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[Product] ([IDProduct], [ProductName]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsImport] ON 

INSERT [dbo].[ProductsImport] ([IDProductImport], [TypeProductID], [TitleProductID], [Article], [MinPrice]) VALUES (1, 3, 4, 8758385, 4456.9)
INSERT [dbo].[ProductsImport] ([IDProductImport], [TypeProductID], [TitleProductID], [Article], [MinPrice]) VALUES (2, 3, 1, 8858958, 7330.99)
INSERT [dbo].[ProductsImport] ([IDProductImport], [TypeProductID], [TitleProductID], [Article], [MinPrice]) VALUES (3, 1, 2, 7750282, 1799.33)
INSERT [dbo].[ProductsImport] ([IDProductImport], [TypeProductID], [TitleProductID], [Article], [MinPrice]) VALUES (4, 1, 3, 7028748, 3890.41)
INSERT [dbo].[ProductsImport] ([IDProductImport], [TypeProductID], [TitleProductID], [Article], [MinPrice]) VALUES (5, 4, 5, 5012543, 5450.59)
SET IDENTITY_INSERT [dbo].[ProductsImport] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypeImport] ON 

INSERT [dbo].[ProductTypeImport] ([IDTypeProduct], [TypeProduct], [CoeffTypeProduct]) VALUES (1, N'Ламинат', 2.35)
INSERT [dbo].[ProductTypeImport] ([IDTypeProduct], [TypeProduct], [CoeffTypeProduct]) VALUES (2, N'Массивная доска', 5.15)
INSERT [dbo].[ProductTypeImport] ([IDTypeProduct], [TypeProduct], [CoeffTypeProduct]) VALUES (3, N'Паркетная доска', 4.34)
INSERT [dbo].[ProductTypeImport] ([IDTypeProduct], [TypeProduct], [CoeffTypeProduct]) VALUES (4, N'Пробковое покрытие', 1.5)
SET IDENTITY_INSERT [dbo].[ProductTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (1, N'Архангельская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (2, N'Белгородская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (3, N'Кемеровская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (4, N'Ленинградская область')
INSERT [dbo].[Region] ([IDRegion], [Region]) VALUES (5, N'Московская область')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (1, N'ул. Лесная')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (2, N'ул. Парковая')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (3, N'ул. Рабочая')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (4, N'ул. Свободы')
INSERT [dbo].[Street] ([IDStreet], [Street]) VALUES (5, N'ул. Строителей')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[TitlePartner] ON 

INSERT [dbo].[TitlePartner] ([IDPartnerTitle], [PartnerTitle]) VALUES (1, N'База Строитель')
INSERT [dbo].[TitlePartner] ([IDPartnerTitle], [PartnerTitle]) VALUES (2, N'МонтажПро')
INSERT [dbo].[TitlePartner] ([IDPartnerTitle], [PartnerTitle]) VALUES (3, N'Паркет 29')
INSERT [dbo].[TitlePartner] ([IDPartnerTitle], [PartnerTitle]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[TitlePartner] ([IDPartnerTitle], [PartnerTitle]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[TitlePartner] OFF
GO
SET IDENTITY_INSERT [dbo].[TypePartner] ON 

INSERT [dbo].[TypePartner] ([IDTypePartner], [TypePartner]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypePartner] ([IDTypePartner], [TypePartner]) VALUES (2, N'ОАО')
INSERT [dbo].[TypePartner] ([IDTypePartner], [TypePartner]) VALUES (3, N'ООО')
INSERT [dbo].[TypePartner] ([IDTypePartner], [TypePartner]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[TypePartner] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([IDCity])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_City]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_PostIndex] FOREIGN KEY([PostIndexID])
REFERENCES [dbo].[PostIndex] ([IDPostIndex])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_PostIndex]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([IDRegion])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Region]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Street] FOREIGN KEY([StreetID])
REFERENCES [dbo].[Street] ([IDStreet])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Street]
GO
ALTER TABLE [dbo].[PartnerProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductsImport_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([IDProduct])
GO
ALTER TABLE [dbo].[PartnerProductsImport] CHECK CONSTRAINT [FK_PartnerProductsImport_Product]
GO
ALTER TABLE [dbo].[PartnerProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductsImport_TitlePartner] FOREIGN KEY([PartnerTitleID])
REFERENCES [dbo].[TitlePartner] ([IDPartnerTitle])
GO
ALTER TABLE [dbo].[PartnerProductsImport] CHECK CONSTRAINT [FK_PartnerProductsImport_TitlePartner]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_PostIndex] FOREIGN KEY([AddressID])
REFERENCES [dbo].[PostIndex] ([IDPostIndex])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_PostIndex]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_TitlePartner] FOREIGN KEY([TitlePartnerID])
REFERENCES [dbo].[TitlePartner] ([IDPartnerTitle])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_TitlePartner]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_TypePartner] FOREIGN KEY([TypePartnerID])
REFERENCES [dbo].[TypePartner] ([IDTypePartner])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_TypePartner]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductsImport_Product] FOREIGN KEY([TitleProductID])
REFERENCES [dbo].[Product] ([IDProduct])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_ProductsImport_Product]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductsImport_ProductTypeImport] FOREIGN KEY([TypeProductID])
REFERENCES [dbo].[ProductTypeImport] ([IDTypeProduct])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_ProductsImport_ProductTypeImport]
GO
USE [master]
GO
ALTER DATABASE [SkalochkinFedor_ISP321_MasterFloor] SET  READ_WRITE 
GO
