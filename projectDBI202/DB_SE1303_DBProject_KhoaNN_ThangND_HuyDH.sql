USE [master]
GO
/****** Object:  Database [project]    Script Date: 7/23/2018 7:02:00 PM ******/
CREATE DATABASE [project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\project.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\project_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [project] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project] SET ARITHABORT OFF 
GO
ALTER DATABASE [project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [project] SET  MULTI_USER 
GO
ALTER DATABASE [project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [project] SET DELAYED_DURABILITY = DISABLED 
GO
USE [project]
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Advertisement](
	[ID Member] [char](10) NOT NULL,
	[ID Product] [char](10) NOT NULL,
	[ID Wallet] [char](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[price] [decimal](18, 0) NULL,
	[description] [nvarchar](50) NULL,
	[createDate] [date] NULL,
 CONSTRAINT [PK_Advertisement] PRIMARY KEY CLUSTERED 
(
	[ID Member] ASC,
	[ID Product] ASC,
	[ID Wallet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[car]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[car](
	[ID] [char](10) NOT NULL,
	[carType] [char](10) NULL,
 CONSTRAINT [PK_car] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[electrical]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[electrical](
	[ID] [char](10) NOT NULL,
	[eleType] [char](10) NULL,
 CONSTRAINT [PK_electrical] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[ID Employee] [char](10) NOT NULL,
	[ID Store] [char](10) NULL,
	[name] [nvarchar](50) NULL,
	[sex] [char](10) NULL,
	[email#] [nvarchar](50) NULL,
	[location] [nvarchar](50) NULL,
	[phone#] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fashion]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fashion](
	[ID] [char](10) NOT NULL,
	[fashionType] [char](10) NULL,
 CONSTRAINT [PK_Fashion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Furniture]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Furniture](
	[ID] [char](10) NOT NULL,
	[furType] [char](10) NULL,
 CONSTRAINT [PK_Furniture] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[House]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[House](
	[ID] [char](10) NOT NULL,
	[squareMeter] [int] NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job](
	[ID] [char](10) NOT NULL,
	[jobType] [char](10) NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Like]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Like](
	[ID Member] [char](10) NOT NULL,
	[ID Product] [char](10) NOT NULL,
 CONSTRAINT [PK_Like] PRIMARY KEY CLUSTERED 
(
	[ID Member] ASC,
	[ID Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Members]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Members](
	[ID] [char](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[location] [nvarchar](50) NULL,
	[phone#] [decimal](18, 0) NULL,
	[dayOfLogin] [date] NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modify]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modify](
	[ID Member] [char](10) NOT NULL,
	[ID Product] [char](10) NOT NULL,
 CONSTRAINT [PK_Modify] PRIMARY KEY CLUSTERED 
(
	[ID Member] ASC,
	[ID Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Office]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Office](
	[ID] [char](10) NOT NULL,
	[offType] [char](10) NULL,
 CONSTRAINT [PK_Office] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pet]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pet](
	[ID] [char](10) NOT NULL,
	[petType] [char](10) NULL,
 CONSTRAINT [PK_Pet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[ID Member] [char](10) NOT NULL,
	[ID Product] [char](10) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID Member] ASC,
	[ID Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID Product] [char](10) NOT NULL,
	[ID typeOfProduct] [char](10) NULL,
	[name] [nvarchar](50) NULL,
	[detail] [nvarchar](50) NULL,
	[price] [int] NULL,
	[upLoadDate] [datetime] NULL,
	[location] [nvarchar](50) NULL,
	[pStatus] [char](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report](
	[ID Product] [char](10) NOT NULL,
	[ID Member] [char](10) NOT NULL,
	[ID Employee] [char](10) NOT NULL,
	[title] [nvarchar](50) NULL,
	[content] [nvarchar](50) NULL,
	[createTime] [datetime] NULL,
 CONSTRAINT [PK_Report_1] PRIMARY KEY CLUSTERED 
(
	[ID Product] ASC,
	[ID Member] ASC,
	[ID Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Store]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Store](
	[ID] [char](10) NOT NULL,
	[ID Product] [char](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email#] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone#] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tourism]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tourism](
	[ID] [char](10) NOT NULL,
	[tourType] [char](10) NULL,
 CONSTRAINT [PK_Tourism] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Toy]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Toy](
	[ID] [char](10) NOT NULL,
	[toyType] [char](10) NULL,
 CONSTRAINT [PK_Toy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[typeOfProduct]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[typeOfProduct](
	[ID] [char](10) NOT NULL,
	[ID Product] [char](10) NOT NULL,
	[ID House] [char](10) NULL,
	[ID Car] [char](10) NULL,
	[ID Electric] [char](10) NULL,
	[ID Toy] [char](10) NULL,
	[ID Furniture] [char](10) NULL,
	[ID Fashion] [char](10) NULL,
	[ID Pet] [char](10) NULL,
	[ID Office] [char](10) NULL,
	[ID Job] [char](10) NULL,
	[ID Tourism] [char](10) NULL,
 CONSTRAINT [PK_typeOfProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wallet]    Script Date: 7/23/2018 7:02:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wallet](
	[ID Wallet] [char](10) NOT NULL,
	[ID Member] [char](10) NOT NULL,
	[amount] [decimal](18, 0) NULL,
	[history] [datetime] NULL,
 CONSTRAINT [PK_Wallet] PRIMARY KEY CLUSTERED 
(
	[ID Wallet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Advertisement]  WITH CHECK ADD  CONSTRAINT [FK_Advertisement_Members] FOREIGN KEY([ID Member])
REFERENCES [dbo].[Members] ([ID])
GO
ALTER TABLE [dbo].[Advertisement] CHECK CONSTRAINT [FK_Advertisement_Members]
GO
ALTER TABLE [dbo].[Advertisement]  WITH CHECK ADD  CONSTRAINT [FK_Advertisement_Product] FOREIGN KEY([ID Product])
REFERENCES [dbo].[Product] ([ID Product])
GO
ALTER TABLE [dbo].[Advertisement] CHECK CONSTRAINT [FK_Advertisement_Product]
GO
ALTER TABLE [dbo].[Advertisement]  WITH CHECK ADD  CONSTRAINT [FK_Advertisement_Wallet] FOREIGN KEY([ID Wallet])
REFERENCES [dbo].[Wallet] ([ID Wallet])
GO
ALTER TABLE [dbo].[Advertisement] CHECK CONSTRAINT [FK_Advertisement_Wallet]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Store] FOREIGN KEY([ID Store])
REFERENCES [dbo].[Store] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Store]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Members] FOREIGN KEY([ID Member])
REFERENCES [dbo].[Members] ([ID])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Members]
GO
ALTER TABLE [dbo].[Like]  WITH CHECK ADD  CONSTRAINT [FK_Like_Product] FOREIGN KEY([ID Product])
REFERENCES [dbo].[Product] ([ID Product])
GO
ALTER TABLE [dbo].[Like] CHECK CONSTRAINT [FK_Like_Product]
GO
ALTER TABLE [dbo].[Modify]  WITH CHECK ADD  CONSTRAINT [FK_Modify_Members] FOREIGN KEY([ID Member])
REFERENCES [dbo].[Members] ([ID])
GO
ALTER TABLE [dbo].[Modify] CHECK CONSTRAINT [FK_Modify_Members]
GO
ALTER TABLE [dbo].[Modify]  WITH CHECK ADD  CONSTRAINT [FK_Modify_Product] FOREIGN KEY([ID Product])
REFERENCES [dbo].[Product] ([ID Product])
GO
ALTER TABLE [dbo].[Modify] CHECK CONSTRAINT [FK_Modify_Product]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Members] FOREIGN KEY([ID Member])
REFERENCES [dbo].[Members] ([ID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Members]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Product] FOREIGN KEY([ID Product])
REFERENCES [dbo].[Product] ([ID Product])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Product]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Employee] FOREIGN KEY([ID Employee])
REFERENCES [dbo].[Employee] ([ID Employee])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Employee]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Members] FOREIGN KEY([ID Member])
REFERENCES [dbo].[Members] ([ID])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Members]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Product] FOREIGN KEY([ID Product])
REFERENCES [dbo].[Product] ([ID Product])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Product]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Product] FOREIGN KEY([ID Product])
REFERENCES [dbo].[Product] ([ID Product])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Product]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_car] FOREIGN KEY([ID Car])
REFERENCES [dbo].[car] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_car]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_electrical] FOREIGN KEY([ID Electric])
REFERENCES [dbo].[electrical] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_electrical]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_Fashion] FOREIGN KEY([ID Fashion])
REFERENCES [dbo].[Fashion] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_Fashion]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_Furniture] FOREIGN KEY([ID Furniture])
REFERENCES [dbo].[Furniture] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_Furniture]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_House] FOREIGN KEY([ID House])
REFERENCES [dbo].[House] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_House]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_Job] FOREIGN KEY([ID Job])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_Job]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_Office] FOREIGN KEY([ID Office])
REFERENCES [dbo].[Office] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_Office]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_Pet] FOREIGN KEY([ID Pet])
REFERENCES [dbo].[Pet] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_Pet]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_Product1] FOREIGN KEY([ID Product])
REFERENCES [dbo].[Product] ([ID Product])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_Product1]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_Type_Toy] FOREIGN KEY([ID Toy])
REFERENCES [dbo].[Toy] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_Type_Toy]
GO
ALTER TABLE [dbo].[typeOfProduct]  WITH CHECK ADD  CONSTRAINT [FK_typeOfProduct_Tourism] FOREIGN KEY([ID Tourism])
REFERENCES [dbo].[Tourism] ([ID])
GO
ALTER TABLE [dbo].[typeOfProduct] CHECK CONSTRAINT [FK_typeOfProduct_Tourism]
GO
ALTER TABLE [dbo].[Wallet]  WITH CHECK ADD  CONSTRAINT [FK_Wallet_Members] FOREIGN KEY([ID Member])
REFERENCES [dbo].[Members] ([ID])
GO
ALTER TABLE [dbo].[Wallet] CHECK CONSTRAINT [FK_Wallet_Members]
GO
USE [master]
GO
ALTER DATABASE [project] SET  READ_WRITE 
GO

------------------10 CAU QUERY-----------------------
USE [project]
--1 tim noi ban xe honda 2 banh
SELECT p.location
FROM Product p, (SELECT t.ID
				FROM typeOfProduct t, car c
				WHERE t.[ID Car]=c.ID 
				And 
				c.carType=N'hai banh') xe2
WHERE p.[ID typeOfProduct]=xe2.ID

--2 tim san pham bi an report va khong ton tao
SELECT p.*
FROM  Product p,Report r
WHERE p.[ID Product]=r.[ID Product]
and p.pStatus=N'Unavailable'
--3 tim quang cao duoc dang boi thanh vien ten An gia tien <=500000
SELECT a.*
FROM Members m,Advertisement a
WHERE a.[ID Product]=m.ID
AND a.price<= 500000
AND m.name=N'An'
--4 Tim ten nhung member post tu 2 san pham tro len
SELECT m.name
FROM Members m,Product p, Post p2,(SELECT p.[ID Member]
				FROM Post p
				GROUP BY p.[ID Member]
				HAVING  COUNT(*)>=2) t
WHERE  m.ID=t.[ID Member]  
and P2.[ID Product]=p.[ID Product]
and p2.[ID Member]=t.[ID Member]
--5 insert wallet
INSERT Members(ID,name,phone#,location,dayOfLogin)
VALUES('001','Nguyen Duc Thang',098709898,'HCM','7-23-2018')
INSERT INTO Wallet([ID Wallet],[ID Member],amount,history)
VALUES('001','001',1000000000,'7-23-2018')
--6 update wallet
UPDATE Wallet
SET amount = 00000
WHERE [ID Wallet]=N'001'
--7 del wallet
DELETE Wallet
WHERE [ID Wallet]=N'001'
--8 insert Employee
INSERT INTO Employee([ID Employee],name,location,sex,phone#)
VALUES
	('001','Doan Quang Huy','HCM','male',0968742345),
	('002','Nguyen Nhut Khoa','HCM','male',0968744122),
	('003','Nguyen Duc Thang','HCM','male',0968742634)
--9 update report
UPDATE Employee
SET location = 'Hanoi'
WHERE [ID Employee]=N'002'
--10 del report
DELETE Employee
WHERE [ID Employee]=N'003'