USE [master]
GO
/****** Object:  Database [TPHBH]    Script Date: 16/04/2024 16:53:48 ******/
CREATE DATABASE [TPHBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPHBH', FILENAME = N'D:\MSSQL12.TOOM\MSSQL\DATA\TPHBH.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TPHBH_log', FILENAME = N'D:\MSSQL12.TOOM\MSSQL\DATA\TPHBH_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TPHBH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPHBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPHBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPHBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPHBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPHBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPHBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPHBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPHBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPHBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPHBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPHBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPHBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPHBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPHBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPHBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPHBH] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TPHBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPHBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPHBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPHBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPHBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPHBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPHBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPHBH] SET RECOVERY FULL 
GO
ALTER DATABASE [TPHBH] SET  MULTI_USER 
GO
ALTER DATABASE [TPHBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPHBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPHBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPHBH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TPHBH] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPHBH', N'ON'
GO
USE [TPHBH]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[IdBitacora] [int] IDENTITY(1,1) NOT NULL,
	[NickUsuario] [nvarchar](50) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Criticidad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[IdBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Etiqueta]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etiqueta](
	[Id_Etiqueta] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Etiqueta] PRIMARY KEY CLUSTERED 
(
	[Id_Etiqueta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma](
	[Id_Idioma] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Idioma_Default] [bit] NOT NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[Id_Idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patente]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patente](
	[IdPat] [int] IDENTITY(1,1) NOT NULL,
	[PatNom] [nvarchar](50) NULL,
	[PatDesc] [nvarchar](50) NULL,
	[PatDVH] [nvarchar](50) NULL,
 CONSTRAINT [PK_permiso_1] PRIMARY KEY CLUSTERED 
(
	[IdPat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patente_Patente]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patente_Patente](
	[id_patente_padre] [int] NULL,
	[id_patente_hijo] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Traduccion]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Traduccion](
	[Id_Traduccion] [int] IDENTITY(1,1) NOT NULL,
	[Id_Idioma] [int] NOT NULL,
	[Id_Etiqueta] [int] NOT NULL,
	[Traduccion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Traduccion] PRIMARY KEY CLUSTERED 
(
	[Id_Traduccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario_Patente]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Patente](
	[IdUsu] [int] NOT NULL,
	[IdPat] [int] NOT NULL,
 CONSTRAINT [PK_Usuario_Permiso] PRIMARY KEY CLUSTERED 
(
	[IdUsu] ASC,
	[IdPat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Idusu] [int] IDENTITY(1,1) NOT NULL,
	[IdIdioma] [int] NOT NULL,
	[Usunom] [nvarchar](50) NOT NULL,
	[Usunick] [nvarchar](50) NOT NULL,
	[Usupass] [nvarchar](50) NOT NULL,
	[Usumail] [nvarchar](50) NOT NULL,
	[Usuestado] [bit] NOT NULL,
	[UsubajaL] [bit] NOT NULL,
	[UsuDVH] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Idusu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Bitacora] ON 

INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (1, N'admin', CAST(N'2022-04-11 14:58:35.257' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (2, N'admin', CAST(N'2022-04-11 15:02:18.463' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (3, N'admin', CAST(N'2022-04-11 15:03:46.587' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (4, N'admin', CAST(N'2022-04-11 15:04:49.777' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (5, N'admin', CAST(N'2022-04-11 15:05:14.990' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (6, N'admin', CAST(N'2022-04-11 15:06:53.540' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (7, N'admin', CAST(N'2022-04-11 15:09:59.410' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (8, N'admin', CAST(N'2022-04-11 15:11:12.733' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (9, N'admin', CAST(N'2022-04-11 15:32:34.770' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (10, N'admin', CAST(N'2022-04-11 15:36:22.083' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (11, N'admin', CAST(N'2022-04-11 15:37:14.950' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (12, N'admin', CAST(N'2022-04-11 15:37:39.620' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (13, N'admin', CAST(N'2022-04-11 15:39:00.997' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (14, N'admin', CAST(N'2022-04-11 15:42:01.013' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (15, N'admin', CAST(N'2022-04-11 21:13:56.327' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (16, N'admin', CAST(N'2022-06-11 22:30:25.653' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (17, N'admin', CAST(N'2022-07-11 00:07:00.987' AS DateTime), N'Inicio de sesion', N'baja')
INSERT [dbo].[Bitacora] ([IdBitacora], [NickUsuario], [Fecha], [Descripcion], [Criticidad]) VALUES (1002, N'admin', CAST(N'2022-08-11 19:15:08.823' AS DateTime), N'Inicio de sesion', N'baja')
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (1, N'sesion')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (2, N'cambiar_contraseña')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (3, N'cerrarsesion')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (4, N'idioma')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (5, N'seleccionar_idioma')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (6, N'gestionar_idioma')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (7, N'actualizar_lista_idiomas')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (8, N'seguridad')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (9, N'famypat')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (10, N'usuarios')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (11, N'gestion')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (12, N'usuario')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (13, N'negocio')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (14, N'socio')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (15, N'ges_socio')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (16, N'asignar_socio_clase')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (17, N'entrenador')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (18, N'gestionar_entrenador')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (19, N'asignar_entrenador_clase')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (20, N'entrenamiento')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (21, N'gestionar_entrenamiento')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (22, N'asignar_horario')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (23, N'CambiarContraseña ')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (24, N'contraseña_actual')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (25, N'contraseña_nueva')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (26, N'confirmar_contraseña')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (27, N'aceptar')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (28, N'cancelar')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (29, N'clientes')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (30, N'stock')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (31, N'prov')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (32, N'ventas')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (33, N'pedidos')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (34, N'prod')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (35, N'precios')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (36, N'pedidoprov')
INSERT [dbo].[Etiqueta] ([Id_Etiqueta], [Nombre]) VALUES (37, N'compras')
INSERT [dbo].[Idioma] ([Id_Idioma], [Nombre], [Idioma_Default]) VALUES (1, N'Español', 1)
INSERT [dbo].[Idioma] ([Id_Idioma], [Nombre], [Idioma_Default]) VALUES (2, N'Inglés', 1)
INSERT [dbo].[Idioma] ([Id_Idioma], [Nombre], [Idioma_Default]) VALUES (3, N'Chino mandarín ', 0)
INSERT [dbo].[Idioma] ([Id_Idioma], [Nombre], [Idioma_Default]) VALUES (4, N'Alemán ', 0)
SET IDENTITY_INSERT [dbo].[Patente] ON 

INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2041, N'Administrador', NULL, NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2042, N'patentesFlias', N'puedeconfigurarpatentesyfamilias', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2043, N'Seguridad', N'puedeaccederseg', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2044, N'ABMUsers', N'puedeabmusuarios', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2045, N'WEBMASTER', NULL, NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2046, N'AccedeWM', N'puedeaccederwm', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2047, N'restore', N'puedegestionarrestore', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2048, N'backup', N' puedegestionarbackup', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2049, N'bitacora', N'puedegestionarbitacora', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2050, N'Carrito', NULL, NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2051, N'AccedeCarrito', N'puedeaccederacarrito', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2052, N'Productos', N'puedeaccederaproductos', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2053, N'Comprar', N'puedecomprarproductos', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2056, N'gggg', N'puedecomprarproductos', NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2057, N'ffffffffg', NULL, NULL)
INSERT [dbo].[Patente] ([IdPat], [PatNom], [PatDesc], [PatDVH]) VALUES (2058, N'ffffaaaasdad', N'puedeconfigurarpatentesyfamilias', NULL)
SET IDENTITY_INSERT [dbo].[Patente] OFF
SET IDENTITY_INSERT [dbo].[Traduccion] ON 

INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (1, 1, 1, N'Sesión')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (2, 1, 2, N'Cambiar Contraseña')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (3, 1, 3, N'Cerrar Sesión')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (4, 1, 4, N'Idioma')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (5, 1, 5, N'Seleccionar Idioma')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (6, 1, 6, N'Gestionar Idioma')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (7, 1, 7, N'Actualizar Lista Idiomas')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (8, 1, 8, N'Seguridad')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (9, 1, 9, N'Familia y Patentes')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (10, 1, 10, N'Usuarios')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (11, 1, 11, N'Gestión')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (12, 1, 12, N'Usuarios')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (13, 1, 13, N'Negocio')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (14, 1, 14, N'Socio')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (15, 1, 15, N'Gestionar Socio')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (16, 1, 16, N'Asignar Socio Clase')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (17, 1, 17, N'Entrenador')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (18, 1, 18, N'Gestionar Entrenador')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (19, 1, 19, N'Asignar Entrenador Clase')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (20, 1, 20, N'Entrenamiento')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (21, 1, 21, N'Gestionar Entrenamiento')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (22, 1, 22, N'Asignar Horario')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (23, 1, 23, N'CAMBIAR CONTRASEÑA')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (24, 1, 24, N'Contraseña Actual :')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (25, 1, 25, N'Contraseña Nueva :')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (26, 1, 26, N'Confirmar Nueva Contraseña :')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (27, 1, 27, N'Aceptar')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (28, 1, 28, N'Cancelar')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (29, 2, 1, N'Session')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (30, 2, 2, N'Change Password')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (31, 2, 3, N'Logout')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (32, 2, 4, N'Language')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (33, 2, 5, N'Select Language')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (34, 2, 6, N'Configure Language')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (35, 2, 7, N'Refresh List Language')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (36, 2, 8, N'Security')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (37, 2, 9, N'Family and Permission')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (38, 2, 10, N'Users')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (39, 2, 11, N'Configure')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (40, 2, 12, N'User')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (41, 2, 13, N'Business')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (42, 2, 14, N'Client')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (43, 2, 15, N'Configure Client')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (44, 2, 16, N'Client and Class')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (45, 2, 17, N'Trainer')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (46, 2, 18, N'Configure Trainer')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (47, 2, 19, N'Trainer and Class')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (48, 2, 20, N'Training')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (49, 2, 21, N'Configure Training')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (50, 2, 22, N'Configure Time')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (51, 2, 23, N'CHANGE PASSWORD')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (52, 2, 24, N'Your Password')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (53, 2, 25, N'New Password')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (54, 2, 26, N'Confirm Password')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (55, 2, 27, N'Ok')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (56, 2, 28, N'Dimiss')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (57, 3, 1, N'Culio')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (58, 3, 2, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (59, 3, 3, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (60, 3, 4, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (61, 3, 5, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (62, 3, 6, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (63, 3, 7, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (64, 3, 8, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (65, 3, 9, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (66, 3, 10, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (67, 3, 11, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (68, 3, 12, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (69, 3, 13, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (70, 3, 14, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (71, 3, 15, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (72, 3, 16, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (73, 3, 17, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (74, 3, 18, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (75, 3, 19, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (76, 3, 20, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (77, 3, 21, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (78, 3, 22, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (79, 3, 23, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (80, 3, 24, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (81, 3, 25, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (82, 3, 26, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (83, 3, 27, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (84, 3, 28, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (85, 4, 1, N'kraken')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (86, 4, 2, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (87, 4, 3, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (88, 4, 4, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (89, 4, 5, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (90, 4, 6, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (91, 4, 7, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (92, 4, 8, N'hhhhhh')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (93, 4, 9, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (94, 4, 10, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (95, 4, 11, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (96, 4, 12, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (97, 4, 13, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (98, 4, 14, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (99, 4, 15, N'default')
GO
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (100, 4, 16, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (101, 4, 17, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (102, 4, 18, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (103, 4, 19, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (104, 4, 20, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (105, 4, 21, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (106, 4, 22, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (107, 4, 23, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (108, 4, 24, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (109, 4, 25, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (110, 4, 26, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (111, 4, 27, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (112, 4, 28, N'default')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (113, 2, 29, N'Clients')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (114, 2, 30, N's')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (115, 2, 31, N's')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (116, 2, 32, N'd')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (117, 2, 33, N'dd')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (118, 2, 34, N'Products')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (119, 2, 35, N'h')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (120, 2, 36, N'h')
INSERT [dbo].[Traduccion] ([Id_Traduccion], [Id_Idioma], [Id_Etiqueta], [Traduccion]) VALUES (121, 2, 37, N'd')
SET IDENTITY_INSERT [dbo].[Traduccion] OFF
INSERT [dbo].[Usuario_Patente] ([IdUsu], [IdPat]) VALUES (2, 2041)
INSERT [dbo].[Usuario_Patente] ([IdUsu], [IdPat]) VALUES (3, 2045)
INSERT [dbo].[Usuario_Patente] ([IdUsu], [IdPat]) VALUES (4, 2050)
INSERT [dbo].[Usuario_Patente] ([IdUsu], [IdPat]) VALUES (8, 2044)
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Idusu], [IdIdioma], [Usunom], [Usunick], [Usupass], [Usumail], [Usuestado], [UsubajaL], [UsuDVH]) VALUES (2, 1, N'Administrador', N'admin', N'!#/)zW??C?JJ??', N'tom_heras@hotmail.com', 1, 1, 1)
INSERT [dbo].[Usuarios] ([Idusu], [IdIdioma], [Usunom], [Usunick], [Usupass], [Usumail], [Usuestado], [UsubajaL], [UsuDVH]) VALUES (3, 1, N'Clientes', N'client', N'!#/)zW??C?JJ??', N'tom@gmail.com', 1, 1, 2)
INSERT [dbo].[Usuarios] ([Idusu], [IdIdioma], [Usunom], [Usunick], [Usupass], [Usumail], [Usuestado], [UsubajaL], [UsuDVH]) VALUES (4, 1, N'PRUEBA', N'itento', N'!#/)zW??C?JJ??', N'herasqgmail.com', 0, 0, 2)
INSERT [dbo].[Usuarios] ([Idusu], [IdIdioma], [Usunom], [Usunick], [Usupass], [Usumail], [Usuestado], [UsubajaL], [UsuDVH]) VALUES (8, 2, N'1111d', N'weee', N'!#/)zW??C?JJ??', N'tom@mail.com', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[Patente_Patente]  WITH CHECK ADD  CONSTRAINT [FK_patente_patente_Patente] FOREIGN KEY([id_patente_padre])
REFERENCES [dbo].[Patente] ([IdPat])
GO
ALTER TABLE [dbo].[Patente_Patente] CHECK CONSTRAINT [FK_patente_patente_Patente]
GO
ALTER TABLE [dbo].[Traduccion]  WITH CHECK ADD  CONSTRAINT [FK_Traduccion_Etiqueta] FOREIGN KEY([Id_Etiqueta])
REFERENCES [dbo].[Etiqueta] ([Id_Etiqueta])
GO
ALTER TABLE [dbo].[Traduccion] CHECK CONSTRAINT [FK_Traduccion_Etiqueta]
GO
ALTER TABLE [dbo].[Traduccion]  WITH CHECK ADD  CONSTRAINT [FK_Traduccion_Idioma] FOREIGN KEY([Id_Idioma])
REFERENCES [dbo].[Idioma] ([Id_Idioma])
GO
ALTER TABLE [dbo].[Traduccion] CHECK CONSTRAINT [FK_Traduccion_Idioma]
GO
ALTER TABLE [dbo].[Usuario_Patente]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Patente_Patente] FOREIGN KEY([IdPat])
REFERENCES [dbo].[Patente] ([IdPat])
GO
ALTER TABLE [dbo].[Usuario_Patente] CHECK CONSTRAINT [FK_Usuario_Patente_Patente]
GO
ALTER TABLE [dbo].[Usuario_Patente]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Patente_Usuarios] FOREIGN KEY([IdUsu])
REFERENCES [dbo].[Usuarios] ([Idusu])
GO
ALTER TABLE [dbo].[Usuario_Patente] CHECK CONSTRAINT [FK_Usuario_Patente_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[Change_Password]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Change_Password]
@user nvarchar(50)
as
begin
select Usupass from Usuarios
where Usunom = @user
end



GO
/****** Object:  StoredProcedure [dbo].[Editar_Traduccion]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Editar_Traduccion]
@Nombre nvarchar(50),@id int,@Trad nvarchar(50)
as
begin
UPDATE Traduccion
SET Traduccion.Traduccion = @Trad
FROM Traduccion t
INNER JOIN Idioma id
on t.Id_Idioma = id.Id_Idioma
where id.Nombre = @Nombre and Id_Etiqueta=@id 
end



GO
/****** Object:  StoredProcedure [dbo].[iner]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[iner]
as
begin
select t1.Idpat, t1.Patnom, t2.id_patente_hijo from Patente t1 inner join Patente_patente t2 on t1.IdPat=t2.id_patente_padre

end

GO
/****** Object:  StoredProcedure [dbo].[Insertar_Etiquetas]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insertar_Etiquetas]
@idI int,@idE int,@T nvarchar(50)
as
begin
insert into Traduccion
values (@idI,@idE,@T)
end



GO
/****** Object:  StoredProcedure [dbo].[Insertar_Idioma]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insertar_Idioma]
@nombre nvarchar(50),@default bit
as
begin
declare @UId int
SET @UId = (SELECT MAX(Id_Idioma) FROM Idioma)+1

    if @UId is null
        select @UId = 1
insert into Idioma
values(@UId,@nombre,@default)
end



GO
/****** Object:  StoredProcedure [dbo].[InsertarBitacora]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertarBitacora]
@NickUsuario nvarchar(50),@Fecha datetime,@Descripcion nvarchar(50),@Criticidad nvarchar(50)
as
begin
insert into Bitacora (NickUsuario,Fecha,Descripcion,Criticidad)
values (@NickUsuario,@Fecha,@Descripcion,@Criticidad)
END


GO
/****** Object:  StoredProcedure [dbo].[ListarBitacora]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ListarBitacora]
as
begin
select NickUsuario,Fecha,Descripcion,Criticidad from Bitacora
end


GO
/****** Object:  StoredProcedure [dbo].[ListarUsuarios]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListarUsuarios]
as
begin
select Idusu,UsuNom,UsuNick,UsuMail,UsuEstado,Usubajal,UsuDVH from Usuarios 
end



GO
/****** Object:  StoredProcedure [dbo].[ObtenerIdTraduccion]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ObtenerIdTraduccion]
@nombre nvarchar(50)
as
select Id_Etiqueta from Etiqueta
where Nombre=@nombre



GO
/****** Object:  StoredProcedure [dbo].[pat_flia]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pat_flia]
@id_padre int, @id_hijo int
as
begin
insert into Patente_Patente
values (@id_padre,@id_hijo)
end
GO
/****** Object:  StoredProcedure [dbo].[Search_User]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Search_User]
@usu varchar(50)
as
select IdUsu,UsuNick,UsuPass from Usuarios where UsuNick=@usu 



GO
/****** Object:  StoredProcedure [dbo].[update_password]    Script Date: 16/04/2024 16:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_password]
@user nvarchar(50),@pass nvarchar(50)
as
begin
UPDATE Usuarios
SET Usupass = @pass
where Usunom=@user
end

GO
USE [master]
GO
ALTER DATABASE [TPHBH] SET  READ_WRITE 
GO
