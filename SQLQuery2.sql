USE [master]
GO
/****** Object:  Database [AcadDB(aggd0001)]    Script Date: 6/17/2026 10:12:23 PM ******/
CREATE DATABASE [AcadDB(aggd0001)]
 CONTAINMENT = NONE
GO
ALTER DATABASE [AcadDB(aggd0001)] SET COMPATIBILITY_LEVEL = 170
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AcadDB(aggd0001)].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AcadDB(aggd0001)] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET ARITHABORT OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET RECOVERY FULL 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET  MULTI_USER 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AcadDB(aggd0001)] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET OPTIMIZED_LOCKING = OFF 
GO
ALTER DATABASE [AcadDB(aggd0001)] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AcadDB(aggd0001)] SET QUERY_STORE = ON
GO
ALTER DATABASE [AcadDB(aggd0001)] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AcadDB(aggd0001)]
GO
/****** Object:  Table [dbo].[Asignatura]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignatura](
	[Código] [nchar](8) NOT NULL,
	[Nombre] [nchar](30) NULL,
	[Créditos] [tinyint] NULL,
	[Horas_Teóricas] [tinyint] NULL,
	[Horas_Prácticas] [tinyint] NULL,
 CONSTRAINT [PK_Asignatura] PRIMARY KEY CLUSTERED 
(
	[Código] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[Id_Carrera] [nchar](5) NOT NULL,
	[Nombre_Carrera] [nchar](10) NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[Id_Carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoría de Pago]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoría de Pago](
	[Id_Cat_Pago] [nchar](3) NOT NULL,
	[Descripción] [nchar](80) NULL,
 CONSTRAINT [PK_Categoría de Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Cat_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Día Semana]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Día Semana](
	[Día] [tinyint] NOT NULL,
	[Descripción] [nchar](9) NULL,
	[Nombre_Corto] [nchar](2) NULL,
 CONSTRAINT [PK_Día Semana] PRIMARY KEY CLUSTERED 
(
	[Día] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[Id] [nchar](8) NOT NULL,
	[Nombre] [nchar](25) NULL,
	[Apellido] [nchar](20) NULL,
	[Id_Carrera] [nchar](5) NULL,
	[Id_Cat_Pago] [nchar](3) NULL,
	[Id_Nacionalidad] [nchar](3) NULL,
	[Dirección] [nchar](200) NULL,
 CONSTRAINT [PK_Estudiante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[Código_Período] [nchar](10) NOT NULL,
	[Código_Asignatura] [nchar](8) NOT NULL,
	[Número_Grupo] [nchar](4) NOT NULL,
	[Cupo_Grupo] [int] NULL,
	[Horario] [nchar](60) NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[Código_Período] ASC,
	[Código_Asignatura] ASC,
	[Número_Grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupos Inscrito]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupos Inscrito](
	[Código_Período] [nchar](10) NOT NULL,
	[Id_Estudiante] [nchar](8) NOT NULL,
	[Código_Asignatura] [nchar](8) NOT NULL,
	[Número_Grupo] [nchar](4) NOT NULL,
 CONSTRAINT [PK_Grupos Inscrito] PRIMARY KEY CLUSTERED 
(
	[Código_Período] ASC,
	[Id_Estudiante] ASC,
	[Código_Asignatura] ASC,
	[Número_Grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario Grupo]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario Grupo](
	[Código_Período] [nchar](10) NOT NULL,
	[Código_Asignatura] [nchar](8) NOT NULL,
	[Número_Grupo] [nchar](4) NOT NULL,
	[Día] [tinyint] NOT NULL,
	[Hora_Inicio] [time](7) NOT NULL,
	[Hora_Fin] [time](7) NULL,
 CONSTRAINT [PK_Horario Grupo] PRIMARY KEY CLUSTERED 
(
	[Código_Período] ASC,
	[Código_Asignatura] ASC,
	[Número_Grupo] ASC,
	[Día] ASC,
	[Hora_Inicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripción]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripción](
	[Código_Período] [nchar](10) NOT NULL,
	[Id_Estudiante] [nchar](8) NOT NULL,
	[Fecha_Inscripción] [date] NULL,
 CONSTRAINT [PK_Inscripción] PRIMARY KEY CLUSTERED 
(
	[Código_Período] ASC,
	[Id_Estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidad]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidad](
	[Id_Nacionalidad] [nchar](3) NOT NULL,
	[Nombre] [nchar](30) NULL,
 CONSTRAINT [PK_Nacionalidad] PRIMARY KEY CLUSTERED 
(
	[Id_Nacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Período Académico]    Script Date: 6/17/2026 10:12:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Período Académico](
	[Código] [nchar](10) NOT NULL,
	[Descripción] [nchar](25) NULL,
	[Fecha_Lim_Prematrícula] [date] NULL,
	[Fecha_Lim_Retiro] [date] NULL,
	[Fecha_Lim_Publicación] [date] NULL,
 CONSTRAINT [PK_Período Académico] PRIMARY KEY CLUSTERED 
(
	[Código] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'ART-101 ', N'Apreciacion Artistica         ', 2, 2, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'BIO-101P', N'Lab Biologia General          ', 1, 0, 2)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'BIO-101T', N'Biologia General              ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'DEP-101 ', N'Deporte                       ', 1, 0, 2)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'ECO-101 ', N'Intro a la Economia           ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'ESP-101 ', N'Letras I                      ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'ESP-102 ', N'Letras II                     ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'FIL-101 ', N'Filosofia                     ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'FIS-101P', N'Lab Fisica General I          ', 1, 0, 2)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'FIS-101T', N'Fisica General I              ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'HIS-101 ', N'Historia Dominicana           ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'ING-101 ', N'Ingles I                      ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'ING-102 ', N'Ingles II                     ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'ITI-101P', N'Lab Intro a Programacion      ', 1, 0, 2)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'ITI-101T', N'Intro a la Programacion       ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'MAT-101 ', N'Calculo I                     ', 4, 4, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'MAT-102 ', N'Calculo II                    ', 4, 4, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'QUI-101P', N'Lab Quimica I                 ', 1, 0, 2)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'QUI-101T', N'Quimica I                     ', 3, 3, 0)
GO
INSERT [dbo].[Asignatura] ([Código], [Nombre], [Créditos], [Horas_Teóricas], [Horas_Prácticas]) VALUES (N'SOC-101 ', N'Sociologia                    ', 3, 3, 0)
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'ADM  ', N'Empresas  ')
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'ARQ  ', N'Arquitect.')
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'CIV  ', N'Civil     ')
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'CON  ', N'Contab.   ')
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'DER  ', N'Derecho   ')
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'IND  ', N'Industrial')
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'ISC  ', N'Sistemas  ')
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'MED  ', N'Medicina  ')
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'MER  ', N'Mercadeo  ')
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre_Carrera]) VALUES (N'PSI  ', N'Psicología')
GO
INSERT [dbo].[Categoría de Pago] ([Id_Cat_Pago], [Descripción]) VALUES (N'BEC', N'Becado Completo                                                                 ')
GO
INSERT [dbo].[Categoría de Pago] ([Id_Cat_Pago], [Descripción]) VALUES (N'C-A', N'Categoria A - Credito Regular                                                   ')
GO
INSERT [dbo].[Categoría de Pago] ([Id_Cat_Pago], [Descripción]) VALUES (N'C-B', N'Categoria B - Credito con Descuento                                             ')
GO
INSERT [dbo].[Categoría de Pago] ([Id_Cat_Pago], [Descripción]) VALUES (N'C-C', N'Categoria C - Empleados                                                         ')
GO
INSERT [dbo].[Categoría de Pago] ([Id_Cat_Pago], [Descripción]) VALUES (N'MDB', N'Medio Becado                                                                    ')
GO
INSERT [dbo].[Día Semana] ([Día], [Descripción], [Nombre_Corto]) VALUES (1, N'Lunes    ', N'Lu')
GO
INSERT [dbo].[Día Semana] ([Día], [Descripción], [Nombre_Corto]) VALUES (2, N'Martes   ', N'Ma')
GO
INSERT [dbo].[Día Semana] ([Día], [Descripción], [Nombre_Corto]) VALUES (3, N'Miercoles', N'Mi')
GO
INSERT [dbo].[Día Semana] ([Día], [Descripción], [Nombre_Corto]) VALUES (4, N'Jueves   ', N'Ju')
GO
INSERT [dbo].[Día Semana] ([Día], [Descripción], [Nombre_Corto]) VALUES (5, N'Viernes  ', N'Vi')
GO
INSERT [dbo].[Día Semana] ([Día], [Descripción], [Nombre_Corto]) VALUES (6, N'Sabado   ', N'Sa')
GO
INSERT [dbo].[Día Semana] ([Día], [Descripción], [Nombre_Corto]) VALUES (7, N'Domingo  ', N'Do')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260001', N'Carlos                   ', N'Perez               ', N'ISC  ', N'C-A', N'DOM', N'Calle 1, Santiago                                                                                                                                                                                       ')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260002', N'Maria                    ', N'Gomez               ', N'IND  ', N'BEC', N'DOM', N'Avenida Central, Santiago                                                                                                                                                                               ')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260003', N'Juan                     ', N'Rodriguez           ', N'MED  ', N'C-B', N'ESP', N'Los Jardines, Santiago                                                                                                                                                                                  ')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260004', N'Laura                    ', N'Fernandez           ', N'DER  ', N'C-A', N'MEX', N'Ensanche Bolivar, Santiago                                                                                                                                                                              ')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260005', N'Jose                     ', N'Martinez            ', N'ARQ  ', N'MDB', N'DOM', N'Villa Olga, Santiago                                                                                                                                                                                    ')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260006', N'Ana                      ', N'Lopez               ', N'ADM  ', N'C-A', N'USA', N'Cerros de Gurabo, Santiago                                                                                                                                                                              ')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260007', N'Luis                     ', N'Gonzalez            ', N'PSI  ', N'C-C', N'COL', N'La Trinitaria, Santiago                                                                                                                                                                                 ')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260008', N'Marta                    ', N'Diaz                ', N'CON  ', N'BEC', N'DOM', N'Pueblo Nuevo, Santiago                                                                                                                                                                                  ')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260009', N'Pedro                    ', N'Hernandez           ', N'MER  ', N'C-B', N'VEN', N'El Embrujo, Santiago                                                                                                                                                                                    ')
GO
INSERT [dbo].[Estudiante] ([Id], [Nombre], [Apellido], [Id_Carrera], [Id_Cat_Pago], [Id_Nacionalidad], [Dirección]) VALUES (N'20260010', N'Sofia                    ', N'Ruiz                ', N'CIV  ', N'C-A', N'DOM', N'Los Alamos, Santiago                                                                                                                                                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'DEP-101 ', N'001 ', 40, N'16-18 Sa                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'ESP-101 ', N'001 ', 30, N'10-13 L                                                     ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'FIS-101P', N'001 ', 15, N'14-16 Vi                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'FIS-101P', N'002 ', 15, N'16-18 Vi                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'FIS-101T', N'001 ', 30, N'14-16 LMi                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'FIS-101T', N'002 ', 30, N'16-18 MaJ                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'HIS-101 ', N'001 ', 35, N'08-11 Sa                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'ING-101 ', N'001 ', 20, N'18-20 MaJ                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'ITI-101P', N'001 ', 25, N'08-10 Vi                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'ITI-101P', N'002 ', 25, N'10-12 Vi                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'ITI-101T', N'001 ', 25, N'18-20 LMi                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'ITI-101T', N'002 ', 25, N'08-10 MaJ                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'MAT-101 ', N'001 ', 35, N'08-10 LMi                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'MAT-101 ', N'002 ', 35, N'10-12 MaJ                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20252026-3', N'SOC-101 ', N'001 ', 30, N'14-17 Ma                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'ART-101 ', N'001 ', 25, N'14-16 L                                                     ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'BIO-101P', N'001 ', 15, N'10-12 Vi                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'BIO-101T', N'001 ', 30, N'08-10 MaJ                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'ECO-101 ', N'001 ', 35, N'16-18 LMi                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'ESP-102 ', N'001 ', 30, N'08-11 Sa                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'FIL-101 ', N'001 ', 30, N'16-18 MaJ                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'ING-102 ', N'001 ', 20, N'18-20 MaJ                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'MAT-102 ', N'001 ', 35, N'08-10 LMi                                                   ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'QUI-101P', N'001 ', 15, N'14-16 Vi                                                    ')
GO
INSERT [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Cupo_Grupo], [Horario]) VALUES (N'20262027-1', N'QUI-101T', N'001 ', 30, N'10-12 LMi                                                   ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260001', N'ESP-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260001', N'FIS-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260001', N'FIS-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260001', N'ITI-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260001', N'ITI-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260002', N'ESP-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260002', N'FIS-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260002', N'FIS-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260002', N'ITI-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260002', N'ITI-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260003', N'FIS-101P', N'002 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260003', N'FIS-101T', N'002 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260003', N'ITI-101P', N'002 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260003', N'ITI-101T', N'002 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260003', N'SOC-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260004', N'FIS-101P', N'002 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260004', N'FIS-101T', N'002 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260004', N'ITI-101P', N'002 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260004', N'ITI-101T', N'002 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260004', N'SOC-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260005', N'ESP-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260005', N'FIS-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260005', N'FIS-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260005', N'ITI-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20252026-3', N'20260005', N'ITI-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260006', N'BIO-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260006', N'BIO-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260006', N'ECO-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260006', N'QUI-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260006', N'QUI-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260007', N'BIO-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260007', N'BIO-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260007', N'ECO-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260007', N'QUI-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260007', N'QUI-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260008', N'BIO-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260008', N'BIO-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260008', N'FIL-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260008', N'QUI-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260008', N'QUI-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260009', N'BIO-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260009', N'BIO-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260009', N'FIL-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260009', N'QUI-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260009', N'QUI-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260010', N'BIO-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260010', N'BIO-101T', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260010', N'ECO-101 ', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260010', N'QUI-101P', N'001 ')
GO
INSERT [dbo].[Grupos Inscrito] ([Código_Período], [Id_Estudiante], [Código_Asignatura], [Número_Grupo]) VALUES (N'20262027-1', N'20260010', N'QUI-101T', N'001 ')
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'DEP-101 ', N'001 ', 6, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'ESP-101 ', N'001 ', 1, CAST(N'10:00:00' AS Time), CAST(N'13:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'FIS-101P', N'001 ', 5, CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'FIS-101P', N'002 ', 5, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'FIS-101T', N'001 ', 1, CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'FIS-101T', N'001 ', 3, CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'FIS-101T', N'002 ', 2, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'FIS-101T', N'002 ', 4, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'HIS-101 ', N'001 ', 6, CAST(N'08:00:00' AS Time), CAST(N'11:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'ING-101 ', N'001 ', 2, CAST(N'18:00:00' AS Time), CAST(N'20:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'ING-101 ', N'001 ', 4, CAST(N'18:00:00' AS Time), CAST(N'20:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'ITI-101P', N'001 ', 5, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'ITI-101P', N'002 ', 5, CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'ITI-101T', N'001 ', 1, CAST(N'18:00:00' AS Time), CAST(N'20:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'ITI-101T', N'001 ', 3, CAST(N'18:00:00' AS Time), CAST(N'20:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'ITI-101T', N'002 ', 2, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'ITI-101T', N'002 ', 4, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'MAT-101 ', N'001 ', 1, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'MAT-101 ', N'001 ', 3, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'MAT-101 ', N'002 ', 2, CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'MAT-101 ', N'002 ', 4, CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20252026-3', N'SOC-101 ', N'001 ', 2, CAST(N'14:00:00' AS Time), CAST(N'17:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'ART-101 ', N'001 ', 1, CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'BIO-101P', N'001 ', 5, CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'BIO-101T', N'001 ', 2, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'BIO-101T', N'001 ', 4, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'ECO-101 ', N'001 ', 1, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'ECO-101 ', N'001 ', 3, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'ESP-102 ', N'001 ', 6, CAST(N'08:00:00' AS Time), CAST(N'11:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'FIL-101 ', N'001 ', 2, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'FIL-101 ', N'001 ', 4, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'ING-102 ', N'001 ', 2, CAST(N'18:00:00' AS Time), CAST(N'20:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'ING-102 ', N'001 ', 4, CAST(N'18:00:00' AS Time), CAST(N'20:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'MAT-102 ', N'001 ', 1, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'MAT-102 ', N'001 ', 3, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'QUI-101P', N'001 ', 5, CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'QUI-101T', N'001 ', 1, CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[Horario Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo], [Día], [Hora_Inicio], [Hora_Fin]) VALUES (N'20262027-1', N'QUI-101T', N'001 ', 3, CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20252026-3', N'20260001', CAST(N'2026-04-10' AS Date))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20252026-3', N'20260002', CAST(N'2026-04-10' AS Date))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20252026-3', N'20260003', CAST(N'2026-04-11' AS Date))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20252026-3', N'20260004', CAST(N'2026-04-11' AS Date))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20252026-3', N'20260005', CAST(N'2026-04-12' AS Date))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20262027-1', N'20260006', CAST(N'2026-08-10' AS Date))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20262027-1', N'20260007', CAST(N'2026-08-10' AS Date))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20262027-1', N'20260008', CAST(N'2026-08-11' AS Date))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20262027-1', N'20260009', CAST(N'2026-08-11' AS Date))
GO
INSERT [dbo].[Inscripción] ([Código_Período], [Id_Estudiante], [Fecha_Inscripción]) VALUES (N'20262027-1', N'20260010', CAST(N'2026-08-12' AS Date))
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'ARG', N'Argentina                     ')
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'CAN', N'Canadiense                    ')
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'COL', N'Colombiana                    ')
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'CUB', N'Cubana                        ')
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'DOM', N'Dominicana                    ')
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'ESP', N'Espanola                      ')
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'MEX', N'Mexicana                      ')
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'PRI', N'Puertorriquena                ')
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'USA', N'Estadounidense                ')
GO
INSERT [dbo].[Nacionalidad] ([Id_Nacionalidad], [Nombre]) VALUES (N'VEN', N'Venezolana                    ')
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20242025-1', N'Periodo 1 2024-2025      ', CAST(N'2024-08-01' AS Date), CAST(N'2024-10-15' AS Date), CAST(N'2024-12-15' AS Date))
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20242025-2', N'Periodo 2 2024-2025      ', CAST(N'2024-12-01' AS Date), CAST(N'2025-02-15' AS Date), CAST(N'2025-04-15' AS Date))
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20242025-3', N'Periodo 3 2024-2025      ', CAST(N'2025-04-01' AS Date), CAST(N'2025-06-15' AS Date), CAST(N'2025-08-15' AS Date))
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20252026-1', N'Periodo 1 2025-2026      ', CAST(N'2025-08-01' AS Date), CAST(N'2025-10-15' AS Date), CAST(N'2025-12-15' AS Date))
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20252026-2', N'Periodo 2 2025-2026      ', CAST(N'2025-12-01' AS Date), CAST(N'2026-02-15' AS Date), CAST(N'2026-04-15' AS Date))
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20252026-3', N'Periodo 3 2025-2026      ', CAST(N'2026-04-01' AS Date), CAST(N'2026-06-15' AS Date), CAST(N'2026-08-15' AS Date))
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20262027-1', N'Periodo 1 2026-2027      ', CAST(N'2026-08-01' AS Date), CAST(N'2026-10-15' AS Date), CAST(N'2026-12-15' AS Date))
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20262027-2', N'Periodo 2 2026-2027      ', CAST(N'2026-12-01' AS Date), CAST(N'2027-02-15' AS Date), CAST(N'2027-04-15' AS Date))
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20262027-3', N'Periodo 3 2026-2027      ', CAST(N'2027-04-01' AS Date), CAST(N'2027-06-15' AS Date), CAST(N'2027-08-15' AS Date))
GO
INSERT [dbo].[Período Académico] ([Código], [Descripción], [Fecha_Lim_Prematrícula], [Fecha_Lim_Retiro], [Fecha_Lim_Publicación]) VALUES (N'20272028-1', N'Periodo 1 2027-2028      ', CAST(N'2027-08-01' AS Date), CAST(N'2027-10-15' AS Date), CAST(N'2027-12-15' AS Date))
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Carrera] FOREIGN KEY([Id_Carrera])
REFERENCES [dbo].[Carrera] ([Id_Carrera])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_Carrera]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Categoría de Pago] FOREIGN KEY([Id_Cat_Pago])
REFERENCES [dbo].[Categoría de Pago] ([Id_Cat_Pago])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_Categoría de Pago]
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD  CONSTRAINT [FK_Estudiante_Nacionalidad] FOREIGN KEY([Id_Nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([Id_Nacionalidad])
GO
ALTER TABLE [dbo].[Estudiante] CHECK CONSTRAINT [FK_Estudiante_Nacionalidad]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Asignatura] FOREIGN KEY([Código_Asignatura])
REFERENCES [dbo].[Asignatura] ([Código])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Asignatura]
GO
ALTER TABLE [dbo].[Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Período Académico] FOREIGN KEY([Código_Período])
REFERENCES [dbo].[Período Académico] ([Código])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FK_Grupo_Período Académico]
GO
ALTER TABLE [dbo].[Grupos Inscrito]  WITH CHECK ADD  CONSTRAINT [FK_Grupos Inscrito_Asignatura] FOREIGN KEY([Código_Asignatura])
REFERENCES [dbo].[Asignatura] ([Código])
GO
ALTER TABLE [dbo].[Grupos Inscrito] CHECK CONSTRAINT [FK_Grupos Inscrito_Asignatura]
GO
ALTER TABLE [dbo].[Grupos Inscrito]  WITH CHECK ADD  CONSTRAINT [FK_Grupos Inscrito_Estudiante] FOREIGN KEY([Id_Estudiante])
REFERENCES [dbo].[Estudiante] ([Id])
GO
ALTER TABLE [dbo].[Grupos Inscrito] CHECK CONSTRAINT [FK_Grupos Inscrito_Estudiante]
GO
ALTER TABLE [dbo].[Grupos Inscrito]  WITH CHECK ADD  CONSTRAINT [FK_Grupos Inscrito_Grupo] FOREIGN KEY([Código_Período], [Código_Asignatura], [Número_Grupo])
REFERENCES [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo])
GO
ALTER TABLE [dbo].[Grupos Inscrito] CHECK CONSTRAINT [FK_Grupos Inscrito_Grupo]
GO
ALTER TABLE [dbo].[Horario Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Horario Grupo_Día Semana] FOREIGN KEY([Día])
REFERENCES [dbo].[Día Semana] ([Día])
GO
ALTER TABLE [dbo].[Horario Grupo] CHECK CONSTRAINT [FK_Horario Grupo_Día Semana]
GO
ALTER TABLE [dbo].[Horario Grupo]  WITH CHECK ADD  CONSTRAINT [FK_Horario Grupo_Grupo] FOREIGN KEY([Código_Período], [Código_Asignatura], [Número_Grupo])
REFERENCES [dbo].[Grupo] ([Código_Período], [Código_Asignatura], [Número_Grupo])
GO
ALTER TABLE [dbo].[Horario Grupo] CHECK CONSTRAINT [FK_Horario Grupo_Grupo]
GO
ALTER TABLE [dbo].[Inscripción]  WITH CHECK ADD  CONSTRAINT [FK_Inscripción_Estudiante] FOREIGN KEY([Id_Estudiante])
REFERENCES [dbo].[Estudiante] ([Id])
GO
ALTER TABLE [dbo].[Inscripción] CHECK CONSTRAINT [FK_Inscripción_Estudiante]
GO
ALTER TABLE [dbo].[Inscripción]  WITH CHECK ADD  CONSTRAINT [FK_Inscripción_Período Académico] FOREIGN KEY([Código_Período])
REFERENCES [dbo].[Período Académico] ([Código])
GO
ALTER TABLE [dbo].[Inscripción] CHECK CONSTRAINT [FK_Inscripción_Período Académico]
GO
USE [master]
GO
ALTER DATABASE [AcadDB(aggd0001)] SET  READ_WRITE 
GO
