USE [master]
GO
/****** Object:  Database [TP-20192C]    Script Date: 9/24/2019 9:23:33 PM ******/
CREATE DATABASE [TP-20192C]
ALTER DATABASE [TP-20192C] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP-20192C].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP-20192C] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP-20192C] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP-20192C] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP-20192C] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP-20192C] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP-20192C] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TP-20192C] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP-20192C] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP-20192C] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP-20192C] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP-20192C] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP-20192C] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP-20192C] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP-20192C] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP-20192C] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TP-20192C] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP-20192C] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP-20192C] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP-20192C] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP-20192C] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP-20192C] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP-20192C] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP-20192C] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TP-20192C] SET  MULTI_USER 
GO
ALTER DATABASE [TP-20192C] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP-20192C] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP-20192C] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP-20192C] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TP-20192C] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TP-20192C]
GO
/****** Object:  Table [dbo].[Denuncias]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Denuncias](
	[IdDenuncia] [int] IDENTITY(1,1) NOT NULL,
	[IdPropuesta] [int] NOT NULL,
	[IdMotivo] [int] NOT NULL,
	[Comentarios] [nvarchar](300) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Denuncias] PRIMARY KEY CLUSTERED 
(
	[IdDenuncia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonacionesHorasTrabajo]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonacionesHorasTrabajo](
	[IdDonacionHorasTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[IdPropuestaDonacionHorasTrabajo] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_DonacionesHorasTrabajo] PRIMARY KEY CLUSTERED 
(
	[IdDonacionHorasTrabajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonacionesInsumos]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonacionesInsumos](
	[IdDonacionInsumo] [int] IDENTITY(1,1) NOT NULL,
	[IdPropuestaDonacionInsumo] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_DonacionesInsumos] PRIMARY KEY CLUSTERED 
(
	[IdDonacionInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonacionesMonetarias]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonacionesMonetarias](
	[IdDonacionMonetaria] [int] IDENTITY(1,1) NOT NULL,
	[IdPropuestaDonacionMonetaria] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Dinero] [decimal](18, 2) NOT NULL,
	[ArchivoTransferencia] [nvarchar](200) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
 CONSTRAINT [PK_DonacionesMonetarias] PRIMARY KEY CLUSTERED 
(
	[IdDonacionMonetaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Propuestas]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propuestas](
	[IdPropuesta] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[TelefonoContacto] [nvarchar](30) NOT NULL,
	[TipoDonacion] [int] NOT NULL,
	[Foto] [nvarchar](100) NOT NULL,
	[IdUsuarioCreador] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Valoracion] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Propuestas] PRIMARY KEY CLUSTERED 
(
	[IdPropuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PropuestasDonacionesHorasTrabajo]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropuestasDonacionesHorasTrabajo](
	[IdPropuestaDonacionHorasTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[IdPropuesta] [int] NOT NULL,
	[CantidadHoras] [int] NOT NULL,
	[Profesion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PropuestasDonacionesHorasTrabajo] PRIMARY KEY CLUSTERED 
(
	[IdPropuestaDonacionHorasTrabajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PropuestasDonacionesInsumos]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropuestasDonacionesInsumos](
	[IdPropuestaDonacionInsumo] [int] IDENTITY(1,1) NOT NULL,
	[IdPropuesta] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_PropuestasDonacionesInsumos] PRIMARY KEY CLUSTERED 
(
	[IdPropuestaDonacionInsumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PropuestasDonacionesMonetarias]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropuestasDonacionesMonetarias](
	[IdPropuestaDonacionMonetaria] [int] IDENTITY(1,1) NOT NULL,
	[IdPropuesta] [int] NOT NULL,
	[Dinero] [decimal](18, 2) NOT NULL,
	[CBU] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_PropuestasDonacionesMonetarias] PRIMARY KEY CLUSTERED 
(
	[IdPropuestaDonacionMonetaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PropuestasReferencias]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropuestasReferencias](
	[IdReferencia] [int] IDENTITY(1,1) NOT NULL,
	[IdPropuesta] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Telefono] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PropuestasReferencias] PRIMARY KEY CLUSTERED 
(
	[IdReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PropuestasValoraciones]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropuestasValoraciones](
	[IdValoracion] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdPropuesta] [int] NOT NULL,
	[Valoracion] [bit] NOT NULL,
 CONSTRAINT [PK_PropuestasValoraciones] PRIMARY KEY CLUSTERED 
(
	[IdValoracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 9/24/2019 9:23:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[UserName] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Foto] [nvarchar](100) NULL,
	[TipoUsuario] [int] NOT NULL,
	[FechaCracion] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
	[Token] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].MotivoDenuncia(
IdMotivoDenuncia int not null,
Descripcion varchar(30) not null,
CONSTRAINT PK_MotivoDenuncia PRIMARY KEY(IdMotivoDenuncia)
)
GO

ALTER TABLE [dbo].[Propuestas] ADD  DEFAULT ((0)) FOR [Valoracion]
GO
ALTER TABLE [dbo].[Denuncias]  WITH CHECK ADD  CONSTRAINT [FK_Denuncias_Propuestas] FOREIGN KEY([IdPropuesta])
REFERENCES [dbo].[Propuestas] ([IdPropuesta])
GO
ALTER TABLE [dbo].[Denuncias] CHECK CONSTRAINT [FK_Denuncias_Propuestas]
GO
ALTER TABLE [dbo].[Denuncias]  WITH CHECK ADD  CONSTRAINT [FK_Denuncias_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Denuncias] CHECK CONSTRAINT [FK_Denuncias_Usuarios]
GO
ALTER TABLE [dbo].[DonacionesHorasTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DonacionesHorasTrabajo_PropuestasDonacionesHorasTrabajo] FOREIGN KEY([IdPropuestaDonacionHorasTrabajo])
REFERENCES [dbo].[PropuestasDonacionesHorasTrabajo] ([IdPropuestaDonacionHorasTrabajo])
GO
ALTER TABLE [dbo].[DonacionesHorasTrabajo] CHECK CONSTRAINT [FK_DonacionesHorasTrabajo_PropuestasDonacionesHorasTrabajo]
GO
ALTER TABLE [dbo].[DonacionesHorasTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_DonacionesHorasTrabajo_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[DonacionesHorasTrabajo] CHECK CONSTRAINT [FK_DonacionesHorasTrabajo_Usuarios]
GO
ALTER TABLE [dbo].[DonacionesInsumos]  WITH CHECK ADD  CONSTRAINT [FK_DonacionesInsumos_PropuestasDonacionesInsumos] FOREIGN KEY([IdPropuestaDonacionInsumo])
REFERENCES [dbo].[PropuestasDonacionesInsumos] ([IdPropuestaDonacionInsumo])
GO
ALTER TABLE [dbo].[DonacionesInsumos] CHECK CONSTRAINT [FK_DonacionesInsumos_PropuestasDonacionesInsumos]
GO
ALTER TABLE [dbo].[DonacionesInsumos]  WITH CHECK ADD  CONSTRAINT [FK_DonacionesInsumos_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[DonacionesInsumos] CHECK CONSTRAINT [FK_DonacionesInsumos_Usuarios]
GO
ALTER TABLE [dbo].[DonacionesMonetarias]  WITH CHECK ADD  CONSTRAINT [FK_DonacionesMonetarias_PropuestasDonacionesMonetarias] FOREIGN KEY([IdPropuestaDonacionMonetaria])
REFERENCES [dbo].[PropuestasDonacionesMonetarias] ([IdPropuestaDonacionMonetaria])
GO
ALTER TABLE [dbo].[DonacionesMonetarias] CHECK CONSTRAINT [FK_DonacionesMonetarias_PropuestasDonacionesMonetarias]
GO
ALTER TABLE [dbo].[DonacionesMonetarias]  WITH CHECK ADD  CONSTRAINT [FK_DonacionesMonetarias_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[DonacionesMonetarias] CHECK CONSTRAINT [FK_DonacionesMonetarias_Usuarios]
GO
ALTER TABLE [dbo].[Propuestas]  WITH CHECK ADD  CONSTRAINT [FK_Propuestas_Usuarios] FOREIGN KEY([IdUsuarioCreador])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Propuestas] CHECK CONSTRAINT [FK_Propuestas_Usuarios]
GO
ALTER TABLE [dbo].[PropuestasDonacionesHorasTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_PropuestasDonacionesHorasTrabajo_Propuestas] FOREIGN KEY([IdPropuesta])
REFERENCES [dbo].[Propuestas] ([IdPropuesta])
GO
ALTER TABLE [dbo].[PropuestasDonacionesHorasTrabajo] CHECK CONSTRAINT [FK_PropuestasDonacionesHorasTrabajo_Propuestas]
GO
ALTER TABLE [dbo].[PropuestasDonacionesInsumos]  WITH CHECK ADD  CONSTRAINT [FK_PropuestasDonacionesInsumos_Propuestas] FOREIGN KEY([IdPropuesta])
REFERENCES [dbo].[Propuestas] ([IdPropuesta])
GO
ALTER TABLE [dbo].[PropuestasDonacionesInsumos] CHECK CONSTRAINT [FK_PropuestasDonacionesInsumos_Propuestas]
GO
ALTER TABLE [dbo].[PropuestasDonacionesMonetarias]  WITH CHECK ADD  CONSTRAINT [FK_PropuestasDonacionesMonetarias_Propuestas] FOREIGN KEY([IdPropuesta])
REFERENCES [dbo].[Propuestas] ([IdPropuesta])
GO
ALTER TABLE [dbo].[PropuestasDonacionesMonetarias] CHECK CONSTRAINT [FK_PropuestasDonacionesMonetarias_Propuestas]
GO
ALTER TABLE [dbo].[PropuestasReferencias]  WITH CHECK ADD  CONSTRAINT [FK_PropuestasReferencias_Propuestas] FOREIGN KEY([IdPropuesta])
REFERENCES [dbo].[Propuestas] ([IdPropuesta])
GO
ALTER TABLE [dbo].[PropuestasReferencias] CHECK CONSTRAINT [FK_PropuestasReferencias_Propuestas]
GO
ALTER TABLE [dbo].[PropuestasValoraciones]  WITH CHECK ADD  CONSTRAINT [FK_PropuestasValoraciones_Propuestas] FOREIGN KEY([IdPropuesta])
REFERENCES [dbo].[Propuestas] ([IdPropuesta])
GO
ALTER TABLE [dbo].[PropuestasValoraciones] CHECK CONSTRAINT [FK_PropuestasValoraciones_Propuestas]
GO
ALTER TABLE [dbo].[PropuestasValoraciones]  WITH CHECK ADD  CONSTRAINT [FK_PropuestasValoraciones_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[PropuestasValoraciones] CHECK CONSTRAINT [FK_PropuestasValoraciones_Usuarios]
GO
USE [master]
GO
ALTER DATABASE [TP-20192C] SET  READ_WRITE 
GO

USE [TP-20192C]
GO

ALTER TABLE Denuncias ADD CONSTRAINT FK_Denuncia_MotivoDenuncia FOREIGN KEY (IdMotivo) references MotivoDenuncia (IdMotivoDenuncia)
GO