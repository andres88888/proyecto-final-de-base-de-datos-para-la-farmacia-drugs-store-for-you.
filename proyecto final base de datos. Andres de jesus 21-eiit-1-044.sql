USE [master]
GO
/****** Object:  Database [Farmacia]    Script Date: 22/04/2022 14:52:23 ******/
/****** Base de Datos de la Farmacia Drugs Store for you******/
/****** Andres de Jesus 21-eiit-1-044 ******/
CREATE DATABASE [Farmacia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Farmacia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Farmacia.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Farmacia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Farmacia_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Farmacia] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Farmacia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Farmacia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Farmacia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Farmacia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Farmacia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Farmacia] SET ARITHABORT OFF 
GO
ALTER DATABASE [Farmacia] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Farmacia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Farmacia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Farmacia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Farmacia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Farmacia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Farmacia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Farmacia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Farmacia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Farmacia] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Farmacia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Farmacia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Farmacia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Farmacia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Farmacia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Farmacia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Farmacia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Farmacia] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Farmacia] SET  MULTI_USER 
GO
ALTER DATABASE [Farmacia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Farmacia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Farmacia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Farmacia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Farmacia] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Farmacia] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Farmacia] SET QUERY_STORE = OFF
GO
USE [Farmacia]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 28/04/2022 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Nombre_Cliente] [varchar](20) NOT NULL,
	[Direccion] [varchar](20) NULL,
	[Telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/04/2022 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Empleadofa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Empleado] [varchar](20) NULL,
	[Dodigoid_Id] [int] NULL,
	[Puesto] [varchar](20) NULL,
	[Telefono] [varchar](20) NULL,
	[Salario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleadofa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 28/04/2022 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[Medicamentosfa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Tipo] [varchar](20) NULL,
	[Ubicacion] [int] NULL,
	[Fecha_Venc] [date] NULL,
	[Precio] [float] NULL,
	[Disponibilidad] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Medicamentosfa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ordenes]    Script Date: 28/04/2022 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordenes](
	[Nombre_Cliente] [varchar](20) NOT NULL,
	[Medicamento] [varchar](20) NULL,
	[Cantidad] [int] NULL,
	[Total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 28/04/2022 14:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Proveedorfa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Laboratorio] [varchar](30) NULL,
	[Telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Proveedorfa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'ANTHONIA SANTANA', N'URB.LOS MOLINAS #74', N'809-148-3565')
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'CARLO PEREZ', N'ENSACHE OZAMA#45', N'829-876-2487')
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'FAUSTO GOMEZ', N'LA CALETA #55', N'829-479-4218')
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'FRANCISCA RAMOS', N'C/ LEGER #65', N'809-659-5856')
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'ISAMAR DE JESUS', N'AV. CONSTITUCION #67', N'829-365-2589')
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'JOSE CORPORAN', N'LAS PRADERAS#2', N'849-952-9325')
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'MARIA TORRES', N'C/DUARTE#88', N'829-375-6451')
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'MASIEL DELGADO', N'URB. LAS ORQUIDEAS#3', N' 809-658-4136')
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'MIGUEL VARGAS', N'C/QUISQUELLA #6', N'809432-0210')
INSERT [dbo].[Clientes] ([Nombre_Cliente], [Direccion], [Telefono]) VALUES (N'PEDROS RIVERA', N'SANTE1#8', N'809-698-5012')
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (1, N'ANDRES DE JESUS', 110, N'GERENTE', N'809-565-3698', 40000)
INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (2, N'STARLIN CORPORAN', 116, N'VENDEDOR', N'809-356-8574', 20000)
INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (3, N'EVA CASTRO', 255, N'VENDEDORA', N'809654-4789', 20000)
INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (4, N'ROBIN CUEVA', 267, N'VENDEDOR', N'809-654-3348', 20500)
INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (5, N'RAFAEL CANO', 298, N'SEGURIDAD', N'829735-1986', 22300)
INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (6, N'ANDRES LUCIANO', 355, N'ALMACEN', N'829-639-7865', 18000)
INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (7, N'JUNIOR VALDES', 374, N'ALMACEN', N'809-485-6541', 18000)
INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (8, N'CARMEN AQUINO', 311, N'LINPIEZA', N'809-654-7531', 14200)
INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (9, N'ROSA PAYANO', 366, N'LIMPIEZA', N'809-379-4186', 15000)
INSERT [dbo].[Empleados] ([Empleadofa], [Nombre_Empleado], [Dodigoid_Id], [Puesto], [Telefono], [Salario]) VALUES (10, N'ANDERSON MOJICA', 234, N'REPARTIDOR', N'809-658-9785', 16500)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicamentos] ON 

INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (1, N'Enantyum', N'Pastilla', 22, CAST(N'2024-12-10' AS Date), 500, N'Si')
INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (2, N'Sintrom', N'Jarable', 458, CAST(N'2023-11-25' AS Date), 1200, N'Si')
INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (3, N'Lexatin', N'Jarable', 23, CAST(N'2022-09-18' AS Date), 1000, N'Si')
INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (4, N'Orfidal', N'Pastilla', 69, CAST(N'2023-02-01' AS Date), 680, N'No')
INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (5, N'Paracetamol Cinfa', N'Pastilla', 65, CAST(N'2025-06-15' AS Date), 600, N'Si')
INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (6, N'Amlodipina', N'JARABE', 15, CAST(N'2023-04-24' AS Date), 350, N'SI')
INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (7, N'Metformina', N'PASTILLA', 17, CAST(N'2023-01-20' AS Date), 400, N'SI')
INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (8, N'Omeprazol', N'PASTILLA', 19, CAST(N'2024-03-18' AS Date), 1800, N'SI')
INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (9, N'Salbutamol', N'JARABE', 242, CAST(N'2023-03-29' AS Date), 800, N'SI')
INSERT [dbo].[Medicamentos] ([Medicamentosfa], [Nombre], [Tipo], [Ubicacion], [Fecha_Venc], [Precio], [Disponibilidad]) VALUES (10, N'Atorvastatina', N'PASTILLA', 135, CAST(N'2022-12-23' AS Date), 430, N'SI')
SET IDENTITY_INSERT [dbo].[Medicamentos] OFF
GO
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'ANTHONIA SANTANA', N'Lexatin', 1, 1000)
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'CARLO PEREZ', N'Atorvastatina', 6, 260)
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'FAUSTO GOMEZ', N'Omeprazol', 5, 1800)
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'FRANCISCA RAMOS', N'Omeprazol', 5, 300)
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'ISAMAR DE JESUS', N'Enantyum', 5, 250)
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'JOSE CORPORAN', N'Sintrom', 1, 1200)
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'MARIA TORRES', N'Amlodipina', 1, 350)
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'MASIEL DELGADO', N'Paracetamol Cinfa', 2, 80)
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'MIGUEL VARGAS', N'Metformina', 4, 400)
INSERT [dbo].[Ordenes] ([Nombre_Cliente], [Medicamento], [Cantidad], [Total]) VALUES (N'PEDROS RIVERA', N'Salbutamol', 1, 800)
GO
SET IDENTITY_INSERT [dbo].[Proveedor] ON 

INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (1, N'ubiopharma', N'BAYER, S.A', N'8098505459')
INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (2, N'Farmanova', N'Acromax Dominicana', N'829865895')
INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (3, N'Pharmagenus', N'Laboratorios Alfa', N'8095465258')
INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (4, N'Combix', N'Laboratorios Rowe', N'8294577894')
INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (5, N'Edifa', N'Genéricos del Caribe, SRL', N'8096544522')
INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (6, N'Farmacéutica Caribe', N'Laboratorios Sued', N'8095468541')
INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (7, N'Pediatrics Pharma', N'Laboratorios Rangel,', N'8092567532')
INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (8, N'Group PG, C.A.', N'Laboratorio San Luis', N'8096543212')
INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (9, N'Neofarma', N'Laboratorios Suiphar', N'8096548525')
INSERT [dbo].[Proveedor] ([Proveedorfa], [Nombre], [Laboratorio], [Telefono]) VALUES (10, N'Biogalenic C.A.', N'Laboratorios Rowe', N'8293984568')
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
GO
ALTER TABLE [dbo].[Ordenes]  WITH CHECK ADD  CONSTRAINT [FK_Ordenes_Clientes] FOREIGN KEY([Nombre_Cliente])
REFERENCES [dbo].[Clientes] ([Nombre_Cliente])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ordenes] CHECK CONSTRAINT [FK_Ordenes_Clientes]
GO
USE [master]
GO
ALTER DATABASE [Farmacia] SET  READ_WRITE 
GO
