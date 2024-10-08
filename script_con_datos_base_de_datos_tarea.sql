USE [master]
GO
/****** Object:  Database [tienda_gadgets]    Script Date: 24/09/2024 20:11:16 ******/
CREATE DATABASE [tienda_gadgets]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tienda_gadgets', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\tienda_gadgets.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tienda_gadgets_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\tienda_gadgets_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [tienda_gadgets] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tienda_gadgets].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tienda_gadgets] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tienda_gadgets] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tienda_gadgets] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tienda_gadgets] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tienda_gadgets] SET ARITHABORT OFF 
GO
ALTER DATABASE [tienda_gadgets] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tienda_gadgets] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tienda_gadgets] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tienda_gadgets] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tienda_gadgets] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tienda_gadgets] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tienda_gadgets] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tienda_gadgets] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tienda_gadgets] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tienda_gadgets] SET  ENABLE_BROKER 
GO
ALTER DATABASE [tienda_gadgets] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tienda_gadgets] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tienda_gadgets] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tienda_gadgets] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tienda_gadgets] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tienda_gadgets] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tienda_gadgets] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tienda_gadgets] SET RECOVERY FULL 
GO
ALTER DATABASE [tienda_gadgets] SET  MULTI_USER 
GO
ALTER DATABASE [tienda_gadgets] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tienda_gadgets] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tienda_gadgets] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tienda_gadgets] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tienda_gadgets] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tienda_gadgets] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'tienda_gadgets', N'ON'
GO
ALTER DATABASE [tienda_gadgets] SET QUERY_STORE = ON
GO
ALTER DATABASE [tienda_gadgets] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [tienda_gadgets]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[almacen](
	[id_almacen] [int] IDENTITY(1,1) NOT NULL,
	[nombre_almacen] [varchar](100) NOT NULL,
	[ubicacion] [varchar](255) NOT NULL,
	[capacidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_almacen_info]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_almacen_info] AS
SELECT nombre_almacen, ubicacion, capacidad 
FROM almacen;
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre_categoria] [varchar](100) NOT NULL,
	[descripcion] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[correo_electronico] [varchar](150) NOT NULL,
	[direccion] [varchar](255) NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
	[tipo_cliente] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_pedido]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_pedido](
	[id_detalle] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unitario] [decimal](10, 2) NOT NULL,
	[id_pedido] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventario](
	[id_inventario] [int] IDENTITY(1,1) NOT NULL,
	[cantidad_disponible] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[id_almacen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marca]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marca](
	[id_marca] [int] IDENTITY(1,1) NOT NULL,
	[nombre_marca] [varchar](100) NOT NULL,
	[pais_origen] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[metodo_pago]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[metodo_pago](
	[id_metodo_pago] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[descripcion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_metodo_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[id_pedido] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
	[estado_pedido] [varchar](20) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_metodo_pago] [int] NOT NULL,
	[direccion_envio] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [text] NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[stock] [int] NOT NULL,
	[fecha_lanzamiento] [datetime] NOT NULL,
	[marca_id] [int] NOT NULL,
	[categoria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promocion]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promocion](
	[id_promocion] [int] IDENTITY(1,1) NOT NULL,
	[nombre_promocion] [varchar](100) NOT NULL,
	[descuento] [decimal](5, 2) NOT NULL,
	[fecha_inicio] [datetime] NOT NULL,
	[fecha_fin] [datetime] NOT NULL,
	[id_producto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_promocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre_proveedor] [varchar](100) NOT NULL,
	[contacto] [varchar](max) NOT NULL,
	[pais] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resena]    Script Date: 24/09/2024 20:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resena](
	[id_resena] [int] IDENTITY(1,1) NOT NULL,
	[calificacion] [int] NOT NULL,
	[comentario] [text] NULL,
	[fecha_resena] [datetime] NOT NULL,
	[id_producto] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_resena] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (getdate()) FOR [fecha_registro]
GO
ALTER TABLE [dbo].[pedido] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[producto] ADD  DEFAULT (getdate()) FOR [fecha_lanzamiento]
GO
ALTER TABLE [dbo].[resena] ADD  DEFAULT (getdate()) FOR [fecha_resena]
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([id_pedido])
REFERENCES [dbo].[pedido] ([id_pedido])
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([id_almacen])
REFERENCES [dbo].[almacen] ([id_almacen])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([id_metodo_pago])
REFERENCES [dbo].[metodo_pago] ([id_metodo_pago])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([categoria_id])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([marca_id])
REFERENCES [dbo].[marca] ([id_marca])
GO
ALTER TABLE [dbo].[promocion]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[resena]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[resena]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
USE [master]
GO
ALTER DATABASE [tienda_gadgets] SET  READ_WRITE 
GO
