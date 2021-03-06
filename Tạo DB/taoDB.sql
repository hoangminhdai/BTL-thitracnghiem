USE [master]
GO
/****** Object:  Database [DBThiTracNghiem]    Script Date: 12/26/2019 9:59:54 PM ******/
CREATE DATABASE [DBThiTracNghiem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBThiTracNghiem', FILENAME = N'C:\DBThiTracNghiem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBThiTracNghiem_log', FILENAME = N'C:\DBThiTracNghiem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBThiTracNghiem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBThiTracNghiem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBThiTracNghiem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBThiTracNghiem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBThiTracNghiem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBThiTracNghiem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBThiTracNghiem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBThiTracNghiem] SET  MULTI_USER 
GO
ALTER DATABASE [DBThiTracNghiem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBThiTracNghiem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBThiTracNghiem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBThiTracNghiem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DBThiTracNghiem]
GO
/****** Object:  User [hoangminhdai]    Script Date: 12/26/2019 9:59:54 PM ******/
CREATE USER [hoangminhdai] FOR LOGIN [hoangminhdai] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[maAdmin] [int] IDENTITY(1,1) NOT NULL,
	[tenAdmin] [nvarchar](max) NULL,
	[matKhau] [nvarchar](max) NULL,
	[tenTaiKhoanAD] [nvarchar](max) NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[maAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAUHOI]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUHOI](
	[maCauHoi] [int] IDENTITY(1,1) NOT NULL,
	[noiDung] [nvarchar](max) NULL,
	[loiGiai] [nvarchar](max) NULL,
	[dapAnA] [nvarchar](max) NULL,
	[dapAnB] [nvarchar](max) NULL,
	[dapAnC] [nvarchar](max) NULL,
	[dapAnD] [nvarchar](max) NULL,
	[dapAnDung] [nchar](10) NULL,
	[IMG] [nvarchar](max) NULL,
	[doKho] [nvarchar](max) NULL,
	[ngayLap] [nvarchar](max) NULL,
	[vungKienThuc] [int] NULL,
	[loaiCauHoi] [int] NULL,
	[maDeThi] [int] NULL,
	[maGiaoVien] [int] NULL,
 CONSTRAINT [PK_CAUHOI] PRIMARY KEY CLUSTERED 
(
	[maCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETHI]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETHI](
	[maDeThi] [int] IDENTITY(1,1) NOT NULL,
	[ngayLap] [date] NULL,
	[maGoiDe] [int] NULL,
	[maGiaoVien] [int] NULL,
 CONSTRAINT [PK_DETHI] PRIMARY KEY CLUSTERED 
(
	[maDeThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[maGiaoVien] [int] IDENTITY(1,1) NOT NULL,
	[tenGiaoVien] [nvarchar](max) NULL,
	[tenTaiKhoanGV] [nvarchar](max) NULL,
	[matKhauGV] [nvarchar](max) NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[maGiaoVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GOIDE]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GOIDE](
	[maGoiDe] [int] IDENTITY(1,1) NOT NULL,
	[gia] [int] NOT NULL,
	[soLuong] [int] NULL,
	[maGiaoVien] [int] NULL,
 CONSTRAINT [PK_GoiDe] PRIMARY KEY CLUSTERED 
(
	[maGoiDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAICAUHOI]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAICAUHOI](
	[maLoai] [int] IDENTITY(1,1) NOT NULL,
	[tenLoai] [nvarchar](max) NULL,
 CONSTRAINT [PK_LOAICAUHOI] PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLY_GIAOVIEN]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLY_GIAOVIEN](
	[maGiaoVien] [int] NOT NULL,
	[maADMIN] [int] NOT NULL,
	[ngaySua] [date] NULL,
	[thongTinSua] [nvarchar](max) NULL,
 CONSTRAINT [PK_QUANLY_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[maGiaoVien] ASC,
	[maADMIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[maUser] [int] IDENTITY(1,1) NOT NULL,
	[tenTaiKhoan] [nvarchar](max) NULL,
	[matKhau] [nvarchar](max) NULL,
	[tenUser] [nvarchar](max) NULL,
	[trangThaiTaiKhoan] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[maUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_DETHI]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_DETHI](
	[maKhachHang] [int] NOT NULL,
	[maGoide] [int] NOT NULL,
 CONSTRAINT [PK_USER_DETHI] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC,
	[maGoide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_LAMDE]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_LAMDE](
	[maUser] [int] NOT NULL,
	[maDeThi] [int] NOT NULL,
	[soCauDung] [nchar](10) NULL,
	[ngayLap] [date] NULL,
 CONSTRAINT [PK_USER_LAMDE] PRIMARY KEY CLUSTERED 
(
	[maUser] ASC,
	[maDeThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VUNGCAUHOI]    Script Date: 12/26/2019 9:59:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VUNGCAUHOI](
	[maVung] [int] IDENTITY(1,1) NOT NULL,
	[tenVung] [nvarchar](max) NULL,
 CONSTRAINT [PK_VUNGCAUHOI] PRIMARY KEY CLUSTERED 
(
	[maVung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CAUHOI] ON 
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1, N'tính tích phân suy rộng của hàm số', N'ufuyfutffdhgfhg   dtrdtrdrti  ùuytfty', N'tính con khỉ', N'tính con bò', N'tính con vịt', N'ngu người', N'B         ', NULL, N'1', N'1-1-2019', 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (2, N'tìm đáp án sai trong các đáp án sau đây', N'1', N'0=1', N'2=1+3', N'96=69', N'9', N'B         ', N'1', N'1', N'1', 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (4, N'tìm x=4x+69', N'1', N'2', N'3', N'4', N'5', N'B         ', N'4', N'5', N'17/02/1998', 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (5, N'tìm x=6x+69', N'1', N'2', N'3', N'4', N'5', N'A         ', N'4', N'5', N'17/02/1998', 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (7, N'tìm x=9x+69', N'5', N'8', N'3', N'7', N'8', N'C         ', N'w', N'w', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (8, N'nguyên hàm là gì', N'fff', N'1', N'1', N'1', N'1', N'A         ', N'1', N'1', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (9, N'làm sao để tam giác biến đổi thành hình tròn', N'ffe', N'fef', N'b', N'c', N'd', N'D         ', N'c', N'd', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (10, N'giải hệ phương trình sau:x+3=9', N'giải hệ phương trình sau:x+3=9', N'nothing', N'x=3', N'x=9', N'x=2', N'A         ', N'nothing', N'quá khó', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (11, N'giải hệ phương trình sau:x+3=9', N'giải hệ phương trình sau:x+3=9', N'nothing', N'x=3', N'x=9', N'x=2', N'C         ', N'd', N'quá khó', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (12, N'giải hệ phương trình sau:x+3=9', N'rẻ', N'ff', N'x=3', N'x=3', N'x=3', N'B         ', N'd', N'ê', N'', 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (13, N'giải hệ phương trình sau:x+3=9', N'giải hệ phương trình sau:x+3=9', N'1', N'y', N'z', N't', N'A         ', N'A', N'', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (14, N'tích căn bậc 2 của 9', N'', N'1', N'2', N'3', N'4', N'a         ', N'A', N'', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (15, N'tích căn bậc 2 của 9', NULL, N'1', N'3', N'4', N'5', N'a         ', NULL, NULL, NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (16, N'giải hệ phương trình sau:x+3=9', N'giải hệ phương trình sau:x+3=9', N'nothing', N'x=3', N'x=9', N'x=2', N'A         ', N'', N'', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (17, N'tích căn bậc 2 của 9', N'tích căn bậc 2 của 9', N'nothing', N'x=3', N'x=9', N'x=2', N'A         ', N'nothing', N'quá khó', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (18, N'giải hệ phương trình sau:x+3=9', N'giải hệ phương trình sau:x+3=9', N'e', N'f', N'r', N't', N'b         ', NULL, NULL, NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (19, N'tim a', N'tim a', N'', N'2', N'1', N'3', N'B         ', N'', N'', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (20, N'giải hệ phương trình sau:x+3=9', N'giải hệ phương trình sau:x+3=9', N'nothing', N'x=3', N'x=9', N'x=2', N'C         ', N'd', N'quá khó', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1015, N'giải hệ phương trình sau:x+3=9', N'giải hệ phương trình sau:x+3=9', N'nothing', N'x=3', N'x=9', N'x=2', N'A         ', N'd', N'd', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1016, N'giải hệ phương trình sau:x+3=9', N'giải hệ phương trình sau:x+3=9', N'nothing', N'x=3', N'x=9', N'x=2', N'A         ', N'd', N'quá khó', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1017, N'giải hệ phương trình sau:x+3=9', N'nothing', N'x=6', N'd', N'x=9', N'x=2', N'd         ', N'd', N'quá khó', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1018, N'giải hệ phương trình sau:x+3=9', N'', N'x=6', N'x=3', N'y=x+9', N'y=x+9', N'a         ', N'', N'', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1019, N'tính tổng x=2+9+4', N'', N'1', N'2', N'6', N'15', N'd         ', N'', N'', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1020, N'tính sác xuất để con xúc sắc ra mặt 3', N'', N'10%', N'20%', N'30%', N'40%', N'A         ', N'd', N'quá khó', NULL, 1, 1, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1021, N'tính giá tr? c?a bi?u th?c: x+6=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=x+9', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1022, N'tính giá tr? c?a bi?u th?c: x+7=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1023, N'tính giá tr? c?a bi?u th?c: x+8=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1024, N'tính giá tr? c?a bi?u th?c: x+9=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1025, N'tính giá tr? c?a bi?u th?c: x+10=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1026, N'tính giá tr? c?a bi?u th?c: x+6=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1027, N'tính giá tr? c?a bi?u th?c: x+7=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1028, N'tính giá tr? c?a bi?u th?c: x+8=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1029, N'tính giá tr? c?a bi?u th?c: x+9=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1030, N'tính giá tr? c?a bi?u th?c: x+10=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1031, N'tính giá tr? c?a bi?u th?c: x+6=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1032, N'tính giá tr? c?a bi?u th?c: x+7=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1033, N'tính giá tr? c?a bi?u th?c: x+8=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1034, N'tính giá tr? c?a bi?u th?c: x+9=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1035, N'tính giá tr? c?a bi?u th?c: x+10=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1036, N'tính giá tr? c?a bi?u th?c: x+6=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1037, N'tính giá tr? c?a bi?u th?c: x+7=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1038, N'tính giá tr? c?a bi?u th?c: x+8=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1039, N'tính giá tr? c?a bi?u th?c: x+9=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1040, N'tính giá tr? c?a bi?u th?c: x+10=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1041, N'tính giá tr? c?a bi?u th?c: x+6=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1042, N'tính giá tr? c?a bi?u th?c: x+7=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1043, N'tính giá tr? c?a bi?u th?c: x+8=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1044, N'tính giá tr? c?a bi?u th?c: x+9=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1045, N'tính giá tr? c?a bi?u th?c: x+10=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[CAUHOI] ([maCauHoi], [noiDung], [loiGiai], [dapAnA], [dapAnB], [dapAnC], [dapAnD], [dapAnDung], [IMG], [doKho], [ngayLap], [vungKienThuc], [loaiCauHoi], [maDeThi], [maGiaoVien]) VALUES (1046, N'tính giá tr? c?a bi?u th?c: x+6=y+1', NULL, N'x=y', N'x=y+1', N'y=x+9', N'y=8x', N'A         ', NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[CAUHOI] OFF
GO
SET IDENTITY_INSERT [dbo].[DETHI] ON 
GO
INSERT [dbo].[DETHI] ([maDeThi], [ngayLap], [maGoiDe], [maGiaoVien]) VALUES (1, CAST(N'2019-02-02' AS Date), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DETHI] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAICAUHOI] ON 
GO
INSERT [dbo].[LOAICAUHOI] ([maLoai], [tenLoai]) VALUES (1, N'a')
GO
SET IDENTITY_INSERT [dbo].[LOAICAUHOI] OFF
GO
SET IDENTITY_INSERT [dbo].[VUNGCAUHOI] ON 
GO
INSERT [dbo].[VUNGCAUHOI] ([maVung], [tenVung]) VALUES (1, N'â')
GO
SET IDENTITY_INSERT [dbo].[VUNGCAUHOI] OFF
GO
ALTER TABLE [dbo].[CAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_CAUHOI_DETHI] FOREIGN KEY([maDeThi])
REFERENCES [dbo].[DETHI] ([maDeThi])
GO
ALTER TABLE [dbo].[CAUHOI] CHECK CONSTRAINT [FK_CAUHOI_DETHI]
GO
ALTER TABLE [dbo].[CAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_CAUHOI_GIAOVIEN] FOREIGN KEY([maGiaoVien])
REFERENCES [dbo].[GIAOVIEN] ([maGiaoVien])
GO
ALTER TABLE [dbo].[CAUHOI] CHECK CONSTRAINT [FK_CAUHOI_GIAOVIEN]
GO
ALTER TABLE [dbo].[CAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_CAUHOI_LOAICAUHOI] FOREIGN KEY([loaiCauHoi])
REFERENCES [dbo].[LOAICAUHOI] ([maLoai])
GO
ALTER TABLE [dbo].[CAUHOI] CHECK CONSTRAINT [FK_CAUHOI_LOAICAUHOI]
GO
ALTER TABLE [dbo].[CAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_CAUHOI_VUNGCAUHOI] FOREIGN KEY([vungKienThuc])
REFERENCES [dbo].[VUNGCAUHOI] ([maVung])
GO
ALTER TABLE [dbo].[CAUHOI] CHECK CONSTRAINT [FK_CAUHOI_VUNGCAUHOI]
GO
ALTER TABLE [dbo].[DETHI]  WITH CHECK ADD  CONSTRAINT [FK_DETHI_GIAOVIEN] FOREIGN KEY([maGiaoVien])
REFERENCES [dbo].[GIAOVIEN] ([maGiaoVien])
GO
ALTER TABLE [dbo].[DETHI] CHECK CONSTRAINT [FK_DETHI_GIAOVIEN]
GO
ALTER TABLE [dbo].[DETHI]  WITH CHECK ADD  CONSTRAINT [FK_DETHI_GOIDE] FOREIGN KEY([maGoiDe])
REFERENCES [dbo].[GOIDE] ([maGoiDe])
GO
ALTER TABLE [dbo].[DETHI] CHECK CONSTRAINT [FK_DETHI_GOIDE]
GO
ALTER TABLE [dbo].[GOIDE]  WITH CHECK ADD  CONSTRAINT [FK_GOIDE_GIAOVIEN] FOREIGN KEY([maGiaoVien])
REFERENCES [dbo].[GIAOVIEN] ([maGiaoVien])
GO
ALTER TABLE [dbo].[GOIDE] CHECK CONSTRAINT [FK_GOIDE_GIAOVIEN]
GO
ALTER TABLE [dbo].[QUANLY_GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_QUANLY_GIAOVIEN_ADMIN] FOREIGN KEY([maADMIN])
REFERENCES [dbo].[ADMIN] ([maAdmin])
GO
ALTER TABLE [dbo].[QUANLY_GIAOVIEN] CHECK CONSTRAINT [FK_QUANLY_GIAOVIEN_ADMIN]
GO
ALTER TABLE [dbo].[QUANLY_GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_QUANLY_GIAOVIEN_GIAOVIEN] FOREIGN KEY([maGiaoVien])
REFERENCES [dbo].[GIAOVIEN] ([maGiaoVien])
GO
ALTER TABLE [dbo].[QUANLY_GIAOVIEN] CHECK CONSTRAINT [FK_QUANLY_GIAOVIEN_GIAOVIEN]
GO
ALTER TABLE [dbo].[USER_DETHI]  WITH CHECK ADD  CONSTRAINT [FK_USER_DETHI_GoiDe] FOREIGN KEY([maGoide])
REFERENCES [dbo].[GOIDE] ([maGoiDe])
GO
ALTER TABLE [dbo].[USER_DETHI] CHECK CONSTRAINT [FK_USER_DETHI_GoiDe]
GO
ALTER TABLE [dbo].[USER_DETHI]  WITH CHECK ADD  CONSTRAINT [FK_USER_DETHI_User] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[USER] ([maUser])
GO
ALTER TABLE [dbo].[USER_DETHI] CHECK CONSTRAINT [FK_USER_DETHI_User]
GO
ALTER TABLE [dbo].[USER_LAMDE]  WITH CHECK ADD  CONSTRAINT [FK_USER_LAMDE_DETHI1] FOREIGN KEY([maDeThi])
REFERENCES [dbo].[DETHI] ([maDeThi])
GO
ALTER TABLE [dbo].[USER_LAMDE] CHECK CONSTRAINT [FK_USER_LAMDE_DETHI1]
GO
ALTER TABLE [dbo].[USER_LAMDE]  WITH CHECK ADD  CONSTRAINT [FK_USER_LAMDE_User1] FOREIGN KEY([maUser])
REFERENCES [dbo].[USER] ([maUser])
GO
ALTER TABLE [dbo].[USER_LAMDE] CHECK CONSTRAINT [FK_USER_LAMDE_User1]
GO
/****** Object:  StoredProcedure [dbo].[pc_ThemCauHoi]    Script Date: 12/26/2019 9:59:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pc_ThemCauHoi] (
@noiDung			 nvarchar(200),     
@loiGiai			  nvarchar(200), 
@dapAnA			nvarchar(200)  ,
@dapAnB				nvarchar(200),   
@dapAnC				 nvarchar(200) , 
@dapAnD				 nvarchar(200),
@dapAnDung			nvarchar(200),  
@IMG			nvarchar(200),
@doKho         nvarchar(200),       
@vungKienThuc	int,
@loaiCauHoi		int )

as
begin
	insert into CAUHOI(noiDung,loiGiai,dapAnA,dapAnB,dapAnC,dapAnD,dapAnDung,IMG,doKho,vungKienThuc,loaiCauHoi) 
	values(
	@noiDung,		
	@loiGiai,		
	@dapAnA	,		
	@dapAnB	,		
	@dapAnC	,		
	@dapAnD	,		
	@dapAnDung,		
	@IMG	,		
	@doKho   ,      
	@vungKienThuc,	
	@loaiCauHoi		
	)
end
GO
USE [master]
GO
ALTER DATABASE [DBThiTracNghiem] SET  READ_WRITE 
GO
