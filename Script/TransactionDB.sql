CREATE DATABASE [TransactionDB]
GO
USE [TransactionDB]
GO
/****** Object:  Table [dbo].[Folios]    Script Date: 25/05/2024 10:31:26 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Folios](
	[FolioActual] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 25/05/2024 10:31:26 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Folio] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cliente] [varchar](250) NOT NULL,
	[Total] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentasDetalle]    Script Date: 25/05/2024 10:31:26 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentasDetalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Renglon] [tinyint] NOT NULL,
	[VentaId] [int] NOT NULL,
	[Cantidad] [decimal](10, 2) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
	[PrecioUnitario] [decimal](10, 2) NOT NULL,
	[Importe] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_VentasDetalle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Folios] ([FolioActual]) VALUES (0)
GO
ALTER TABLE [dbo].[Folios] ADD  CONSTRAINT [DF_Folios_FolioActual]  DEFAULT ((0)) FOR [FolioActual]
GO
