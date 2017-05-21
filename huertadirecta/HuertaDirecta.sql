USE [master]
GO
/****** Object:  Database [HuertaDirecta]    Script Date: 21/5/2017 18:11:13 ******/
CREATE DATABASE [HuertaDirecta]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HuertaDirecta', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HUERTADESARROLLO\MSSQL\DATA\HuertaDirecta.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HuertaDirecta_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HUERTADESARROLLO\MSSQL\DATA\HuertaDirecta_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HuertaDirecta] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HuertaDirecta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HuertaDirecta] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HuertaDirecta] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HuertaDirecta] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HuertaDirecta] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HuertaDirecta] SET ARITHABORT OFF 
GO
ALTER DATABASE [HuertaDirecta] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HuertaDirecta] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HuertaDirecta] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HuertaDirecta] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HuertaDirecta] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HuertaDirecta] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HuertaDirecta] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HuertaDirecta] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HuertaDirecta] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HuertaDirecta] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HuertaDirecta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HuertaDirecta] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HuertaDirecta] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HuertaDirecta] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HuertaDirecta] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HuertaDirecta] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HuertaDirecta] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HuertaDirecta] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HuertaDirecta] SET  MULTI_USER 
GO
ALTER DATABASE [HuertaDirecta] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HuertaDirecta] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HuertaDirecta] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HuertaDirecta] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HuertaDirecta] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HuertaDirecta]
GO
/****** Object:  Table [dbo].[barrio]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[barrio](
	[id] [int] NOT NULL,
	[idCiudad] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_barrio] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[idCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[calle]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[calle](
	[id] [int] NOT NULL,
	[idCiudad] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_calle] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[idCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categoria](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ciudad]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ciudad](
	[id] [int] NOT NULL,
	[idLocalidad] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_ciudad] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[idLocalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[direccion](
	[id] [int] NOT NULL,
	[latitud] [int] NULL,
	[longitud] [int] NULL,
	[manzana] [varchar](10) NULL,
	[solar] [varchar](10) NULL,
	[apto] [varchar](10) NULL,
	[numero] [varchar](10) NULL,
	[codigoCalle] [int] NULL,
	[codigoCalleEsquina] [int] NULL,
	[localidad] [int] NULL,
	[codigoCiudad] [int] NULL,
	[codigoProvincia] [int] NULL,
	[codigoPais] [int] NULL,
 CONSTRAINT [PK_direccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imagen]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imagen](
	[id] [int] NOT NULL,
	[imagen] [image] NULL,
 CONSTRAINT [PK_imagen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[moneda]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[moneda](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_moneda] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[id] [int] NOT NULL,
	[idPersonaDestinatario] [int] NULL,
	[moneda] [int] NULL,
	[monto] [decimal](18, 0) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_pedido] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pedidoDetalle]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidoDetalle](
	[idPedido] [int] NOT NULL,
	[idItem] [int] NOT NULL,
	[idProducto] [int] NULL,
	[idProductor] [int] NULL,
 CONSTRAINT [PK_pedidoDetalle] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC,
	[idItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persona]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[id] [int] NOT NULL,
	[primerNombre] [varchar](100) NULL,
	[segundoNombre] [varchar](100) NULL,
	[primerApellido] [varchar](100) NULL,
	[segundoApellido] [varchar](100) NULL,
	[tipoDocumento] [int] NULL,
	[numeroDocumento] [varchar](30) NULL,
	[email] [varchar](30) NULL,
	[telefonoFijo] [varchar](30) NULL,
	[telefonoMovil] [varchar](30) NULL,
	[fechaAlta] [datetime] NULL,
	[fechaBaja] [datetime] NULL,
	[estado] [int] NULL,
	[calificacion] [int] NULL,
	[fechaNacimiento] [datetime] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[producto]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[producto](
	[id] [int] NOT NULL,
	[idCategoria] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](5000) NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productoProductor]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productoProductor](
	[idProducto] [int] NOT NULL,
	[idProductor] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
	[codigoMoneda] [int] NULL,
	[precio] [decimal](18, 0) NULL,
	[codigoTipoUnidad] [int] NULL,
	[linkSitio] [varchar](100) NULL,
	[linkRedSocial] [varchar](100) NULL,
 CONSTRAINT [PK_productoProductor] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC,
	[idProductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productor]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productor](
	[id] [int] NOT NULL,
	[idPersona] [int] NULL,
	[nombreFantasia] [varchar](100) NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_productor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provincia](
	[id] [int] NOT NULL,
	[idPais] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_provincia] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[puntoVenta]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[puntoVenta](
	[idPuntoVenta] [int] NOT NULL,
	[tipo] [int] NULL,
	[nombre] [varchar](100) NULL,
	[idDireccion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPuntoVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[puntoVentaProductoProductor]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puntoVentaProductoProductor](
	[idPuntoVenta] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idProductor] [int] NOT NULL,
 CONSTRAINT [pk_puntoVentaProductoProductorr] PRIMARY KEY CLUSTERED 
(
	[idPuntoVenta] ASC,
	[idProducto] ASC,
	[idProductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[relacion_imagen_producto]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relacion_imagen_producto](
	[idImagen] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
 CONSTRAINT [pk_relacion_imagen_producto] PRIMARY KEY CLUSTERED 
(
	[idImagen] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[relacion_persona_usuario]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[relacion_persona_usuario](
	[idPersona] [int] NOT NULL,
	[usuario] [varchar](100) NOT NULL,
 CONSTRAINT [pk_relacion_persona_usuario] PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC,
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipoUnidad]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipoUnidad](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_tipoUnidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[usuario] [varchar](100) NOT NULL,
	[password] [varchar](30) NULL,
	[fechaAlta] [datetime] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[zona]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[zona](
	[idZona] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[idPais] [int] NULL,
	[idProvincia] [int] NULL,
	[coordenada1X] [int] NULL,
	[coordenada1Y] [int] NULL,
	[coordenada2X] [int] NULL,
	[coordenada2Y] [int] NULL,
	[coordenada3X] [int] NULL,
	[coordenada3Y] [int] NULL,
	[coordenada4X] [int] NULL,
	[coordenada4Y] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[zonaProductoProductor]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zonaProductoProductor](
	[idZona] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idProductor] [int] NOT NULL,
 CONSTRAINT [pk_zonaProductoProductor] PRIMARY KEY CLUSTERED 
(
	[idZona] ASC,
	[idProducto] ASC,
	[idProductor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[barrioGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[barrioGuardar] 
( 
@id Int, 
@idCiudad Int, 
@nombre Varchar(100) 
) 
 
AS 
update barrio SET  
id=@id,  
idCiudad=@idCiudad,  
nombre=@nombre  
 
 WHERE 
id = @id and 
idCiudad = @idCiudad  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[barrioLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[barrioLeer] 
( 
@id Int, 
@idCiudad Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
idCiudad, 
nombre 
 
FROM barrio 
 WHERE 
((id = @id) or (@id is null)) and 
((idCiudad = @idCiudad) or (@idCiudad is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[calleGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[calleGuardar] 
( 
@id Int, 
@idCiudad Int, 
@nombre Varchar(100) 
) 
 
AS 
update calle SET  
id=@id,  
idCiudad=@idCiudad,  
nombre=@nombre  
 
 WHERE 
id = @id and 
idCiudad = @idCiudad  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[calleLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[calleLeer] 
( 
@id Int, 
@idCiudad Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
idCiudad, 
nombre 
 
FROM calle 
 WHERE 
((id = @id) or (@id is null)) and 
((idCiudad = @idCiudad) or (@idCiudad is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[categoriaGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[categoriaGuardar] 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
update categoria SET  
id=@id,  
nombre=@nombre  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[categoriaLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[categoriaLeer] 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
nombre 
 
FROM categoria 
 WHERE 
((id = @id) or (@id is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[ciudadGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[ciudadGuardar] 
( 
@id Int, 
@idLocalidad Int, 
@nombre Varchar(100) 
) 
 
AS 
update ciudad SET  
id=@id,  
idLocalidad=@idLocalidad,  
nombre=@nombre  
 
 WHERE 
id = @id and 
idLocalidad = @idLocalidad  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[ciudadLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[ciudadLeer] 
( 
@id Int, 
@idLocalidad Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
idLocalidad, 
nombre 
 
FROM ciudad 
 WHERE 
((id = @id) or (@id is null)) and 
((idLocalidad = @idLocalidad) or (@idLocalidad is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[direccionGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[direccionGuardar] 
( 
@id Int, 
@latitud Int, 
@longitud Int, 
@manzana Varchar(10), 
@solar Varchar(10), 
@apto Varchar(10), 
@numero Varchar(10), 
@codigoCalle Int, 
@codigoCalleEsquina Int, 
@localidad Int, 
@codigoCiudad Int, 
@codigoProvincia Int, 
@codigoPais Int 
) 
 
AS 
update direccion SET  
id=@id,  
latitud=@latitud,  
longitud=@longitud,  
manzana=@manzana,  
solar=@solar,  
apto=@apto,  
numero=@numero,  
codigoCalle=@codigoCalle,  
codigoCalleEsquina=@codigoCalleEsquina,  
localidad=@localidad,  
codigoCiudad=@codigoCiudad,  
codigoProvincia=@codigoProvincia,  
codigoPais=@codigoPais  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[direccionLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[direccionLeer] 
( 
@id Int, 
@latitud Int, 
@longitud Int, 
@manzana Varchar(10), 
@solar Varchar(10), 
@apto Varchar(10), 
@numero Varchar(10), 
@codigoCalle Int, 
@codigoCalleEsquina Int, 
@localidad Int, 
@codigoCiudad Int, 
@codigoProvincia Int, 
@codigoPais Int 
) 
 
AS 
SELECT 
id, 
latitud, 
longitud, 
manzana, 
solar, 
apto, 
numero, 
codigoCalle, 
codigoCalleEsquina, 
localidad, 
codigoCiudad, 
codigoProvincia, 
codigoPais 
 
FROM direccion 
 WHERE 
((id = @id) or (@id is null)) and 
((latitud = @latitud) or (@latitud is null)) and 
((longitud = @longitud) or (@longitud is null)) and 
((manzana = @manzana) or (@manzana is null)) and 
((solar = @solar) or (@solar is null)) and 
((apto = @apto) or (@apto is null)) and 
((numero = @numero) or (@numero is null)) and 
((codigoCalle = @codigoCalle) or (@codigoCalle is null)) and 
((codigoCalleEsquina = @codigoCalleEsquina) or (@codigoCalleEsquina is null)) and 
((localidad = @localidad) or (@localidad is null)) and 
((codigoCiudad = @codigoCiudad) or (@codigoCiudad is null)) and 
((codigoProvincia = @codigoProvincia) or (@codigoProvincia is null)) and 
((codigoPais = @codigoPais) or (@codigoPais is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[imagenGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[imagenGuardar] 
( 
@id Int, 
@imagen Varchar(100) 
) 
 
AS 
update imagen SET  
id=@id,  
imagen=@imagen  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[imagenLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[imagenLeer] 
( 
@id Int, 
@imagen Varchar(100) 
) 
 
AS 
SELECT 
id, 
imagen 
 
FROM imagen 
 WHERE 
((id = @id) or (@id is null)) and 
((imagen = @imagen) or (@imagen is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[listadoProductos]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listadoProductos](   
	@idCategoria INT = NULL,
	@nombre VARCHAR (100) = '',
	@idProductor INT = NULL,
	@idZona INT= NULL,
	@idPuntoVenta INT= NULL
)
AS
BEGIN

	SELECT 
	p.id,
	p.idCategoria,
	p.nombre ,
	p.descripcion,
	pp.precio,
	pp.codigoMoneda,
	(SELECT nombre FROM moneda WHERE id=pp.codigoMoneda) AS moneda,
	pp.codigoTipoUnidad,
	(SELECT nombre FROM tipoUnidad WHERE id=pp.codigoTipoUnidad) AS textoTipoUnidad,
	pr.nombreFantasia AS nombreProductor,
	i.imagen
	FROM producto p
	JOIN productoProductor pp
	ON p.id=pp.idProducto
	JOIN zonaProductoProductor zpp
	ON zpp.idProducto=pp.idProducto AND zpp.idProductor=pp.idProductor
	JOIN zona z
	ON z.idZona=zpp.idZona
	JOIN puntoVentaProductoProductor ppp
	ON ppp.idProducto=pp.idProducto AND ppp.idProductor=pp.idProductor
	JOIN puntoVenta pv
	ON pv.idPuntoVenta=ppp.idPuntoVenta
	JOIN direccion d
	ON d.id=pv.idDireccion
	JOIN productor pr
	ON pp.idProductor=pr.id
	JOIN relacion_imagen_producto rip
	ON rip.idProducto=p.id AND rip.idImagen  = (SELECT min(rip2.idImagen) FROM relacion_imagen_producto rip2 WHERE rip2.idProducto=p.id) --la primer imagen que hallla
	JOIN imagen i 
	ON i.id=rip.idImagen 
	WHERE 
	((p.idCategoria = @idCategoria) or (@idCategoria = '')) and 
	((p.nombre = @nombre) or (@nombre is null)) and 
	((pp.idProductor = @idProductor) or (@idProductor is null)) AND
	((z.idZona = @idZona) or (@idZona is null)) AND
	((pv.idPuntoVenta = @idPuntoVenta) or (@idPuntoVenta is null)) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[listaZonas]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listaZonas]
AS
BEGIN
	SELECT idZona, nombre, idPais, idProvincia, coordenada1X, coordenada1Y, coordenada2X, coordenada2Y, coordenada3X, coordenada3Y, coordenada4X, coordenada4Y
	FROM dbo.zona
END
GO
/****** Object:  StoredProcedure [dbo].[login]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[login](
	@usuario VARCHAR(100),
	@password VARCHAR(30)	
)
AS
BEGIN

	IF EXISTS(SELECT Usuario FROM Usuario u WHERE u.usuario=@usuario)
	BEGIN
		IF EXISTS(SELECT Usuario FROM Usuario u WHERE u.usuario=@usuario AND u.password=@password)
		BEGIN
			SELECT 1 AS resultado,'Login correcto' AS mensaje
		END
		ELSE
		BEGIN
			SELECT 0 AS resultado,'Password inválido.' AS mensaje
		END
	END
	ELSE
	BEGIN
		SELECT 0  AS resultado,'Usuario no encontrado' AS mensaje
	END

END
GO
/****** Object:  StoredProcedure [dbo].[monedaGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[monedaGuardar] 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
update moneda SET  
id=@id,  
nombre=@nombre  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[monedaLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[monedaLeer] 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
nombre 
 
FROM moneda 
 WHERE 
((id = @id) or (@id is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[PaisGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[PaisGuardar] 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
update Pais SET  
id=@id,  
nombre=@nombre  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[PaisLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[PaisLeer] 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
nombre 
 
FROM Pais 
 WHERE 
((id = @id) or (@id is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[pedidoDetalleGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[pedidoDetalleGuardar] 
( 
@idPedido Int, 
@idItem Int, 
@idProducto Int, 
@idProductor Int 
) 
 
AS 
update pedidoDetalle SET  
idPedido=@idPedido,  
idItem=@idItem,  
idProducto=@idProducto,  
idProductor=@idProductor  
 
 WHERE 
idPedido = @idPedido and 
idItem = @idItem  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[pedidoDetalleLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[pedidoDetalleLeer] 
( 
@idPedido Int, 
@idItem Int, 
@idProducto Int, 
@idProductor Int 
) 
 
AS 
SELECT 
idPedido, 
idItem, 
idProducto, 
idProductor 
 
FROM pedidoDetalle 
 WHERE 
((idPedido = @idPedido) or (@idPedido is null)) and 
((idItem = @idItem) or (@idItem is null)) and 
((idProducto = @idProducto) or (@idProducto is null)) and 
((idProductor = @idProductor) or (@idProductor is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[pedidoGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[pedidoGuardar] 
( 
@id Int, 
@idPersonaDestinatario Int, 
@moneda Int, 
@monto Decimal, 
@estado Int 
) 
 
AS 
update pedido SET  
id=@id,  
idPersonaDestinatario=@idPersonaDestinatario,  
moneda=@moneda,  
monto=@monto,  
estado=@estado  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[pedidoLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[pedidoLeer] 
( 
@id Int, 
@idPersonaDestinatario Int, 
@moneda Int, 
@monto Decimal, 
@estado Int 
) 
 
AS 
SELECT 
id, 
idPersonaDestinatario, 
moneda, 
monto, 
estado 
 
FROM pedido 
 WHERE 
((id = @id) or (@id is null)) and 
((idPersonaDestinatario = @idPersonaDestinatario) or (@idPersonaDestinatario is null)) and 
((moneda = @moneda) or (@moneda is null)) and 
((monto = @monto) or (@monto is null)) and 
((estado = @estado) or (@estado is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[PersonaGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[PersonaGuardar] 
( 
@id Int, 
@primerNombre Varchar(100), 
@segundoNombre Varchar(100), 
@primerApellido Varchar(100), 
@segundoApellido Varchar(100), 
@tipoDocumento Int, 
@numeroDocumento Varchar(30), 
@email Varchar(30), 
@telefonoFijo Varchar(30), 
@telefonoMovil Varchar(30), 
@fechaAlta DateTime, 
@fechaBaja DateTime, 
@estado Int, 
@calificacion Int 
) 
 
AS 
update Persona SET  
id=@id,  
primerNombre=@primerNombre,  
segundoNombre=@segundoNombre,  
primerApellido=@primerApellido,  
segundoApellido=@segundoApellido,  
tipoDocumento=@tipoDocumento,  
numeroDocumento=@numeroDocumento,  
email=@email,  
telefonoFijo=@telefonoFijo,  
telefonoMovil=@telefonoMovil,  
fechaAlta=@fechaAlta,  
fechaBaja=@fechaBaja,  
estado=@estado,  
calificacion=@calificacion  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[PersonaLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[PersonaLeer] 
( 
@id Int, 
@primerNombre Varchar(100), 
@segundoNombre Varchar(100), 
@primerApellido Varchar(100), 
@segundoApellido Varchar(100), 
@tipoDocumento Int, 
@numeroDocumento Varchar(30), 
@email Varchar(30), 
@telefonoFijo Varchar(30), 
@telefonoMovil Varchar(30), 
@fechaAlta DateTime, 
@fechaBaja DateTime, 
@estado Int, 
@calificacion Int 
) 
 
AS 
SELECT 
id, 
primerNombre, 
segundoNombre, 
primerApellido, 
segundoApellido, 
tipoDocumento, 
numeroDocumento, 
email, 
telefonoFijo, 
telefonoMovil, 
fechaAlta, 
fechaBaja, 
estado, 
calificacion 
 
FROM Persona 
 WHERE 
((id = @id) or (@id is null)) and 
((primerNombre = @primerNombre) or (@primerNombre is null)) and 
((segundoNombre = @segundoNombre) or (@segundoNombre is null)) and 
((primerApellido = @primerApellido) or (@primerApellido is null)) and 
((segundoApellido = @segundoApellido) or (@segundoApellido is null)) and 
((tipoDocumento = @tipoDocumento) or (@tipoDocumento is null)) and 
((numeroDocumento = @numeroDocumento) or (@numeroDocumento is null)) and 
((email = @email) or (@email is null)) and 
((telefonoFijo = @telefonoFijo) or (@telefonoFijo is null)) and 
((telefonoMovil = @telefonoMovil) or (@telefonoMovil is null)) and 
((fechaAlta = @fechaAlta) or (@fechaAlta is null)) and 
((fechaBaja = @fechaBaja) or (@fechaBaja is null)) and 
((estado = @estado) or (@estado is null)) and 
((calificacion = @calificacion) or (@calificacion is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[productoGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[productoGuardar] 
( 
@id Int, 
@idCategoria Int, 
@nombre Varchar(100), 
@descripcion Varchar(5000) 
) 
 
AS 
update producto SET  
id=@id,  
idCategoria=@idCategoria,  
nombre=@nombre,  
descripcion=@descripcion  
 
 WHERE 
id = @id and 
idCategoria = @idCategoria  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[productoLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[productoLeer] 
( 
@id Int, 
@idCategoria Int, 
@nombre Varchar(100), 
@descripcion Varchar(5000) 
) 
 
AS 
SELECT 
id, 
idCategoria, 
nombre, 
descripcion 
 
FROM producto 
 WHERE 
((id = @id) or (@id is null)) and 
((idCategoria = @idCategoria) or (@idCategoria is null)) and 
((nombre = @nombre) or (@nombre is null)) and 
((descripcion = @descripcion) or (@descripcion is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[productoProductorGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[productoProductorGuardar] 
( 
@idProducto Int, 
@idProductor Int, 
@descripcion Varchar(100), 
@codigoMoneda Int, 
@precio Decimal, 
@codigoTipoUnidad Int, 
@linkSitio Varchar(100), 
@linkRedSocial Varchar(100) 
) 
 
AS 
update productoProductor SET  
idProducto=@idProducto,  
idProductor=@idProductor,  
descripcion=@descripcion,  
codigoMoneda=@codigoMoneda,  
precio=@precio,  
codigoTipoUnidad=@codigoTipoUnidad,  
linkSitio=@linkSitio,  
linkRedSocial=@linkRedSocial  
 
 WHERE 
idProducto = @idProducto and 
idProductor = @idProductor  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[productoProductorLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[productoProductorLeer] 
( 
@idProducto Int, 
@idProductor Int, 
@descripcion Varchar(100), 
@codigoMoneda Int, 
@precio Decimal, 
@codigoTipoUnidad Int, 
@linkSitio Varchar(100), 
@linkRedSocial Varchar(100) 
) 
 
AS 
SELECT 
idProducto, 
idProductor, 
descripcion, 
codigoMoneda, 
precio, 
codigoTipoUnidad, 
linkSitio, 
linkRedSocial 
 
FROM productoProductor 
 WHERE 
((idProducto = @idProducto) or (@idProducto is null)) and 
((idProductor = @idProductor) or (@idProductor is null)) and 
((descripcion = @descripcion) or (@descripcion is null)) and 
((codigoMoneda = @codigoMoneda) or (@codigoMoneda is null)) and 
((precio = @precio) or (@precio is null)) and 
((codigoTipoUnidad = @codigoTipoUnidad) or (@codigoTipoUnidad is null)) and 
((linkSitio = @linkSitio) or (@linkSitio is null)) and 
((linkRedSocial = @linkRedSocial) or (@linkRedSocial is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[productorGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[productorGuardar] 
( 
@id Int, 
@idPersona Int, 
@nombreFantasia Varchar(100), 
@descripcion Varchar(100) 
) 
 
AS 
update productor SET  
id=@id,  
idPersona=@idPersona,  
nombreFantasia=@nombreFantasia,  
descripcion=@descripcion  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[productorLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[productorLeer] 
( 
@id Int, 
@idPersona Int, 
@nombreFantasia Varchar(100), 
@descripcion Varchar(100) 
) 
 
AS 
SELECT 
id, 
idPersona, 
nombreFantasia, 
descripcion 
 
FROM productor 
 WHERE 
((id = @id) or (@id is null)) and 
((idPersona = @idPersona) or (@idPersona is null)) and 
((nombreFantasia = @nombreFantasia) or (@nombreFantasia is null)) and 
((descripcion = @descripcion) or (@descripcion is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[provinciaGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[provinciaGuardar] 
( 
@id Int, 
@idPais Int, 
@nombre Varchar(100) 
) 
 
AS 
update provincia SET  
id=@id,  
idPais=@idPais,  
nombre=@nombre  
 
 WHERE 
id = @id and 
idPais = @idPais  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[provinciaLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[provinciaLeer] 
( 
@id Int, 
@idPais Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
idPais, 
nombre 
 
FROM provincia 
 WHERE 
((id = @id) or (@id is null)) and 
((idPais = @idPais) or (@idPais is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[RegistrarPersona]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistrarPersona] 
( 
@usuario Varchar(100),
@password VARCHAR(30),
@primerNombre VARCHAR(100), 
@segundoNombre VARCHAR(100), 
@primerApellido VARCHAR(100), 
@segundoApellido VARCHAR(100), 
@tipoDocumento INT, 
@numeroDocumento VARCHAR(30), 
@email VARCHAR(30), 
@telefonoFijo VARCHAR(30), 
@telefonoMovil VARCHAR(30),
@fechaNacimiento DATETIME
) 
/*
Se registra la persona por primera vez queda en estado 0-creado hasta que confimr el registro por link enviado a correo
*/
AS 
BEGIN

DECLARE @idPersona INT
DECLARE @fechaAlta DATETIME

	SET @fechaAlta=getdate()
	
	IF EXISTS(
		SELECT id 
		FROM Persona 
		WHERE primerNombre=@primerNombre AND primerApellido=@primerApellido AND segundoApellido=@segundoApellido
	)
	BEGIN
		SELECT 0  AS resultado,'Ya hay una persona registrada con ese nombre.'  as mensaje 
		RETURN 0
	END
	
	IF EXISTS(
		SELECT id 
		FROM Persona 
		WHERE tipoDocumento=@tipoDocumento AND numeroDocumento=@numeroDocumento
	)
	BEGIN
		SELECT 0 AS resultado,'Ya hay una persona registrada con ese documento.' AS mensaje
		RETURN 0
	END
	
	BEGIN TRANSACTION
	
	SELECT @idPersona=isnull(MAX(id),0)+1 FROM Persona
	
	
	INSERT INTO dbo.Persona 
	(
		id, 
		primerNombre, 
		segundoNombre, 
		primerApellido, 
		segundoApellido, 
		tipoDocumento, 
		numeroDocumento,
		email, 
		telefonoFijo, 
		telefonoMovil, 
		fechaAlta, 
		fechaBaja, 
		estado, 
		calificacion,
		fechaNacimiento
	)
	VALUES (
		@idPersona, 
		@primernombre, 
		@segundonombre, 
		@primerapellido, 
		@segundoapellido, 
		@tipodocumento, 
		@numerodocumento, 
		@email,
		@telefonofijo, 
		@telefonomovil,
		@fechaAlta, 
		null, 
		1, -- estado creado pero no confirmado
		1, -- calificacion inicial
		@fechaNacimiento
	)
	 
	IF(@@ERROR=0 AND @@ROWCOUNT=1) 
	BEGIN 
			
		INSERT INTO dbo.Usuario 
		(
			usuario, 
			password, 
			fechaAlta, 
			estado
		)
		VALUES 
		(
			@usuario, 
			@password, 
			@fechaAlta, 
			1 -- estado creado pero no confirmado
		)
		
		IF(@@ERROR=0 AND @@ROWCOUNT=1) 
		BEGIN	
		
			INSERT INTO dbo.relacion_persona_usuario (idPersona, usuario)
				VALUES (@idpersona, @usuario)
			
			IF(@@ERROR=0 AND @@ROWCOUNT=1) 
			BEGIN
				COMMIT TRAN
				SELECT 1 AS resultado,'' AS mensaje
				RETURN 1
			END
			ELSE
			BEGIN			
				ROLLBACK TRAN
				select 0 as resultado,'Error regsitrando persona, relación' as mensaje 
				RETURN 0		
			END 	
		END
		ELSE
		BEGIN		
			ROLLBACK TRAN
			select 0 as resultado,'Error regsitrando persona, usuario' as mensaje 
			RETURN 0	
		END 	
	END 
	ELSE 
	BEGIN 
		ROLLBACK TRAN
		select 0 as Resultado,'Error regsitrando persona, persona' as mensaje 
		RETURN 0
	END  

END
GO
/****** Object:  StoredProcedure [dbo].[tipoUnidadGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[tipoUnidadGuardar] 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
update tipoUnidad SET  
id=@id,  
nombre=@nombre  
 
 WHERE 
id = @id  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[tipoUnidadLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[tipoUnidadLeer] 
( 
@id Int, 
@nombre Varchar(100) 
) 
 
AS 
SELECT 
id, 
nombre 
 
FROM tipoUnidad 
 WHERE 
((id = @id) or (@id is null)) and 
((nombre = @nombre) or (@nombre is null))  
 
 

GO
/****** Object:  StoredProcedure [dbo].[UsuarioGuardar]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[UsuarioGuardar] 
( 
@usuario Varchar(100), 
@password Varchar(30), 
@fechaAlta DateTime, 
@estado Int 
) 
 
AS 
update Usuario SET  
usuario=@usuario,  
password=@password,  
fechaAlta=@fechaAlta,  
estado=@estado  
 
 WHERE 
usuario = @usuario  
 
IF(@@ERROR=0 AND @@ROWCOUNT>0) BEGIN select 1 as resultado,'' as mensaje END ELSE BEGIN select 0 as Resultado,'Error actualizando' as mensaje END 
 

GO
/****** Object:  StoredProcedure [dbo].[UsuarioLeer]    Script Date: 21/5/2017 18:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[UsuarioLeer] 
( 
@usuario Varchar(100), 
@password Varchar(30), 
@fechaAlta DateTime, 
@estado Int 
) 
 
AS 
SELECT 
usuario, 
password, 
fechaAlta, 
estado 
 
FROM Usuario 
 WHERE 
((usuario = @usuario) or (@usuario is null)) and 
((password = @password) or (@password is null)) and 
((fechaAlta = @fechaAlta) or (@fechaAlta is null)) and 
((estado = @estado) or (@estado is null))  
 
 

GO
USE [master]
GO
ALTER DATABASE [HuertaDirecta] SET  READ_WRITE 
GO
