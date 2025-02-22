USE [master]
GO
/****** Object:  Database [PV_Examen01]    Script Date: 23/04/2024 ******/
CREATE DATABASE [PV_Examen01]
 CONTAINMENT = NONE
GO
ALTER DATABASE [PV_Examen01] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PV_Examen01].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PV_Examen01] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PV_Examen01] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PV_Examen01] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PV_Examen01] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PV_Examen01] SET ARITHABORT OFF 
GO
ALTER DATABASE [PV_Examen01] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PV_Examen01] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PV_Examen01] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PV_Examen01] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PV_Examen01] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PV_Examen01] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PV_Examen01] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PV_Examen01] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PV_Examen01] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PV_Examen01] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PV_Examen01] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PV_Examen01] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PV_Examen01] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PV_Examen01] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PV_Examen01] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PV_Examen01] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PV_Examen01] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PV_Examen01] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PV_Examen01] SET  MULTI_USER 
GO
ALTER DATABASE [PV_Examen01] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PV_Examen01] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PV_Examen01] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PV_Examen01] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PV_Examen01] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PV_Examen01] SET QUERY_STORE = OFF
GO
USE [PV_Examen01]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 23/04/2024 17:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[cantidad] [int] NOT NULL,
	[precioUnitario] [numeric](9, 2) NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precioUnitario], [fechaRegistro], [fechaModificacion]) VALUES (1, N'Refresco gaseoso 2L', 25, CAST(1530.00 AS Numeric(9, 2)), CAST(N'2021-10-18T21:03:00.000' AS DateTime), CAST(N'2021-10-18T21:10:00.000' AS DateTime))
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precioUnitario], [fechaRegistro], [fechaModificacion]) VALUES (2, N'Jugo de naranja 1L', 0, CAST(1469.54 AS Numeric(9, 2)), CAST(N'2021-10-18T21:04:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precioUnitario], [fechaRegistro], [fechaModificacion]) VALUES (3, N'Alcohol en gel para manos 250ml', 0, CAST(957.36 AS Numeric(9, 2)), CAST(N'2021-10-18T21:05:00.000' AS DateTime), CAST(N'2021-10-18T21:30:00.000' AS DateTime))
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precioUnitario], [fechaRegistro], [fechaModificacion]) VALUES (4, N'Arroz blanco 99% grano entero 2KG', 39, CAST(2310.47 AS Numeric(9, 2)), CAST(N'2021-10-18T21:08:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precioUnitario], [fechaRegistro], [fechaModificacion]) VALUES (5, N'Aderezo para ensalada 1L', 22, CAST(3654.09 AS Numeric(9, 2)), CAST(N'2021-10-18T21:12:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO

USE [master]
GO
ALTER DATABASE [PV_Examen01] SET  READ_WRITE 
GO
