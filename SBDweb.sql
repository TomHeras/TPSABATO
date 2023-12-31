USE [master]
GO
/****** Object:  Database [TPMODELOS]    Script Date: 14/07/2023 19:54:45 ******/
CREATE DATABASE [TPMODELOS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPMODELOS', FILENAME = N'D:\MSSQL12.TOOM\MSSQL\DATA\TPMODELOS.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TPMODELOS_log', FILENAME = N'D:\MSSQL12.TOOM\MSSQL\DATA\TPMODELOS_log.ldf' , SIZE = 625792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TPMODELOS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPMODELOS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPMODELOS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPMODELOS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPMODELOS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPMODELOS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPMODELOS] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPMODELOS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPMODELOS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPMODELOS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPMODELOS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPMODELOS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPMODELOS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPMODELOS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPMODELOS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPMODELOS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPMODELOS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TPMODELOS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPMODELOS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPMODELOS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPMODELOS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPMODELOS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPMODELOS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPMODELOS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPMODELOS] SET RECOVERY FULL 
GO
ALTER DATABASE [TPMODELOS] SET  MULTI_USER 
GO
ALTER DATABASE [TPMODELOS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPMODELOS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPMODELOS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPMODELOS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TPMODELOS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPMODELOS', N'ON'
GO
USE [TPMODELOS]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 14/07/2023 19:54:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID_clientes] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[direccion] [nvarchar](50) NULL,
	[telefono] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ID_clientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estados]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  Table [dbo].[Patente]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  Table [dbo].[Patente_Patente]    Script Date: 14/07/2023 19:54:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patente_Patente](
	[id_patente_padre] [int] NULL,
	[id_patente_hijo] [int] NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[proveedores]    Script Date: 14/07/2023 19:54:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[ID_proveedor] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[direccion] [nvarchar](50) NULL,
	[telefono] [int] NULL
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Traduccion]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  Table [dbo].[Usuario_Patente]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 14/07/2023 19:54:45 ******/
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
	[Idusu] ASC,
	[Usunick] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
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
/****** Object:  StoredProcedure [dbo].[altacliente]    Script Date: 14/07/2023 19:54:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Altausuario2]
@Ididioma int, @Usunom nvarchar(50), @Usunick nvarchar(50), @Usupass nvarchar(50), @Usumail nvarchar(50), @Usuestado bit, @UsubajaL bit, @UsuDVH int
as
begin
declare @Usuid int
SET @Usuid = (SELECT MAX(Idusu) FROM Usuarios)+1

    if @Usuid is null
        select @Usuid = 1

insert into Usuarios
Values(@Ididioma,@Usunom,@Usunick,@Usupass, @Usumail,@Usuestado, @UsubajaL,@UsuDVH)
end
GO
/****** Object:  StoredProcedure [dbo].[Bajaclientes]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  StoredProcedure [dbo].[Editar_Traduccion]    Script Date: 14/07/2023 19:54:45 ******/
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



/****** Object:  StoredProcedure [dbo].[iner]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  StoredProcedure [dbo].[Insertar_Etiquetas]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  StoredProcedure [dbo].[Insertar_Idioma]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarBitacora]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  StoredProcedure [dbo].[Listadeusuarios]    Script Date: 14/07/2023 19:54:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




/****** Object:  StoredProcedure [dbo].[ListarBitacora]    Script Date: 14/07/2023 19:54:45 ******/
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




/****** Object:  StoredProcedure [dbo].[ObtenerIdTraduccion]    Script Date: 14/07/2023 19:54:45 ******/
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
/****** Object:  StoredProcedure [dbo].[Search_User]    Script Date: 14/07/2023 19:54:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Search_User]
@usu varchar(50)
as
select IdUsu,UsuNick,UsuPass from Usuarios where UsuNick=@usu 


GO
/****** Object:  StoredProcedure [dbo].[update_password]    Script Date: 14/07/2023 19:54:45 ******/
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

