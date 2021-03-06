USE [master]
GO
/****** Object:  Database [TeatroProgramacion]    Script Date: 27/12/2021 00:04:08 ******/
CREATE DATABASE [TeatroProgramacion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TeatroProgramacion', FILENAME = N'C:\BD\TeatroProgramacion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TeatroProgramacion_log', FILENAME = N'C:\BD\TeatroProgramacion_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TeatroProgramacion] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TeatroProgramacion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TeatroProgramacion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET ARITHABORT OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TeatroProgramacion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TeatroProgramacion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TeatroProgramacion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TeatroProgramacion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET RECOVERY FULL 
GO
ALTER DATABASE [TeatroProgramacion] SET  MULTI_USER 
GO
ALTER DATABASE [TeatroProgramacion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TeatroProgramacion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TeatroProgramacion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TeatroProgramacion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TeatroProgramacion] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TeatroProgramacion', N'ON'
GO
ALTER DATABASE [TeatroProgramacion] SET QUERY_STORE = OFF
GO
USE [TeatroProgramacion]
GO
/****** Object:  Table [dbo].[Clasificaciones]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clasificaciones](
	[ClasificacionId] [int] IDENTITY(1,1) NOT NULL,
	[Clasificacion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Clasificaciones] PRIMARY KEY CLUSTERED 
(
	[ClasificacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distribuciones]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distribuciones](
	[DistribucionId] [int] IDENTITY(1,1) NOT NULL,
	[Distribucion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Distribuciones] PRIMARY KEY CLUSTERED 
(
	[DistribucionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistribucionesLocalidades]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistribucionesLocalidades](
	[DistribucionId] [int] NOT NULL,
	[LocalidadId] [int] NOT NULL,
	[Precio] [numeric](18, 2) NOT NULL,
	[DistribucionLocalidadId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DistribucionesLocalidades] PRIMARY KEY CLUSTERED 
(
	[DistribucionLocalidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[TipoDocumentoId] [int] NOT NULL,
	[NroDocumento] [nvarchar](10) NOT NULL,
	[TelefonoFijo] [nvarchar](20) NULL,
	[TelefonoMovil] [nvarchar](20) NULL,
	[Mail] [nvarchar](150) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventos](
	[EventoId] [int] IDENTITY(1,1) NOT NULL,
	[TipoEventoId] [int] NOT NULL,
	[ClasificacionId] [int] NOT NULL,
	[Evento] [nvarchar](120) NOT NULL,
	[FechaEvento] [datetime] NOT NULL,
	[Descripcion] [nvarchar](250) NOT NULL,
	[Suspendido] [bit] NOT NULL,
	[DistribucionId] [int] NOT NULL,
 CONSTRAINT [PK_Eventos] PRIMARY KEY CLUSTERED 
(
	[EventoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormasPagos]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormasPagos](
	[FormaPagoId] [int] IDENTITY(1,1) NOT NULL,
	[FormaPago] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FormasPagos] PRIMARY KEY CLUSTERED 
(
	[FormaPagoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormasVentas]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormasVentas](
	[FormaVentaId] [int] IDENTITY(1,1) NOT NULL,
	[FormaVenta] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FormasVentas] PRIMARY KEY CLUSTERED 
(
	[FormaVentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[HorarioId] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Hora] [datetime] NOT NULL,
	[EventoId] [int] NOT NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[HorarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[LocalidadId] [int] IDENTITY(1,1) NOT NULL,
	[PlantaId] [int] NOT NULL,
	[Numero] [int] NOT NULL,
	[UbicacionId] [int] NULL,
	[Fila] [int] NULL,
 CONSTRAINT [PK_Localidades] PRIMARY KEY CLUSTERED 
(
	[LocalidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plantas]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plantas](
	[PlantaId] [int] IDENTITY(1,1) NOT NULL,
	[Planta] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Plantas] PRIMARY KEY CLUSTERED 
(
	[PlantaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[HorarioId] [int] NOT NULL,
	[Importe] [numeric](18, 2) NOT NULL,
	[LocalidadId] [int] NOT NULL,
	[FechaVenta] [datetime] NOT NULL,
	[FormaPagoId] [int] NOT NULL,
	[FormaVentaId] [int] NOT NULL,
	[Anulada] [bit] NOT NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDocumentos]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDocumentos](
	[TipoDocumentoId] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocumento] [nvarchar](50) NULL,
 CONSTRAINT [PK_TiposDocumentos] PRIMARY KEY CLUSTERED 
(
	[TipoDocumentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEventos]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEventos](
	[TipoEventoId] [int] IDENTITY(1,1) NOT NULL,
	[TipoEvento] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TiposEventos] PRIMARY KEY CLUSTERED 
(
	[TipoEventoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicaciones]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicaciones](
	[UbicacionId] [int] IDENTITY(1,1) NOT NULL,
	[Ubicacion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ubicaciones] PRIMARY KEY CLUSTERED 
(
	[UbicacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[VentaId] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Total] [numeric](18, 2) NOT NULL,
	[Estado] [bit] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[VentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentasTicket]    Script Date: 27/12/2021 00:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentasTicket](
	[TicketId] [int] NOT NULL,
	[VentaId] [int] NOT NULL,
	[VentaTicketId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_VentasTicket_1] PRIMARY KEY CLUSTERED 
(
	[VentaTicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clasificaciones] ON 

INSERT [dbo].[Clasificaciones] ([ClasificacionId], [Clasificacion]) VALUES (1, N'Apto para todo público')
INSERT [dbo].[Clasificaciones] ([ClasificacionId], [Clasificacion]) VALUES (2, N'Prohibida para menores de 18 años')
SET IDENTITY_INSERT [dbo].[Clasificaciones] OFF
SET IDENTITY_INSERT [dbo].[Distribuciones] ON 

INSERT [dbo].[Distribuciones] ([DistribucionId], [Distribucion]) VALUES (5099, N'Gratis')
INSERT [dbo].[Distribuciones] ([DistribucionId], [Distribucion]) VALUES (5100, N'Cine')
SET IDENTITY_INSERT [dbo].[Distribuciones] OFF
SET IDENTITY_INSERT [dbo].[DistribucionesLocalidades] ON 

INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21788, CAST(0.00 AS Numeric(18, 2)), 36549)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21789, CAST(0.00 AS Numeric(18, 2)), 36550)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21790, CAST(0.00 AS Numeric(18, 2)), 36551)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21791, CAST(0.00 AS Numeric(18, 2)), 36552)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21792, CAST(0.00 AS Numeric(18, 2)), 36553)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21793, CAST(0.00 AS Numeric(18, 2)), 36554)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21794, CAST(0.00 AS Numeric(18, 2)), 36555)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21795, CAST(0.00 AS Numeric(18, 2)), 36556)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21796, CAST(0.00 AS Numeric(18, 2)), 36557)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21797, CAST(0.00 AS Numeric(18, 2)), 36558)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21798, CAST(0.00 AS Numeric(18, 2)), 36559)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21799, CAST(0.00 AS Numeric(18, 2)), 36560)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21800, CAST(0.00 AS Numeric(18, 2)), 36561)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21801, CAST(0.00 AS Numeric(18, 2)), 36562)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21802, CAST(0.00 AS Numeric(18, 2)), 36563)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21803, CAST(0.00 AS Numeric(18, 2)), 36564)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21804, CAST(0.00 AS Numeric(18, 2)), 36565)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21805, CAST(0.00 AS Numeric(18, 2)), 36566)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21806, CAST(0.00 AS Numeric(18, 2)), 36567)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21807, CAST(0.00 AS Numeric(18, 2)), 36568)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21808, CAST(0.00 AS Numeric(18, 2)), 36569)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21809, CAST(0.00 AS Numeric(18, 2)), 36570)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21810, CAST(0.00 AS Numeric(18, 2)), 36571)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21811, CAST(0.00 AS Numeric(18, 2)), 36572)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21812, CAST(0.00 AS Numeric(18, 2)), 36573)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21813, CAST(0.00 AS Numeric(18, 2)), 36574)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21814, CAST(0.00 AS Numeric(18, 2)), 36575)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21815, CAST(0.00 AS Numeric(18, 2)), 36576)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21816, CAST(0.00 AS Numeric(18, 2)), 36577)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21817, CAST(0.00 AS Numeric(18, 2)), 36578)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21818, CAST(0.00 AS Numeric(18, 2)), 36579)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21819, CAST(0.00 AS Numeric(18, 2)), 36580)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21820, CAST(0.00 AS Numeric(18, 2)), 36581)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21821, CAST(0.00 AS Numeric(18, 2)), 36582)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21822, CAST(0.00 AS Numeric(18, 2)), 36583)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21823, CAST(0.00 AS Numeric(18, 2)), 36584)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21824, CAST(0.00 AS Numeric(18, 2)), 36585)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21825, CAST(0.00 AS Numeric(18, 2)), 36586)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21826, CAST(0.00 AS Numeric(18, 2)), 36587)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21827, CAST(0.00 AS Numeric(18, 2)), 36588)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21828, CAST(0.00 AS Numeric(18, 2)), 36589)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21829, CAST(0.00 AS Numeric(18, 2)), 36590)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21830, CAST(0.00 AS Numeric(18, 2)), 36591)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21831, CAST(0.00 AS Numeric(18, 2)), 36592)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21832, CAST(0.00 AS Numeric(18, 2)), 36593)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21833, CAST(0.00 AS Numeric(18, 2)), 36594)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21834, CAST(0.00 AS Numeric(18, 2)), 36595)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21835, CAST(0.00 AS Numeric(18, 2)), 36596)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21836, CAST(0.00 AS Numeric(18, 2)), 36597)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21837, CAST(0.00 AS Numeric(18, 2)), 36598)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21838, CAST(0.00 AS Numeric(18, 2)), 36599)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21839, CAST(0.00 AS Numeric(18, 2)), 36600)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21840, CAST(0.00 AS Numeric(18, 2)), 36601)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21841, CAST(0.00 AS Numeric(18, 2)), 36602)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21842, CAST(0.00 AS Numeric(18, 2)), 36603)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21843, CAST(0.00 AS Numeric(18, 2)), 36604)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21844, CAST(0.00 AS Numeric(18, 2)), 36605)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21845, CAST(0.00 AS Numeric(18, 2)), 36606)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21846, CAST(0.00 AS Numeric(18, 2)), 36607)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21847, CAST(0.00 AS Numeric(18, 2)), 36608)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21848, CAST(0.00 AS Numeric(18, 2)), 36609)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21849, CAST(0.00 AS Numeric(18, 2)), 36610)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21850, CAST(0.00 AS Numeric(18, 2)), 36611)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21851, CAST(0.00 AS Numeric(18, 2)), 36612)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21852, CAST(0.00 AS Numeric(18, 2)), 36613)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21853, CAST(0.00 AS Numeric(18, 2)), 36614)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21854, CAST(0.00 AS Numeric(18, 2)), 36615)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21855, CAST(0.00 AS Numeric(18, 2)), 36616)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21856, CAST(0.00 AS Numeric(18, 2)), 36617)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21857, CAST(0.00 AS Numeric(18, 2)), 36618)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21858, CAST(0.00 AS Numeric(18, 2)), 36619)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21859, CAST(0.00 AS Numeric(18, 2)), 36620)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21860, CAST(0.00 AS Numeric(18, 2)), 36621)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21861, CAST(0.00 AS Numeric(18, 2)), 36622)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21862, CAST(0.00 AS Numeric(18, 2)), 36623)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21863, CAST(0.00 AS Numeric(18, 2)), 36624)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21864, CAST(0.00 AS Numeric(18, 2)), 36625)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21865, CAST(0.00 AS Numeric(18, 2)), 36626)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21866, CAST(0.00 AS Numeric(18, 2)), 36627)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21867, CAST(0.00 AS Numeric(18, 2)), 36628)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21868, CAST(0.00 AS Numeric(18, 2)), 36629)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21869, CAST(0.00 AS Numeric(18, 2)), 36630)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21870, CAST(0.00 AS Numeric(18, 2)), 36631)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21871, CAST(0.00 AS Numeric(18, 2)), 36632)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21872, CAST(0.00 AS Numeric(18, 2)), 36633)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21873, CAST(0.00 AS Numeric(18, 2)), 36634)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21874, CAST(0.00 AS Numeric(18, 2)), 36635)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21875, CAST(0.00 AS Numeric(18, 2)), 36636)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21876, CAST(0.00 AS Numeric(18, 2)), 36637)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21877, CAST(0.00 AS Numeric(18, 2)), 36638)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21878, CAST(0.00 AS Numeric(18, 2)), 36639)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21879, CAST(0.00 AS Numeric(18, 2)), 36640)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21880, CAST(0.00 AS Numeric(18, 2)), 36641)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21881, CAST(0.00 AS Numeric(18, 2)), 36642)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21882, CAST(0.00 AS Numeric(18, 2)), 36643)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21883, CAST(0.00 AS Numeric(18, 2)), 36644)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21884, CAST(0.00 AS Numeric(18, 2)), 36645)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21885, CAST(0.00 AS Numeric(18, 2)), 36646)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21886, CAST(0.00 AS Numeric(18, 2)), 36647)
GO
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21887, CAST(0.00 AS Numeric(18, 2)), 36648)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21888, CAST(0.00 AS Numeric(18, 2)), 36649)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21889, CAST(0.00 AS Numeric(18, 2)), 36650)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21890, CAST(0.00 AS Numeric(18, 2)), 36651)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21891, CAST(0.00 AS Numeric(18, 2)), 36652)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21892, CAST(0.00 AS Numeric(18, 2)), 36653)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21893, CAST(0.00 AS Numeric(18, 2)), 36654)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21894, CAST(0.00 AS Numeric(18, 2)), 36655)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21895, CAST(0.00 AS Numeric(18, 2)), 36656)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21896, CAST(0.00 AS Numeric(18, 2)), 36657)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21897, CAST(0.00 AS Numeric(18, 2)), 36658)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21898, CAST(0.00 AS Numeric(18, 2)), 36659)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21899, CAST(0.00 AS Numeric(18, 2)), 36660)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21900, CAST(0.00 AS Numeric(18, 2)), 36661)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21901, CAST(0.00 AS Numeric(18, 2)), 36662)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21902, CAST(0.00 AS Numeric(18, 2)), 36663)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21903, CAST(0.00 AS Numeric(18, 2)), 36664)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21904, CAST(0.00 AS Numeric(18, 2)), 36665)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21919, CAST(0.00 AS Numeric(18, 2)), 36666)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21905, CAST(0.00 AS Numeric(18, 2)), 36667)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21906, CAST(0.00 AS Numeric(18, 2)), 36668)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21920, CAST(0.00 AS Numeric(18, 2)), 36669)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21921, CAST(0.00 AS Numeric(18, 2)), 36670)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21907, CAST(0.00 AS Numeric(18, 2)), 36671)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21908, CAST(0.00 AS Numeric(18, 2)), 36672)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21922, CAST(0.00 AS Numeric(18, 2)), 36673)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21923, CAST(0.00 AS Numeric(18, 2)), 36674)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21909, CAST(0.00 AS Numeric(18, 2)), 36675)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21910, CAST(0.00 AS Numeric(18, 2)), 36676)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21924, CAST(0.00 AS Numeric(18, 2)), 36677)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21925, CAST(0.00 AS Numeric(18, 2)), 36678)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21911, CAST(0.00 AS Numeric(18, 2)), 36679)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21912, CAST(0.00 AS Numeric(18, 2)), 36680)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21926, CAST(0.00 AS Numeric(18, 2)), 36681)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21927, CAST(0.00 AS Numeric(18, 2)), 36682)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21913, CAST(0.00 AS Numeric(18, 2)), 36683)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21914, CAST(0.00 AS Numeric(18, 2)), 36684)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21928, CAST(0.00 AS Numeric(18, 2)), 36685)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21929, CAST(0.00 AS Numeric(18, 2)), 36686)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21915, CAST(0.00 AS Numeric(18, 2)), 36687)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21916, CAST(0.00 AS Numeric(18, 2)), 36688)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21930, CAST(0.00 AS Numeric(18, 2)), 36689)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21931, CAST(0.00 AS Numeric(18, 2)), 36690)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21917, CAST(0.00 AS Numeric(18, 2)), 36691)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21918, CAST(0.00 AS Numeric(18, 2)), 36692)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21932, CAST(0.00 AS Numeric(18, 2)), 36693)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21933, CAST(0.00 AS Numeric(18, 2)), 36694)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21934, CAST(0.00 AS Numeric(18, 2)), 36695)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21935, CAST(0.00 AS Numeric(18, 2)), 36696)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21936, CAST(0.00 AS Numeric(18, 2)), 36697)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21937, CAST(0.00 AS Numeric(18, 2)), 36698)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21938, CAST(0.00 AS Numeric(18, 2)), 36699)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21788, CAST(0.00 AS Numeric(18, 2)), 36700)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21789, CAST(0.00 AS Numeric(18, 2)), 36701)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21790, CAST(0.00 AS Numeric(18, 2)), 36702)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21791, CAST(0.00 AS Numeric(18, 2)), 36703)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21792, CAST(0.00 AS Numeric(18, 2)), 36704)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21793, CAST(0.00 AS Numeric(18, 2)), 36705)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21794, CAST(0.00 AS Numeric(18, 2)), 36706)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21795, CAST(0.00 AS Numeric(18, 2)), 36707)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21796, CAST(0.00 AS Numeric(18, 2)), 36708)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21797, CAST(0.00 AS Numeric(18, 2)), 36709)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21798, CAST(0.00 AS Numeric(18, 2)), 36710)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21799, CAST(0.00 AS Numeric(18, 2)), 36711)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21800, CAST(0.00 AS Numeric(18, 2)), 36712)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21801, CAST(0.00 AS Numeric(18, 2)), 36713)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21802, CAST(0.00 AS Numeric(18, 2)), 36714)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21803, CAST(0.00 AS Numeric(18, 2)), 36715)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21804, CAST(0.00 AS Numeric(18, 2)), 36716)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21805, CAST(0.00 AS Numeric(18, 2)), 36717)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21806, CAST(0.00 AS Numeric(18, 2)), 36718)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21807, CAST(0.00 AS Numeric(18, 2)), 36719)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21808, CAST(0.00 AS Numeric(18, 2)), 36720)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21809, CAST(0.00 AS Numeric(18, 2)), 36721)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21810, CAST(0.00 AS Numeric(18, 2)), 36722)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21811, CAST(0.00 AS Numeric(18, 2)), 36723)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21812, CAST(0.00 AS Numeric(18, 2)), 36724)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21813, CAST(0.00 AS Numeric(18, 2)), 36725)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21814, CAST(0.00 AS Numeric(18, 2)), 36726)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21815, CAST(0.00 AS Numeric(18, 2)), 36727)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21816, CAST(0.00 AS Numeric(18, 2)), 36728)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21817, CAST(0.00 AS Numeric(18, 2)), 36729)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21818, CAST(0.00 AS Numeric(18, 2)), 36730)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21819, CAST(0.00 AS Numeric(18, 2)), 36731)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21820, CAST(0.00 AS Numeric(18, 2)), 36732)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21821, CAST(0.00 AS Numeric(18, 2)), 36733)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21822, CAST(0.00 AS Numeric(18, 2)), 36734)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21823, CAST(0.00 AS Numeric(18, 2)), 36735)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21824, CAST(0.00 AS Numeric(18, 2)), 36736)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21825, CAST(0.00 AS Numeric(18, 2)), 36737)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21826, CAST(0.00 AS Numeric(18, 2)), 36738)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21827, CAST(0.00 AS Numeric(18, 2)), 36739)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21828, CAST(0.00 AS Numeric(18, 2)), 36740)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21829, CAST(0.00 AS Numeric(18, 2)), 36741)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21830, CAST(0.00 AS Numeric(18, 2)), 36742)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21831, CAST(0.00 AS Numeric(18, 2)), 36743)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21832, CAST(0.00 AS Numeric(18, 2)), 36744)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21833, CAST(0.00 AS Numeric(18, 2)), 36745)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21834, CAST(0.00 AS Numeric(18, 2)), 36746)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21835, CAST(0.00 AS Numeric(18, 2)), 36747)
GO
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21836, CAST(0.00 AS Numeric(18, 2)), 36748)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21837, CAST(0.00 AS Numeric(18, 2)), 36749)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21838, CAST(0.00 AS Numeric(18, 2)), 36750)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21839, CAST(0.00 AS Numeric(18, 2)), 36751)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21840, CAST(0.00 AS Numeric(18, 2)), 36752)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21841, CAST(0.00 AS Numeric(18, 2)), 36753)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21842, CAST(0.00 AS Numeric(18, 2)), 36754)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21843, CAST(0.00 AS Numeric(18, 2)), 36755)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21844, CAST(0.00 AS Numeric(18, 2)), 36756)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21845, CAST(0.00 AS Numeric(18, 2)), 36757)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21846, CAST(0.00 AS Numeric(18, 2)), 36758)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21847, CAST(0.00 AS Numeric(18, 2)), 36759)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21848, CAST(0.00 AS Numeric(18, 2)), 36760)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21849, CAST(0.00 AS Numeric(18, 2)), 36761)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21850, CAST(0.00 AS Numeric(18, 2)), 36762)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21851, CAST(0.00 AS Numeric(18, 2)), 36763)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21852, CAST(0.00 AS Numeric(18, 2)), 36764)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21853, CAST(0.00 AS Numeric(18, 2)), 36765)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21854, CAST(0.00 AS Numeric(18, 2)), 36766)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21855, CAST(0.00 AS Numeric(18, 2)), 36767)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21856, CAST(0.00 AS Numeric(18, 2)), 36768)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21857, CAST(0.00 AS Numeric(18, 2)), 36769)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21858, CAST(0.00 AS Numeric(18, 2)), 36770)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21859, CAST(0.00 AS Numeric(18, 2)), 36771)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21860, CAST(0.00 AS Numeric(18, 2)), 36772)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21861, CAST(0.00 AS Numeric(18, 2)), 36773)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21862, CAST(0.00 AS Numeric(18, 2)), 36774)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21863, CAST(0.00 AS Numeric(18, 2)), 36775)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21864, CAST(0.00 AS Numeric(18, 2)), 36776)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21865, CAST(0.00 AS Numeric(18, 2)), 36777)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21866, CAST(0.00 AS Numeric(18, 2)), 36778)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21867, CAST(0.00 AS Numeric(18, 2)), 36779)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21868, CAST(0.00 AS Numeric(18, 2)), 36780)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21869, CAST(0.00 AS Numeric(18, 2)), 36781)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21870, CAST(0.00 AS Numeric(18, 2)), 36782)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21871, CAST(0.00 AS Numeric(18, 2)), 36783)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21872, CAST(0.00 AS Numeric(18, 2)), 36784)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21873, CAST(0.00 AS Numeric(18, 2)), 36785)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21874, CAST(0.00 AS Numeric(18, 2)), 36786)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21875, CAST(0.00 AS Numeric(18, 2)), 36787)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21876, CAST(0.00 AS Numeric(18, 2)), 36788)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21877, CAST(0.00 AS Numeric(18, 2)), 36789)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21878, CAST(0.00 AS Numeric(18, 2)), 36790)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21879, CAST(0.00 AS Numeric(18, 2)), 36791)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21880, CAST(0.00 AS Numeric(18, 2)), 36792)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21881, CAST(0.00 AS Numeric(18, 2)), 36793)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21882, CAST(0.00 AS Numeric(18, 2)), 36794)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21883, CAST(0.00 AS Numeric(18, 2)), 36795)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21884, CAST(0.00 AS Numeric(18, 2)), 36796)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21885, CAST(0.00 AS Numeric(18, 2)), 36797)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21886, CAST(0.00 AS Numeric(18, 2)), 36798)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21887, CAST(0.00 AS Numeric(18, 2)), 36799)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21888, CAST(0.00 AS Numeric(18, 2)), 36800)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21889, CAST(0.00 AS Numeric(18, 2)), 36801)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21890, CAST(0.00 AS Numeric(18, 2)), 36802)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21891, CAST(0.00 AS Numeric(18, 2)), 36803)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21892, CAST(0.00 AS Numeric(18, 2)), 36804)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21893, CAST(0.00 AS Numeric(18, 2)), 36805)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21894, CAST(0.00 AS Numeric(18, 2)), 36806)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21895, CAST(0.00 AS Numeric(18, 2)), 36807)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21896, CAST(0.00 AS Numeric(18, 2)), 36808)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21897, CAST(0.00 AS Numeric(18, 2)), 36809)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21898, CAST(0.00 AS Numeric(18, 2)), 36810)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21899, CAST(0.00 AS Numeric(18, 2)), 36811)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21900, CAST(0.00 AS Numeric(18, 2)), 36812)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21901, CAST(0.00 AS Numeric(18, 2)), 36813)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21902, CAST(0.00 AS Numeric(18, 2)), 36814)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21903, CAST(0.00 AS Numeric(18, 2)), 36815)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21904, CAST(0.00 AS Numeric(18, 2)), 36816)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21919, CAST(0.00 AS Numeric(18, 2)), 36817)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21905, CAST(0.00 AS Numeric(18, 2)), 36818)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21906, CAST(0.00 AS Numeric(18, 2)), 36819)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21920, CAST(0.00 AS Numeric(18, 2)), 36820)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21921, CAST(0.00 AS Numeric(18, 2)), 36821)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21907, CAST(0.00 AS Numeric(18, 2)), 36822)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21908, CAST(0.00 AS Numeric(18, 2)), 36823)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21922, CAST(0.00 AS Numeric(18, 2)), 36824)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21923, CAST(0.00 AS Numeric(18, 2)), 36825)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21909, CAST(0.00 AS Numeric(18, 2)), 36826)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21910, CAST(0.00 AS Numeric(18, 2)), 36827)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21924, CAST(0.00 AS Numeric(18, 2)), 36828)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21925, CAST(0.00 AS Numeric(18, 2)), 36829)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21911, CAST(0.00 AS Numeric(18, 2)), 36830)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21912, CAST(0.00 AS Numeric(18, 2)), 36831)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21926, CAST(0.00 AS Numeric(18, 2)), 36832)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21927, CAST(0.00 AS Numeric(18, 2)), 36833)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21913, CAST(0.00 AS Numeric(18, 2)), 36834)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21914, CAST(0.00 AS Numeric(18, 2)), 36835)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21928, CAST(0.00 AS Numeric(18, 2)), 36836)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21929, CAST(0.00 AS Numeric(18, 2)), 36837)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21915, CAST(0.00 AS Numeric(18, 2)), 36838)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21916, CAST(0.00 AS Numeric(18, 2)), 36839)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21930, CAST(0.00 AS Numeric(18, 2)), 36840)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21931, CAST(0.00 AS Numeric(18, 2)), 36841)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21917, CAST(0.00 AS Numeric(18, 2)), 36842)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21918, CAST(0.00 AS Numeric(18, 2)), 36843)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21932, CAST(0.00 AS Numeric(18, 2)), 36844)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21933, CAST(0.00 AS Numeric(18, 2)), 36845)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21934, CAST(0.00 AS Numeric(18, 2)), 36846)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21935, CAST(0.00 AS Numeric(18, 2)), 36847)
GO
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21936, CAST(0.00 AS Numeric(18, 2)), 36848)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21937, CAST(0.00 AS Numeric(18, 2)), 36849)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5099, 21938, CAST(0.00 AS Numeric(18, 2)), 36850)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21788, CAST(100.00 AS Numeric(18, 2)), 36851)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21789, CAST(100.00 AS Numeric(18, 2)), 36852)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21790, CAST(100.00 AS Numeric(18, 2)), 36853)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21791, CAST(100.00 AS Numeric(18, 2)), 36854)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21792, CAST(100.00 AS Numeric(18, 2)), 36855)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21793, CAST(100.00 AS Numeric(18, 2)), 36856)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21794, CAST(100.00 AS Numeric(18, 2)), 36857)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21795, CAST(100.00 AS Numeric(18, 2)), 36858)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21796, CAST(100.00 AS Numeric(18, 2)), 36859)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21797, CAST(100.00 AS Numeric(18, 2)), 36860)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21798, CAST(100.00 AS Numeric(18, 2)), 36861)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21799, CAST(100.00 AS Numeric(18, 2)), 36862)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21800, CAST(100.00 AS Numeric(18, 2)), 36863)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21801, CAST(100.00 AS Numeric(18, 2)), 36864)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21802, CAST(100.00 AS Numeric(18, 2)), 36865)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21803, CAST(100.00 AS Numeric(18, 2)), 36866)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21804, CAST(100.00 AS Numeric(18, 2)), 36867)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21805, CAST(100.00 AS Numeric(18, 2)), 36868)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21806, CAST(100.00 AS Numeric(18, 2)), 36869)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21807, CAST(100.00 AS Numeric(18, 2)), 36870)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21808, CAST(100.00 AS Numeric(18, 2)), 36871)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21809, CAST(100.00 AS Numeric(18, 2)), 36872)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21810, CAST(100.00 AS Numeric(18, 2)), 36873)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21811, CAST(100.00 AS Numeric(18, 2)), 36874)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21812, CAST(100.00 AS Numeric(18, 2)), 36875)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21813, CAST(100.00 AS Numeric(18, 2)), 36876)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21814, CAST(100.00 AS Numeric(18, 2)), 36877)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21815, CAST(100.00 AS Numeric(18, 2)), 36878)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21816, CAST(100.00 AS Numeric(18, 2)), 36879)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21817, CAST(100.00 AS Numeric(18, 2)), 36880)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21818, CAST(100.00 AS Numeric(18, 2)), 36881)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21819, CAST(100.00 AS Numeric(18, 2)), 36882)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21820, CAST(100.00 AS Numeric(18, 2)), 36883)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21821, CAST(100.00 AS Numeric(18, 2)), 36884)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21822, CAST(100.00 AS Numeric(18, 2)), 36885)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21823, CAST(100.00 AS Numeric(18, 2)), 36886)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21824, CAST(100.00 AS Numeric(18, 2)), 36887)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21825, CAST(100.00 AS Numeric(18, 2)), 36888)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21826, CAST(100.00 AS Numeric(18, 2)), 36889)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21827, CAST(100.00 AS Numeric(18, 2)), 36890)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21828, CAST(100.00 AS Numeric(18, 2)), 36891)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21829, CAST(100.00 AS Numeric(18, 2)), 36892)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21830, CAST(100.00 AS Numeric(18, 2)), 36893)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21831, CAST(100.00 AS Numeric(18, 2)), 36894)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21832, CAST(100.00 AS Numeric(18, 2)), 36895)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21833, CAST(100.00 AS Numeric(18, 2)), 36896)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21834, CAST(100.00 AS Numeric(18, 2)), 36897)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21835, CAST(100.00 AS Numeric(18, 2)), 36898)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21836, CAST(100.00 AS Numeric(18, 2)), 36899)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21837, CAST(200.00 AS Numeric(18, 2)), 36900)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21838, CAST(200.00 AS Numeric(18, 2)), 36901)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21839, CAST(200.00 AS Numeric(18, 2)), 36902)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21840, CAST(200.00 AS Numeric(18, 2)), 36903)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21841, CAST(200.00 AS Numeric(18, 2)), 36904)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21842, CAST(200.00 AS Numeric(18, 2)), 36905)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21843, CAST(200.00 AS Numeric(18, 2)), 36906)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21844, CAST(200.00 AS Numeric(18, 2)), 36907)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21845, CAST(200.00 AS Numeric(18, 2)), 36908)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21846, CAST(200.00 AS Numeric(18, 2)), 36909)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21847, CAST(200.00 AS Numeric(18, 2)), 36910)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21848, CAST(200.00 AS Numeric(18, 2)), 36911)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21849, CAST(200.00 AS Numeric(18, 2)), 36912)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21850, CAST(200.00 AS Numeric(18, 2)), 36913)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21851, CAST(200.00 AS Numeric(18, 2)), 36914)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21852, CAST(200.00 AS Numeric(18, 2)), 36915)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21853, CAST(200.00 AS Numeric(18, 2)), 36916)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21854, CAST(200.00 AS Numeric(18, 2)), 36917)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21855, CAST(200.00 AS Numeric(18, 2)), 36918)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21856, CAST(200.00 AS Numeric(18, 2)), 36919)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21857, CAST(200.00 AS Numeric(18, 2)), 36920)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21858, CAST(200.00 AS Numeric(18, 2)), 36921)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21859, CAST(200.00 AS Numeric(18, 2)), 36922)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21860, CAST(200.00 AS Numeric(18, 2)), 36923)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21861, CAST(200.00 AS Numeric(18, 2)), 36924)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21862, CAST(200.00 AS Numeric(18, 2)), 36925)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21863, CAST(200.00 AS Numeric(18, 2)), 36926)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21864, CAST(200.00 AS Numeric(18, 2)), 36927)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21865, CAST(200.00 AS Numeric(18, 2)), 36928)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21866, CAST(200.00 AS Numeric(18, 2)), 36929)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21867, CAST(200.00 AS Numeric(18, 2)), 36930)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21868, CAST(200.00 AS Numeric(18, 2)), 36931)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21869, CAST(200.00 AS Numeric(18, 2)), 36932)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21870, CAST(200.00 AS Numeric(18, 2)), 36933)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21871, CAST(200.00 AS Numeric(18, 2)), 36934)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21872, CAST(200.00 AS Numeric(18, 2)), 36935)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21873, CAST(200.00 AS Numeric(18, 2)), 36936)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21874, CAST(200.00 AS Numeric(18, 2)), 36937)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21875, CAST(200.00 AS Numeric(18, 2)), 36938)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21876, CAST(200.00 AS Numeric(18, 2)), 36939)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21877, CAST(200.00 AS Numeric(18, 2)), 36940)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21878, CAST(200.00 AS Numeric(18, 2)), 36941)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21879, CAST(200.00 AS Numeric(18, 2)), 36942)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21880, CAST(200.00 AS Numeric(18, 2)), 36943)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21881, CAST(200.00 AS Numeric(18, 2)), 36944)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21882, CAST(200.00 AS Numeric(18, 2)), 36945)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21883, CAST(200.00 AS Numeric(18, 2)), 36946)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21884, CAST(200.00 AS Numeric(18, 2)), 36947)
GO
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21885, CAST(200.00 AS Numeric(18, 2)), 36948)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21886, CAST(200.00 AS Numeric(18, 2)), 36949)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21887, CAST(200.00 AS Numeric(18, 2)), 36950)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21888, CAST(200.00 AS Numeric(18, 2)), 36951)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21889, CAST(200.00 AS Numeric(18, 2)), 36952)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21890, CAST(200.00 AS Numeric(18, 2)), 36953)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21891, CAST(200.00 AS Numeric(18, 2)), 36954)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21892, CAST(200.00 AS Numeric(18, 2)), 36955)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21893, CAST(200.00 AS Numeric(18, 2)), 36956)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21894, CAST(200.00 AS Numeric(18, 2)), 36957)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21895, CAST(200.00 AS Numeric(18, 2)), 36958)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21896, CAST(200.00 AS Numeric(18, 2)), 36959)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21897, CAST(200.00 AS Numeric(18, 2)), 36960)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21898, CAST(200.00 AS Numeric(18, 2)), 36961)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21899, CAST(200.00 AS Numeric(18, 2)), 36962)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21900, CAST(200.00 AS Numeric(18, 2)), 36963)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21901, CAST(200.00 AS Numeric(18, 2)), 36964)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21902, CAST(200.00 AS Numeric(18, 2)), 36965)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21903, CAST(200.00 AS Numeric(18, 2)), 36966)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21904, CAST(200.00 AS Numeric(18, 2)), 36967)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21919, CAST(200.00 AS Numeric(18, 2)), 36968)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21905, CAST(200.00 AS Numeric(18, 2)), 36969)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21906, CAST(200.00 AS Numeric(18, 2)), 36970)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21920, CAST(200.00 AS Numeric(18, 2)), 36971)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21921, CAST(200.00 AS Numeric(18, 2)), 36972)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21907, CAST(200.00 AS Numeric(18, 2)), 36973)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21908, CAST(200.00 AS Numeric(18, 2)), 36974)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21922, CAST(200.00 AS Numeric(18, 2)), 36975)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21923, CAST(200.00 AS Numeric(18, 2)), 36976)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21909, CAST(200.00 AS Numeric(18, 2)), 36977)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21910, CAST(200.00 AS Numeric(18, 2)), 36978)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21924, CAST(200.00 AS Numeric(18, 2)), 36979)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21925, CAST(200.00 AS Numeric(18, 2)), 36980)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21911, CAST(200.00 AS Numeric(18, 2)), 36981)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21912, CAST(200.00 AS Numeric(18, 2)), 36982)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21926, CAST(200.00 AS Numeric(18, 2)), 36983)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21927, CAST(200.00 AS Numeric(18, 2)), 36984)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21913, CAST(200.00 AS Numeric(18, 2)), 36985)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21914, CAST(200.00 AS Numeric(18, 2)), 36986)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21928, CAST(200.00 AS Numeric(18, 2)), 36987)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21929, CAST(200.00 AS Numeric(18, 2)), 36988)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21915, CAST(200.00 AS Numeric(18, 2)), 36989)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21916, CAST(200.00 AS Numeric(18, 2)), 36990)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21930, CAST(200.00 AS Numeric(18, 2)), 36991)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21931, CAST(200.00 AS Numeric(18, 2)), 36992)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21917, CAST(200.00 AS Numeric(18, 2)), 36993)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21918, CAST(200.00 AS Numeric(18, 2)), 36994)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21932, CAST(200.00 AS Numeric(18, 2)), 36995)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21933, CAST(200.00 AS Numeric(18, 2)), 36996)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21934, CAST(200.00 AS Numeric(18, 2)), 36997)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21935, CAST(200.00 AS Numeric(18, 2)), 36998)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21936, CAST(200.00 AS Numeric(18, 2)), 36999)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21937, CAST(200.00 AS Numeric(18, 2)), 37000)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21938, CAST(200.00 AS Numeric(18, 2)), 37001)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21788, CAST(100.00 AS Numeric(18, 2)), 37002)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21789, CAST(100.00 AS Numeric(18, 2)), 37003)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21790, CAST(100.00 AS Numeric(18, 2)), 37004)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21791, CAST(100.00 AS Numeric(18, 2)), 37005)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21792, CAST(100.00 AS Numeric(18, 2)), 37006)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21793, CAST(100.00 AS Numeric(18, 2)), 37007)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21794, CAST(100.00 AS Numeric(18, 2)), 37008)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21795, CAST(100.00 AS Numeric(18, 2)), 37009)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21796, CAST(100.00 AS Numeric(18, 2)), 37010)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21797, CAST(100.00 AS Numeric(18, 2)), 37011)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21798, CAST(100.00 AS Numeric(18, 2)), 37012)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21799, CAST(100.00 AS Numeric(18, 2)), 37013)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21800, CAST(100.00 AS Numeric(18, 2)), 37014)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21801, CAST(100.00 AS Numeric(18, 2)), 37015)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21802, CAST(100.00 AS Numeric(18, 2)), 37016)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21803, CAST(100.00 AS Numeric(18, 2)), 37017)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21804, CAST(100.00 AS Numeric(18, 2)), 37018)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21805, CAST(100.00 AS Numeric(18, 2)), 37019)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21806, CAST(100.00 AS Numeric(18, 2)), 37020)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21807, CAST(100.00 AS Numeric(18, 2)), 37021)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21808, CAST(100.00 AS Numeric(18, 2)), 37022)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21809, CAST(100.00 AS Numeric(18, 2)), 37023)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21810, CAST(100.00 AS Numeric(18, 2)), 37024)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21811, CAST(100.00 AS Numeric(18, 2)), 37025)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21812, CAST(100.00 AS Numeric(18, 2)), 37026)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21813, CAST(100.00 AS Numeric(18, 2)), 37027)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21814, CAST(100.00 AS Numeric(18, 2)), 37028)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21815, CAST(100.00 AS Numeric(18, 2)), 37029)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21816, CAST(100.00 AS Numeric(18, 2)), 37030)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21817, CAST(100.00 AS Numeric(18, 2)), 37031)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21818, CAST(100.00 AS Numeric(18, 2)), 37032)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21819, CAST(100.00 AS Numeric(18, 2)), 37033)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21820, CAST(100.00 AS Numeric(18, 2)), 37034)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21821, CAST(100.00 AS Numeric(18, 2)), 37035)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21822, CAST(100.00 AS Numeric(18, 2)), 37036)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21823, CAST(100.00 AS Numeric(18, 2)), 37037)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21824, CAST(100.00 AS Numeric(18, 2)), 37038)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21825, CAST(100.00 AS Numeric(18, 2)), 37039)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21826, CAST(100.00 AS Numeric(18, 2)), 37040)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21827, CAST(100.00 AS Numeric(18, 2)), 37041)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21828, CAST(100.00 AS Numeric(18, 2)), 37042)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21829, CAST(100.00 AS Numeric(18, 2)), 37043)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21830, CAST(100.00 AS Numeric(18, 2)), 37044)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21831, CAST(100.00 AS Numeric(18, 2)), 37045)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21832, CAST(100.00 AS Numeric(18, 2)), 37046)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21833, CAST(100.00 AS Numeric(18, 2)), 37047)
GO
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21834, CAST(100.00 AS Numeric(18, 2)), 37048)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21835, CAST(100.00 AS Numeric(18, 2)), 37049)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21836, CAST(100.00 AS Numeric(18, 2)), 37050)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21837, CAST(200.00 AS Numeric(18, 2)), 37051)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21838, CAST(200.00 AS Numeric(18, 2)), 37052)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21839, CAST(200.00 AS Numeric(18, 2)), 37053)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21840, CAST(200.00 AS Numeric(18, 2)), 37054)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21841, CAST(200.00 AS Numeric(18, 2)), 37055)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21842, CAST(200.00 AS Numeric(18, 2)), 37056)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21843, CAST(200.00 AS Numeric(18, 2)), 37057)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21844, CAST(200.00 AS Numeric(18, 2)), 37058)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21845, CAST(200.00 AS Numeric(18, 2)), 37059)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21846, CAST(200.00 AS Numeric(18, 2)), 37060)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21847, CAST(200.00 AS Numeric(18, 2)), 37061)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21848, CAST(200.00 AS Numeric(18, 2)), 37062)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21849, CAST(200.00 AS Numeric(18, 2)), 37063)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21850, CAST(200.00 AS Numeric(18, 2)), 37064)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21851, CAST(200.00 AS Numeric(18, 2)), 37065)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21852, CAST(200.00 AS Numeric(18, 2)), 37066)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21853, CAST(200.00 AS Numeric(18, 2)), 37067)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21854, CAST(200.00 AS Numeric(18, 2)), 37068)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21855, CAST(200.00 AS Numeric(18, 2)), 37069)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21856, CAST(200.00 AS Numeric(18, 2)), 37070)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21857, CAST(200.00 AS Numeric(18, 2)), 37071)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21858, CAST(200.00 AS Numeric(18, 2)), 37072)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21859, CAST(200.00 AS Numeric(18, 2)), 37073)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21860, CAST(200.00 AS Numeric(18, 2)), 37074)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21861, CAST(200.00 AS Numeric(18, 2)), 37075)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21862, CAST(200.00 AS Numeric(18, 2)), 37076)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21863, CAST(200.00 AS Numeric(18, 2)), 37077)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21864, CAST(200.00 AS Numeric(18, 2)), 37078)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21865, CAST(200.00 AS Numeric(18, 2)), 37079)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21866, CAST(200.00 AS Numeric(18, 2)), 37080)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21867, CAST(200.00 AS Numeric(18, 2)), 37081)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21868, CAST(200.00 AS Numeric(18, 2)), 37082)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21869, CAST(200.00 AS Numeric(18, 2)), 37083)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21870, CAST(200.00 AS Numeric(18, 2)), 37084)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21871, CAST(200.00 AS Numeric(18, 2)), 37085)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21872, CAST(200.00 AS Numeric(18, 2)), 37086)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21873, CAST(200.00 AS Numeric(18, 2)), 37087)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21874, CAST(200.00 AS Numeric(18, 2)), 37088)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21875, CAST(200.00 AS Numeric(18, 2)), 37089)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21876, CAST(200.00 AS Numeric(18, 2)), 37090)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21877, CAST(200.00 AS Numeric(18, 2)), 37091)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21878, CAST(200.00 AS Numeric(18, 2)), 37092)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21879, CAST(200.00 AS Numeric(18, 2)), 37093)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21880, CAST(200.00 AS Numeric(18, 2)), 37094)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21881, CAST(200.00 AS Numeric(18, 2)), 37095)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21882, CAST(200.00 AS Numeric(18, 2)), 37096)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21883, CAST(200.00 AS Numeric(18, 2)), 37097)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21884, CAST(200.00 AS Numeric(18, 2)), 37098)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21885, CAST(200.00 AS Numeric(18, 2)), 37099)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21886, CAST(200.00 AS Numeric(18, 2)), 37100)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21887, CAST(200.00 AS Numeric(18, 2)), 37101)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21888, CAST(200.00 AS Numeric(18, 2)), 37102)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21889, CAST(200.00 AS Numeric(18, 2)), 37103)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21890, CAST(200.00 AS Numeric(18, 2)), 37104)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21891, CAST(200.00 AS Numeric(18, 2)), 37105)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21892, CAST(200.00 AS Numeric(18, 2)), 37106)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21893, CAST(200.00 AS Numeric(18, 2)), 37107)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21894, CAST(200.00 AS Numeric(18, 2)), 37108)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21895, CAST(200.00 AS Numeric(18, 2)), 37109)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21896, CAST(200.00 AS Numeric(18, 2)), 37110)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21897, CAST(200.00 AS Numeric(18, 2)), 37111)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21898, CAST(200.00 AS Numeric(18, 2)), 37112)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21899, CAST(200.00 AS Numeric(18, 2)), 37113)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21900, CAST(200.00 AS Numeric(18, 2)), 37114)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21901, CAST(200.00 AS Numeric(18, 2)), 37115)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21902, CAST(200.00 AS Numeric(18, 2)), 37116)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21903, CAST(200.00 AS Numeric(18, 2)), 37117)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21904, CAST(200.00 AS Numeric(18, 2)), 37118)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21919, CAST(200.00 AS Numeric(18, 2)), 37119)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21905, CAST(200.00 AS Numeric(18, 2)), 37120)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21906, CAST(200.00 AS Numeric(18, 2)), 37121)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21920, CAST(200.00 AS Numeric(18, 2)), 37122)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21921, CAST(200.00 AS Numeric(18, 2)), 37123)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21907, CAST(200.00 AS Numeric(18, 2)), 37124)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21908, CAST(200.00 AS Numeric(18, 2)), 37125)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21922, CAST(200.00 AS Numeric(18, 2)), 37126)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21923, CAST(200.00 AS Numeric(18, 2)), 37127)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21909, CAST(200.00 AS Numeric(18, 2)), 37128)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21910, CAST(200.00 AS Numeric(18, 2)), 37129)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21924, CAST(200.00 AS Numeric(18, 2)), 37130)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21925, CAST(200.00 AS Numeric(18, 2)), 37131)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21911, CAST(200.00 AS Numeric(18, 2)), 37132)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21912, CAST(200.00 AS Numeric(18, 2)), 37133)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21926, CAST(200.00 AS Numeric(18, 2)), 37134)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21927, CAST(200.00 AS Numeric(18, 2)), 37135)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21913, CAST(200.00 AS Numeric(18, 2)), 37136)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21914, CAST(200.00 AS Numeric(18, 2)), 37137)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21928, CAST(200.00 AS Numeric(18, 2)), 37138)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21929, CAST(200.00 AS Numeric(18, 2)), 37139)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21915, CAST(200.00 AS Numeric(18, 2)), 37140)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21916, CAST(200.00 AS Numeric(18, 2)), 37141)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21930, CAST(200.00 AS Numeric(18, 2)), 37142)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21931, CAST(200.00 AS Numeric(18, 2)), 37143)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21917, CAST(200.00 AS Numeric(18, 2)), 37144)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21918, CAST(200.00 AS Numeric(18, 2)), 37145)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21932, CAST(200.00 AS Numeric(18, 2)), 37146)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21933, CAST(200.00 AS Numeric(18, 2)), 37147)
GO
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21934, CAST(200.00 AS Numeric(18, 2)), 37148)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21935, CAST(200.00 AS Numeric(18, 2)), 37149)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21936, CAST(200.00 AS Numeric(18, 2)), 37150)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21937, CAST(200.00 AS Numeric(18, 2)), 37151)
INSERT [dbo].[DistribucionesLocalidades] ([DistribucionId], [LocalidadId], [Precio], [DistribucionLocalidadId]) VALUES (5100, 21938, CAST(200.00 AS Numeric(18, 2)), 37152)
SET IDENTITY_INSERT [dbo].[DistribucionesLocalidades] OFF
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [TipoDocumentoId], [NroDocumento], [TelefonoFijo], [TelefonoMovil], [Mail]) VALUES (4029, N'Gonzalo', N'Misciagna', 1, N'42778488', N'', N'2227480649', N'Gonza999capo@gmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [TipoDocumentoId], [NroDocumento], [TelefonoFijo], [TelefonoMovil], [Mail]) VALUES (4030, N'Miguel Angel', N'Misciagna', 1, N'14721883', N'', N'', N'')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [TipoDocumentoId], [NroDocumento], [TelefonoFijo], [TelefonoMovil], [Mail]) VALUES (4031, N'Leandro ', N'Polano', 1, N'43334343', N'', N'', N'mrsanickgamer')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [TipoDocumentoId], [NroDocumento], [TelefonoFijo], [TelefonoMovil], [Mail]) VALUES (4032, N'Nicolas ', N'Torrado', 1, N'43432342', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
SET IDENTITY_INSERT [dbo].[Eventos] ON 

INSERT [dbo].[Eventos] ([EventoId], [TipoEventoId], [ClasificacionId], [Evento], [FechaEvento], [Descripcion], [Suspendido], [DistribucionId]) VALUES (8042, 1, 1, N'Spiderman No Way Home', CAST(N'2021-12-26T23:53:55.480' AS DateTime), N'El gran heroe spiderman debera enfrentarse a los 6 siniestros y resolver sus problemas con la justicia', 0, 5100)
INSERT [dbo].[Eventos] ([EventoId], [TipoEventoId], [ClasificacionId], [Evento], [FechaEvento], [Descripcion], [Suspendido], [DistribucionId]) VALUES (8043, 3, 1, N'Romeo y Julieta', CAST(N'2022-12-31T00:00:00.000' AS DateTime), N'Obra de teatro de la mas famosa obra de Shakespiere', 0, 5099)
INSERT [dbo].[Eventos] ([EventoId], [TipoEventoId], [ClasificacionId], [Evento], [FechaEvento], [Descripcion], [Suspendido], [DistribucionId]) VALUES (8044, 2, 1, N'Recital de Axel ', CAST(N'2021-12-27T00:02:10.410' AS DateTime), N'El famoso cantante Axel viene a cantar', 0, 5100)
SET IDENTITY_INSERT [dbo].[Eventos] OFF
SET IDENTITY_INSERT [dbo].[FormasPagos] ON 

INSERT [dbo].[FormasPagos] ([FormaPagoId], [FormaPago]) VALUES (1, N'Efectivo')
INSERT [dbo].[FormasPagos] ([FormaPagoId], [FormaPago]) VALUES (2, N'Tarjeta de débito')
INSERT [dbo].[FormasPagos] ([FormaPagoId], [FormaPago]) VALUES (3, N'Tarjeta de crédito')
SET IDENTITY_INSERT [dbo].[FormasPagos] OFF
SET IDENTITY_INSERT [dbo].[FormasVentas] ON 

INSERT [dbo].[FormasVentas] ([FormaVentaId], [FormaVenta]) VALUES (1, N'Telefónica')
INSERT [dbo].[FormasVentas] ([FormaVentaId], [FormaVenta]) VALUES (2, N'Personal')
INSERT [dbo].[FormasVentas] ([FormaVentaId], [FormaVenta]) VALUES (3, N'Página web')
SET IDENTITY_INSERT [dbo].[FormasVentas] OFF
SET IDENTITY_INSERT [dbo].[Horarios] ON 

INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8042, CAST(N'2021-12-31T23:26:34.000' AS DateTime), CAST(N'2021-12-26T20:00:00.000' AS DateTime), 8042)
INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8043, CAST(N'2022-02-14T23:26:34.000' AS DateTime), CAST(N'2021-12-26T22:00:00.000' AS DateTime), 8042)
INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8044, CAST(N'2022-01-11T00:00:00.000' AS DateTime), CAST(N'2021-12-26T15:00:00.000' AS DateTime), 8043)
INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8045, CAST(N'2022-01-31T00:00:00.000' AS DateTime), CAST(N'2021-12-26T20:00:00.000' AS DateTime), 8043)
INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8046, CAST(N'2022-12-31T00:00:00.000' AS DateTime), CAST(N'2021-12-26T20:00:00.000' AS DateTime), 8043)
INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8047, CAST(N'2022-07-25T23:29:46.000' AS DateTime), CAST(N'2021-12-26T20:00:00.000' AS DateTime), 8044)
INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8048, CAST(N'2022-07-25T23:29:46.000' AS DateTime), CAST(N'2021-12-26T00:00:00.000' AS DateTime), 8044)
INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8049, CAST(N'2022-07-10T23:29:46.000' AS DateTime), CAST(N'2021-12-26T00:00:00.000' AS DateTime), 8044)
INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8050, CAST(N'2022-06-13T23:29:46.000' AS DateTime), CAST(N'2021-12-26T00:00:00.000' AS DateTime), 8044)
INSERT [dbo].[Horarios] ([HorarioId], [Fecha], [Hora], [EventoId]) VALUES (8051, CAST(N'2022-06-13T23:29:46.000' AS DateTime), CAST(N'2021-12-26T17:00:00.000' AS DateTime), 8044)
SET IDENTITY_INSERT [dbo].[Horarios] OFF
SET IDENTITY_INSERT [dbo].[Localidades] ON 

INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21788, 1, 1, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21789, 1, 2, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21790, 1, 3, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21791, 1, 4, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21792, 1, 5, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21793, 1, 6, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21794, 1, 7, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21795, 1, 8, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21796, 1, 9, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21797, 1, 10, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21798, 1, 11, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21799, 1, 12, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21800, 1, 13, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21801, 1, 14, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21802, 1, 15, 1, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21803, 1, 16, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21804, 1, 17, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21805, 1, 18, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21806, 1, 19, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21807, 1, 20, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21808, 1, 21, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21809, 1, 22, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21810, 1, 23, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21811, 1, 24, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21812, 1, 25, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21813, 1, 26, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21814, 1, 27, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21815, 1, 28, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21816, 1, 29, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21817, 1, 30, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21818, 1, 31, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21819, 1, 32, 1, 2)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21820, 1, 33, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21821, 1, 34, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21822, 1, 35, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21823, 1, 36, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21824, 1, 37, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21825, 1, 38, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21826, 1, 39, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21827, 1, 40, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21828, 1, 41, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21829, 1, 42, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21830, 1, 43, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21831, 1, 44, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21832, 1, 45, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21833, 1, 46, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21834, 1, 47, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21835, 1, 48, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21836, 1, 49, 1, 3)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21837, 1, 50, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21838, 1, 51, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21839, 1, 52, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21840, 1, 53, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21841, 1, 54, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21842, 1, 55, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21843, 1, 56, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21844, 1, 57, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21845, 1, 58, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21846, 1, 59, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21847, 1, 60, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21848, 1, 61, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21849, 1, 62, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21850, 1, 63, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21851, 1, 64, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21852, 1, 65, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21853, 1, 66, 1, 4)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21854, 1, 67, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21855, 1, 68, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21856, 1, 69, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21857, 1, 70, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21858, 1, 71, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21859, 1, 72, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21860, 1, 73, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21861, 1, 74, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21862, 1, 75, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21863, 1, 76, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21864, 1, 77, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21865, 1, 78, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21866, 1, 79, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21867, 1, 80, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21868, 1, 81, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21869, 1, 82, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21870, 1, 83, 1, 5)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21871, 1, 84, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21872, 1, 85, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21873, 1, 86, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21874, 1, 87, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21875, 1, 88, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21876, 1, 89, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21877, 1, 90, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21878, 1, 91, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21879, 1, 92, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21880, 1, 93, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21881, 1, 94, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21882, 1, 95, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21883, 1, 96, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21884, 1, 97, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21885, 1, 98, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21886, 1, 99, 1, 6)
GO
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21887, 1, 100, 1, 6)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21888, 1, 101, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21889, 1, 102, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21890, 1, 103, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21891, 1, 104, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21892, 1, 105, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21893, 1, 106, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21894, 1, 107, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21895, 1, 108, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21896, 1, 109, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21897, 1, 110, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21898, 1, 111, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21899, 1, 112, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21900, 1, 113, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21901, 1, 114, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21902, 1, 115, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21903, 1, 116, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21904, 1, 117, 1, 7)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21905, 1, 1, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21906, 1, 2, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21907, 1, 3, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21908, 1, 4, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21909, 1, 5, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21910, 1, 6, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21911, 1, 7, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21912, 1, 8, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21913, 1, 9, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21914, 1, 10, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21915, 1, 11, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21916, 1, 12, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21917, 1, 13, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21918, 1, 14, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21919, 2, 1, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21920, 2, 2, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21921, 2, 3, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21922, 2, 4, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21923, 2, 5, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21924, 2, 6, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21925, 2, 7, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21926, 2, 8, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21927, 2, 9, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21928, 2, 10, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21929, 2, 11, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21930, 2, 12, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21931, 2, 13, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21932, 2, 14, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21933, 2, 15, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21934, 2, 16, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21935, 2, 17, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21936, 2, 18, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21937, 2, 19, 2, 1)
INSERT [dbo].[Localidades] ([LocalidadId], [PlantaId], [Numero], [UbicacionId], [Fila]) VALUES (21938, 2, 20, 2, 1)
SET IDENTITY_INSERT [dbo].[Localidades] OFF
SET IDENTITY_INSERT [dbo].[Plantas] ON 

INSERT [dbo].[Plantas] ([PlantaId], [Planta]) VALUES (1, N'Planta Baja')
INSERT [dbo].[Plantas] ([PlantaId], [Planta]) VALUES (2, N'Primer Piso')
SET IDENTITY_INSERT [dbo].[Plantas] OFF
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([TicketId], [HorarioId], [Importe], [LocalidadId], [FechaVenta], [FormaPagoId], [FormaVentaId], [Anulada]) VALUES (5051, 8042, CAST(200.00 AS Numeric(18, 2)), 21905, CAST(N'2021-12-26T23:32:05.470' AS DateTime), 1, 2, 0)
INSERT [dbo].[Tickets] ([TicketId], [HorarioId], [Importe], [LocalidadId], [FechaVenta], [FormaPagoId], [FormaVentaId], [Anulada]) VALUES (5052, 8042, CAST(200.00 AS Numeric(18, 2)), 21906, CAST(N'2021-12-26T23:32:05.470' AS DateTime), 1, 2, 0)
INSERT [dbo].[Tickets] ([TicketId], [HorarioId], [Importe], [LocalidadId], [FechaVenta], [FormaPagoId], [FormaVentaId], [Anulada]) VALUES (5053, 8042, CAST(200.00 AS Numeric(18, 2)), 21907, CAST(N'2021-12-26T23:32:05.470' AS DateTime), 1, 2, 0)
INSERT [dbo].[Tickets] ([TicketId], [HorarioId], [Importe], [LocalidadId], [FechaVenta], [FormaPagoId], [FormaVentaId], [Anulada]) VALUES (5054, 8042, CAST(100.00 AS Numeric(18, 2)), 21788, CAST(N'2021-12-26T23:32:51.080' AS DateTime), 1, 1, 0)
INSERT [dbo].[Tickets] ([TicketId], [HorarioId], [Importe], [LocalidadId], [FechaVenta], [FormaPagoId], [FormaVentaId], [Anulada]) VALUES (5055, 8042, CAST(100.00 AS Numeric(18, 2)), 21789, CAST(N'2021-12-26T23:32:51.080' AS DateTime), 1, 1, 0)
INSERT [dbo].[Tickets] ([TicketId], [HorarioId], [Importe], [LocalidadId], [FechaVenta], [FormaPagoId], [FormaVentaId], [Anulada]) VALUES (5056, 8042, CAST(100.00 AS Numeric(18, 2)), 21790, CAST(N'2021-12-26T23:32:51.080' AS DateTime), 1, 1, 0)
INSERT [dbo].[Tickets] ([TicketId], [HorarioId], [Importe], [LocalidadId], [FechaVenta], [FormaPagoId], [FormaVentaId], [Anulada]) VALUES (5057, 8042, CAST(100.00 AS Numeric(18, 2)), 21791, CAST(N'2021-12-26T23:32:51.080' AS DateTime), 1, 1, 0)
INSERT [dbo].[Tickets] ([TicketId], [HorarioId], [Importe], [LocalidadId], [FechaVenta], [FormaPagoId], [FormaVentaId], [Anulada]) VALUES (5058, 8042, CAST(100.00 AS Numeric(18, 2)), 21792, CAST(N'2021-12-26T23:32:51.080' AS DateTime), 1, 1, 0)
INSERT [dbo].[Tickets] ([TicketId], [HorarioId], [Importe], [LocalidadId], [FechaVenta], [FormaPagoId], [FormaVentaId], [Anulada]) VALUES (5059, 8050, CAST(100.00 AS Numeric(18, 2)), 21788, CAST(N'2021-12-26T23:54:35.323' AS DateTime), 1, 3, 0)
SET IDENTITY_INSERT [dbo].[Tickets] OFF
SET IDENTITY_INSERT [dbo].[TiposDocumentos] ON 

INSERT [dbo].[TiposDocumentos] ([TipoDocumentoId], [TipoDocumento]) VALUES (1, N'DNI')
INSERT [dbo].[TiposDocumentos] ([TipoDocumentoId], [TipoDocumento]) VALUES (2, N'Libreta de enrolamiento')
SET IDENTITY_INSERT [dbo].[TiposDocumentos] OFF
SET IDENTITY_INSERT [dbo].[TiposEventos] ON 

INSERT [dbo].[TiposEventos] ([TipoEventoId], [TipoEvento]) VALUES (1, N'Cine')
INSERT [dbo].[TiposEventos] ([TipoEventoId], [TipoEvento]) VALUES (2, N'Recital')
INSERT [dbo].[TiposEventos] ([TipoEventoId], [TipoEvento]) VALUES (3, N'Obra de Teatro')
SET IDENTITY_INSERT [dbo].[TiposEventos] OFF
SET IDENTITY_INSERT [dbo].[Ubicaciones] ON 

INSERT [dbo].[Ubicaciones] ([UbicacionId], [Ubicacion]) VALUES (1, N'Butacas')
INSERT [dbo].[Ubicaciones] ([UbicacionId], [Ubicacion]) VALUES (2, N'Palcos')
SET IDENTITY_INSERT [dbo].[Ubicaciones] OFF
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([VentaId], [Fecha], [Total], [Estado], [EmpleadoId]) VALUES (5013, CAST(N'2021-12-26T23:32:05.470' AS DateTime), CAST(600.00 AS Numeric(18, 2)), 0, 4029)
INSERT [dbo].[Ventas] ([VentaId], [Fecha], [Total], [Estado], [EmpleadoId]) VALUES (5014, CAST(N'2021-12-26T23:32:51.080' AS DateTime), CAST(500.00 AS Numeric(18, 2)), 0, 4030)
INSERT [dbo].[Ventas] ([VentaId], [Fecha], [Total], [Estado], [EmpleadoId]) VALUES (5015, CAST(N'2021-12-26T23:54:35.323' AS DateTime), CAST(100.00 AS Numeric(18, 2)), 0, 4029)
SET IDENTITY_INSERT [dbo].[Ventas] OFF
SET IDENTITY_INSERT [dbo].[VentasTicket] ON 

INSERT [dbo].[VentasTicket] ([TicketId], [VentaId], [VentaTicketId]) VALUES (5051, 5013, 29)
INSERT [dbo].[VentasTicket] ([TicketId], [VentaId], [VentaTicketId]) VALUES (5052, 5013, 30)
INSERT [dbo].[VentasTicket] ([TicketId], [VentaId], [VentaTicketId]) VALUES (5053, 5013, 31)
INSERT [dbo].[VentasTicket] ([TicketId], [VentaId], [VentaTicketId]) VALUES (5054, 5014, 32)
INSERT [dbo].[VentasTicket] ([TicketId], [VentaId], [VentaTicketId]) VALUES (5055, 5014, 33)
INSERT [dbo].[VentasTicket] ([TicketId], [VentaId], [VentaTicketId]) VALUES (5056, 5014, 34)
INSERT [dbo].[VentasTicket] ([TicketId], [VentaId], [VentaTicketId]) VALUES (5057, 5014, 35)
INSERT [dbo].[VentasTicket] ([TicketId], [VentaId], [VentaTicketId]) VALUES (5058, 5014, 36)
INSERT [dbo].[VentasTicket] ([TicketId], [VentaId], [VentaTicketId]) VALUES (5059, 5015, 37)
SET IDENTITY_INSERT [dbo].[VentasTicket] OFF
ALTER TABLE [dbo].[Eventos] ADD  CONSTRAINT [DF_Eventos_Suspendido]  DEFAULT ((0)) FOR [Suspendido]
GO
ALTER TABLE [dbo].[DistribucionesLocalidades]  WITH CHECK ADD  CONSTRAINT [FK_DistribucionesLocalidades_Distribuciones] FOREIGN KEY([DistribucionId])
REFERENCES [dbo].[Distribuciones] ([DistribucionId])
GO
ALTER TABLE [dbo].[DistribucionesLocalidades] CHECK CONSTRAINT [FK_DistribucionesLocalidades_Distribuciones]
GO
ALTER TABLE [dbo].[DistribucionesLocalidades]  WITH CHECK ADD  CONSTRAINT [FK_DistribucionesLocalidades_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[DistribucionesLocalidades] CHECK CONSTRAINT [FK_DistribucionesLocalidades_Localidades]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_TiposDocumentos] FOREIGN KEY([TipoDocumentoId])
REFERENCES [dbo].[TiposDocumentos] ([TipoDocumentoId])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_TiposDocumentos]
GO
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_Clasificaciones] FOREIGN KEY([ClasificacionId])
REFERENCES [dbo].[Clasificaciones] ([ClasificacionId])
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_Clasificaciones]
GO
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_Distribuciones] FOREIGN KEY([DistribucionId])
REFERENCES [dbo].[Distribuciones] ([DistribucionId])
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_Distribuciones]
GO
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_TiposEventos] FOREIGN KEY([TipoEventoId])
REFERENCES [dbo].[TiposEventos] ([TipoEventoId])
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_TiposEventos]
GO
ALTER TABLE [dbo].[Horarios]  WITH CHECK ADD  CONSTRAINT [FK_Horarios_Eventos] FOREIGN KEY([EventoId])
REFERENCES [dbo].[Eventos] ([EventoId])
GO
ALTER TABLE [dbo].[Horarios] CHECK CONSTRAINT [FK_Horarios_Eventos]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FK_Localidades_Plantas] FOREIGN KEY([PlantaId])
REFERENCES [dbo].[Plantas] ([PlantaId])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FK_Localidades_Plantas]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FK_Localidades_Ubicaciones] FOREIGN KEY([UbicacionId])
REFERENCES [dbo].[Ubicaciones] ([UbicacionId])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FK_Localidades_Ubicaciones]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_FormasPagos] FOREIGN KEY([FormaPagoId])
REFERENCES [dbo].[FormasPagos] ([FormaPagoId])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_FormasPagos]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_FormasVentas] FOREIGN KEY([FormaVentaId])
REFERENCES [dbo].[FormasVentas] ([FormaVentaId])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_FormasVentas]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Horarios] FOREIGN KEY([HorarioId])
REFERENCES [dbo].[Horarios] ([HorarioId])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Horarios]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Localidades]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleados] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleados]
GO
ALTER TABLE [dbo].[VentasTicket]  WITH CHECK ADD  CONSTRAINT [FK_VentasTicket_Tickets] FOREIGN KEY([TicketId])
REFERENCES [dbo].[Tickets] ([TicketId])
GO
ALTER TABLE [dbo].[VentasTicket] CHECK CONSTRAINT [FK_VentasTicket_Tickets]
GO
ALTER TABLE [dbo].[VentasTicket]  WITH CHECK ADD  CONSTRAINT [FK_VentasTicket_Ventas] FOREIGN KEY([VentaId])
REFERENCES [dbo].[Ventas] ([VentaId])
GO
ALTER TABLE [dbo].[VentasTicket] CHECK CONSTRAINT [FK_VentasTicket_Ventas]
GO
USE [master]
GO
ALTER DATABASE [TeatroProgramacion] SET  READ_WRITE 
GO
