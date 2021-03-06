USE [master]
GO
/****** Object:  Database [Sinhvien]    Script Date: 12/7/2017 8:16:28 PM ******/
CREATE DATABASE [Sinhvien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sinhvien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Sinhvien.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Sinhvien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Sinhvien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Sinhvien] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sinhvien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sinhvien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sinhvien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sinhvien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sinhvien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sinhvien] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sinhvien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sinhvien] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Sinhvien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sinhvien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sinhvien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sinhvien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sinhvien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sinhvien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sinhvien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sinhvien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sinhvien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sinhvien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sinhvien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sinhvien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sinhvien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sinhvien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sinhvien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sinhvien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sinhvien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sinhvien] SET  MULTI_USER 
GO
ALTER DATABASE [Sinhvien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sinhvien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sinhvien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sinhvien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Sinhvien]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 12/7/2017 8:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[lastname] [varchar](20) NULL,
	[isAdmin] [bit] NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEmp]    Script Date: 12/7/2017 8:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmp](
	[userID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_tblEmp] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEmpAddr]    Script Date: 12/7/2017 8:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmpAddr](
	[addr_ID] [int] NOT NULL,
	[addrName] [varchar](50) NOT NULL,
	[phoneNo] [varchar](50) NULL,
	[user_ID] [int] NULL,
 CONSTRAINT [PK_tblEmpAddr] PRIMARY KEY CLUSTERED 
(
	[addr_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin]) VALUES (N'bich', N'321', N'phan thi ngoc', 0)
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin]) VALUES (N'gai', N'123', N'le thi', 0)
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin]) VALUES (N'hieu', N'123', N'nguyen thi bao', 0)
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin]) VALUES (N'kien', N'123', N'le thi', 1)
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin]) VALUES (N'Minh', N'123', N'Nguyen Van', 1)
INSERT [dbo].[Registration] ([username], [password], [lastname], [isAdmin]) VALUES (N'teo', N'123', N'nguyen van 2', 1)
INSERT [dbo].[tblEmp] ([userID], [Name]) VALUES (1, N'Cu')
INSERT [dbo].[tblEmp] ([userID], [Name]) VALUES (2, N'Teo')
INSERT [dbo].[tblEmp] ([userID], [Name]) VALUES (3, N'Ti')
INSERT [dbo].[tblEmp] ([userID], [Name]) VALUES (4, N'Bi')
INSERT [dbo].[tblEmpAddr] ([addr_ID], [addrName], [phoneNo], [user_ID]) VALUES (1, N'Da Nang', N'09034147494', 2)
INSERT [dbo].[tblEmpAddr] ([addr_ID], [addrName], [phoneNo], [user_ID]) VALUES (3, N'Tay Nguyen', N'01234567894', 1)
INSERT [dbo].[tblEmpAddr] ([addr_ID], [addrName], [phoneNo], [user_ID]) VALUES (6, N'Ho Chi Minh', N'0909099999', 3)
INSERT [dbo].[tblEmpAddr] ([addr_ID], [addrName], [phoneNo], [user_ID]) VALUES (7, N'Khanh Hoa', N'0909099999', 4)
INSERT [dbo].[tblEmpAddr] ([addr_ID], [addrName], [phoneNo], [user_ID]) VALUES (8, N'Ha Noi', N'01683314129', 4)
ALTER TABLE [dbo].[tblEmpAddr]  WITH CHECK ADD  CONSTRAINT [FK_tblEmpAddr_tblEmp] FOREIGN KEY([user_ID])
REFERENCES [dbo].[tblEmp] ([userID])
GO
ALTER TABLE [dbo].[tblEmpAddr] CHECK CONSTRAINT [FK_tblEmpAddr_tblEmp]
GO
USE [master]
GO
ALTER DATABASE [Sinhvien] SET  READ_WRITE 
GO
