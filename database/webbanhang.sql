USE [master]
GO
/****** Object:  Database [WebBanHang]    Script Date: 8/6/2020 10:21:50 PM ******/
CREATE DATABASE [WebBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.QUOCHUNG\MSSQL\DATA\WebBanHang.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.QUOCHUNG\MSSQL\DATA\WebBanHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebBanHang] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebBanHang] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WebBanHang]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 8/6/2020 10:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[soluong] [int] NOT NULL,
	[id_hoadon] [bigint] NOT NULL,
	[id_sanpham] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chitietsanpham]    Script Date: 8/6/2020 10:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietsanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[anhchitiet] [ntext] NOT NULL,
	[id_sanpham] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 8/6/2020 10:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](191) NOT NULL,
	[sonha] [nvarchar](191) NOT NULL,
	[diachi] [nvarchar](191) NOT NULL,
	[dienthoai] [nvarchar](191) NOT NULL,
	[email] [nvarchar](191) NOT NULL,
	[ghichu] [ntext] NULL,
	[trangthai] [int] NOT NULL,
	[ngaydat] [datetime2](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 8/6/2020 10:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](191) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quan_huyens]    Script Date: 8/6/2020 10:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quan_huyens](
	[id] [int] NULL,
	[ten] [nvarchar](19) NULL,
	[donvi] [nvarchar](9) NULL,
	[tenkhongdau] [nvarchar](19) NULL,
	[tendaydu] [nvarchar](29) NULL,
	[tenthuong] [nvarchar](31) NULL,
	[tenhanhchinh] [nvarchar](46) NULL,
	[code] [int] NULL,
	[id_tinhthanhpho] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 8/6/2020 10:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tensanpham] [ntext] NOT NULL,
	[mota] [ntext] NOT NULL,
	[giagoc] [float] NOT NULL,
	[khuyenmai] [int] NOT NULL,
	[anhchinh] [ntext] NOT NULL,
	[tinhtrang] [int] NOT NULL,
	[luotthich] [int] NOT NULL,
	[id_loaisp] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 8/6/2020 10:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tentaikhoan] [nvarchar](191) NOT NULL,
	[email] [nvarchar](191) NOT NULL,
	[matkhau] [nvarchar](191) NOT NULL,
	[phanquyen] [nvarchar](191) NOT NULL,
	[tenhienthi] [nvarchar](191) NOT NULL,
	[hinhanh] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tinh_thanh_phos]    Script Date: 8/6/2020 10:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tinh_thanh_phos](
	[id] [int] NULL,
	[ten] [nvarchar](17) NULL,
	[tenkhongdau] [nvarchar](15) NULL,
	[donvi] [nvarchar](9) NULL,
	[tendaydu] [nvarchar](22) NULL,
	[code] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xa_phuongs]    Script Date: 8/6/2020 10:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xa_phuongs](
	[id] [int] NULL,
	[ten] [nvarchar](20) NULL,
	[donvi] [nvarchar](8) NULL,
	[tenkhongdau] [nvarchar](20) NULL,
	[tendaydu] [nvarchar](29) NULL,
	[tenthuong] [nvarchar](42) NULL,
	[tenhanhchinh] [nvarchar](64) NULL,
	[code] [int] NULL,
	[id_quanhuyen] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[chitiethoadon] ON 

INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (1, 1, 1, 3)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (3, 1, 1, 4)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (4, 1, 2, 4)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (5, 1, 2, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (6, 3, 3, 3)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (7, 1, 3, 4)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (8, 3, 3, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (9, 1, 4, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (10, 1, 5, 5)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (11, 1, 5, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (12, 1, 6, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (13, 1, 6, 7)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (14, 1, 7, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (15, 1, 7, 5)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (16, 1, 7, 6)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (17, 1, 8, 8)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (18, 5, 9, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (19, 2, 16, 3)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (20, 1, 17, 1)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (21, 1, 18, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (22, 1, 19, 1)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (23, 2, 19, 2)
INSERT [dbo].[chitiethoadon] ([id], [soluong], [id_hoadon], [id_sanpham]) VALUES (24, 1, 20, 4)
SET IDENTITY_INSERT [dbo].[chitiethoadon] OFF
SET IDENTITY_INSERT [dbo].[chitietsanpham] ON 

INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (9, N'Ct1BanhMan1.jpg', 1)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (10, N'Ct2BanhMan1.jpg', 1)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (13, N'Ct3BanhMan1.jpg', 1)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (14, N'Ct4BanhMan1.jpg', 1)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (15, N'Ct1Banhngot1.png', 2)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (16, N'Ct2Banhngot1.png', 2)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (17, N'Ct3Banhngot1.png', 2)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (18, N'Ct4Banhngot1.png', 2)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (19, N'15424706715131banhngot2.jpg', 3)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (20, N'15424706804502banhngot2.jpg', 3)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (21, N'15424706882604banhngot2.jpg', 3)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (22, N'1542470697834banhngot2.jpg', 3)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (23, N'15424710348291banhngot3.jpg', 5)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (24, N'15424710424622banhngot3.jpg', 5)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (25, N'15424710510913banhngot3.jpg', 5)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (26, N'15424710579934banhngot3.jpg', 5)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (27, N'1542471960389camep1.jpg', 6)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (28, N'1542471967133camep2.jpg', 6)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (29, N'1542471975663camep4.jpg', 6)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (30, N'1542471982068capep3.jpg', 6)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (31, N'15424757003221nuocchanh.jpg', 7)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (32, N'15424757095082nuocchanh.jpg', 7)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (33, N'15424757176293nuocchanh.jpg', 7)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (34, N'15424757266834nuocchanh.jpg', 7)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (35, N'15424758184611trasua.png', 8)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (36, N'15424758259482trasua.jpg', 8)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (37, N'15424758349823trasua.jpg', 8)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (38, N'15424758423914trasua.jpg', 8)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (41, N'15424778620091banhngot4.jpg', 4)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (42, N'15424778705302banhngot4.jpg', 4)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (43, N'15424778795483banhngot4.jpg', 4)
INSERT [dbo].[chitietsanpham] ([id], [anhchitiet], [id_sanpham]) VALUES (44, N'15424778857633banhngot4.jpg', 4)
SET IDENTITY_INSERT [dbo].[chitietsanpham] OFF
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (1, N'Huỳnh Văn Thùy', N'Phường Hòa Hiệp Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', N'Thôn 5 An lâu 1', N'097365528', N'HuynhVan@gmail.com', N'Không có', 3, CAST(N'2018-11-26 02:05:12.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (2, N'Huỳnh Văn Thùy', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'Thôn 5 An lâu 1', N'0977977977', N'huynhvanthuy1997@gmail.com', N'giao hàng gấp trong 3 ngày tetsts', 1, CAST(N'2018-12-09 18:05:19.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (3, N'Huỳnh Văn Thùy', N'Phường An Mỹ, Thành phố Tam Kỳ, Tỉnh Quảng Nam', N'171 Hùng Vương', N'0977583016', N'huynhvanthuy1997@gmail.com', N'Không có gì', 2, CAST(N'2018-12-10 08:22:02.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (4, N'Trần Quang Tân', N'Phường Tân An, Thành phố Hội An, Tỉnh Quảng Nam', N'12 Lê Minh Hoàng', N'0936156285', N'tan@gmail.com', N'Không có', 2, CAST(N'2018-12-02 08:24:05.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (5, N'Nguyễn Châu', N'Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', N'12 Lý Thái Tổ', N'0936156285', N'tan@gmail.com', N'Trà sữa rất ngon', 2, CAST(N'2018-12-04 08:26:57.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (6, N'Nguyễn Thành Nam', N'Phường Minh An, Thành phố Hội An, Tỉnh Quảng Nam', N'12 An Dương Vương', N'0826153715', N'namthanh1739@gmail.com', N'Không cần ship nhanh', 2, CAST(N'2018-12-06 08:28:12.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (7, N'Lê Hoàng Chánh', N'Phường Hòa Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', N'33 Ngô Quyền', N'093723749', N'huynhhoang@gmail.com', N'Giao hàng nhanh nhé', 1, CAST(N'2018-12-10 08:29:35.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (8, N'Châu Thị Thi Ngân', N'Phường Bình Thuận, Quận Hải Châu, Thành phố Đà Nẵng', N'13 Hoàng Chính', N'09374635273', N'hoangchinh@gmail.com', N'Không có gì', 2, CAST(N'2018-12-10 08:31:58.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (9, N'HUYNH VAN tUHY', N'Phường Nam Dương, Quận Hải Châu, Thành phố Đà Nẵng', N'12 Duy Tân', N'0936156285', N'huynhhoang@gmail.com', N'Giao hàng nhanh', 0, CAST(N'2018-12-10 10:49:54.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (14, N'hung', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'0973468684', N'kakalot@gmail.com', N'tốc độ', 0, CAST(N'2019-04-14 18:50:01.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (15, N'hung', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'973468684', N'kakalot@gmail.com', N'tốc độ', 0, CAST(N'2019-04-14 19:02:58.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (16, N'admin', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'973468684', N'kidxizaiqb2@gmail.com', N'tốc độ', 0, CAST(N'2019-04-14 19:04:35.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (17, N'hùngcute', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'973468684', N'kidxizaiqb2@gmail.com', N'hrhr', 0, CAST(N'2019-04-14 19:16:49.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (18, N'admin12', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'973468684', N'kidxizaiqb2@gmail.com', N'tre', 0, CAST(N'2019-04-14 19:36:38.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (19, N'hung', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', N'131 Trần phú', N'0973468684', N'kidxizaiqb@gmail.com', N'test', 0, CAST(N'2019-04-16 00:53:56.0000000' AS DateTime2))
INSERT [dbo].[hoadon] ([id], [hoten], [sonha], [diachi], [dienthoai], [email], [ghichu], [trangthai], [ngaydat]) VALUES (20, N'hung', N'Phường Hòa Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', N'quang binh', N'973468684', N'kidxizaiqb@gmail.com', N'haha', 0, CAST(N'2019-08-16 23:56:18.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[hoadon] OFF
SET IDENTITY_INSERT [dbo].[loaisanpham] ON 

INSERT [dbo].[loaisanpham] ([id], [tenloai]) VALUES (1, N'Bánh mặn abc')
INSERT [dbo].[loaisanpham] ([id], [tenloai]) VALUES (2, N'Bánh ngọt')
INSERT [dbo].[loaisanpham] ([id], [tenloai]) VALUES (3, N'Nước uống')
INSERT [dbo].[loaisanpham] ([id], [tenloai]) VALUES (4, N'Trà sữa')
SET IDENTITY_INSERT [dbo].[loaisanpham] OFF
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (0, N'', N'', N'', N'', N'', N'', 0, 0)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (490, N'Liên Chiểu', N'quan', N'lien-chieu', N'Quận Liên Chiểu', N'Liên Chiểu, Đà Nẵng', N'Quận Liên Chiểu, Thành phố Đà Nẵng', 490, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (491, N'Thanh Khê', N'quan', N'thanh-khe', N'Quận Thanh Khê', N'Thanh Khê, Đà Nẵng', N'Quận Thanh Khê, Thành phố Đà Nẵng', 491, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (492, N'Hải Châu', N'quan', N'hai-chau', N'Quận Hải Châu', N'Hải Châu, Đà Nẵng', N'Quận Hải Châu, Thành phố Đà Nẵng', 492, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (493, N'Sơn Trà', N'quan', N'son-tra', N'Quận Sơn Trà', N'Sơn Trà, Đà Nẵng', N'Quận Sơn Trà, Thành phố Đà Nẵng', 493, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (494, N'Ngũ Hành Sơn', N'quan', N'ngu-hanh-son', N'Quận Ngũ Hành Sơn', N'Ngũ Hành Sơn, Đà Nẵng', N'Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 494, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (495, N'Cẩm Lệ', N'quan', N'cam-le', N'Quận Cẩm Lệ', N'Cẩm Lệ, Đà Nẵng', N'Quận Cẩm Lệ, Thành phố Đà Nẵng', 495, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (497, N'Hòa Vang', N'huyen', N'hoa-vang', N'Huyện Hòa Vang', N'Hòa Vang, Đà Nẵng', N'Huyện Hòa Vang, Thành phố Đà Nẵng', 497, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (502, N'Tam Kỳ', N'thanh-pho', N'tam-ky', N'Thành phố Tam Kỳ', N'Tam Kỳ, Quảng Nam', N'Thành phố Tam Kỳ, Tỉnh Quảng Nam', 502, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (503, N'Hội An', N'thanh-pho', N'hoi-an', N'Thành phố Hội An', N'Hội An, Quảng Nam', N'Thành phố Hội An, Tỉnh Quảng Nam', 503, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (504, N'Tây Giang', N'huyen', N'tay-giang', N'Huyện Tây Giang', N'Tây Giang, Quảng Nam', N'Huyện Tây Giang, Tỉnh Quảng Nam', 504, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (505, N'Đông Giang', N'huyen', N'dong-giang', N'Huyện Đông Giang', N'Đông Giang, Quảng Nam', N'Huyện Đông Giang, Tỉnh Quảng Nam', 505, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (506, N'Đại Lộc', N'huyen', N'dai-loc', N'Huyện Đại Lộc', N'Đại Lộc, Quảng Nam', N'Huyện Đại Lộc, Tỉnh Quảng Nam', 506, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (507, N'Điện Bàn', N'thi-xa', N'dien-ban', N'Thị xã Điện Bàn', N'Điện Bàn, Quảng Nam', N'Thị xã Điện Bàn, Tỉnh Quảng Nam', 507, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (508, N'Duy Xuyên', N'huyen', N'duy-xuyen', N'Huyện Duy Xuyên', N'Duy Xuyên, Quảng Nam', N'Huyện Duy Xuyên, Tỉnh Quảng Nam', 508, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (509, N'Quế Sơn', N'huyen', N'que-son', N'Huyện Quế Sơn', N'Quế Sơn, Quảng Nam', N'Huyện Quế Sơn, Tỉnh Quảng Nam', 509, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (510, N'Nam Giang', N'huyen', N'nam-giang', N'Huyện Nam Giang', N'Nam Giang, Quảng Nam', N'Huyện Nam Giang, Tỉnh Quảng Nam', 510, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (511, N'Phước Sơn', N'huyen', N'phuoc-son', N'Huyện Phước Sơn', N'Phước Sơn, Quảng Nam', N'Huyện Phước Sơn, Tỉnh Quảng Nam', 511, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (512, N'Hiệp Đức', N'huyen', N'hiep-duc', N'Huyện Hiệp Đức', N'Hiệp Đức, Quảng Nam', N'Huyện Hiệp Đức, Tỉnh Quảng Nam', 512, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (513, N'Thăng Bình', N'huyen', N'thang-binh', N'Huyện Thăng Bình', N'Thăng Bình, Quảng Nam', N'Huyện Thăng Bình, Tỉnh Quảng Nam', 513, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (514, N'Tiên Phước', N'huyen', N'tien-phuoc', N'Huyện Tiên Phước', N'Tiên Phước, Quảng Nam', N'Huyện Tiên Phước, Tỉnh Quảng Nam', 514, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (515, N'Bắc Trà My', N'huyen', N'bac-tra-my', N'Huyện Bắc Trà My', N'Bắc Trà My, Quảng Nam', N'Huyện Bắc Trà My, Tỉnh Quảng Nam', 515, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (516, N'Nam Trà My', N'huyen', N'nam-tra-my', N'Huyện Nam Trà My', N'Nam Trà My, Quảng Nam', N'Huyện Nam Trà My, Tỉnh Quảng Nam', 516, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (517, N'Núi Thành', N'huyen', N'nui-thanh', N'Huyện Núi Thành', N'Núi Thành, Quảng Nam', N'Huyện Núi Thành, Tỉnh Quảng Nam', 517, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (518, N'Phú Ninh', N'huyen', N'phu-ninh', N'Huyện Phú Ninh', N'Phú Ninh, Quảng Nam', N'Huyện Phú Ninh, Tỉnh Quảng Nam', 518, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (519, N'Nông Sơn', N'huyen', N'nong-son', N'Huyện Nông Sơn', N'Nông Sơn, Quảng Nam', N'Huyện Nông Sơn, Tỉnh Quảng Nam', 519, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (0, N'', N'', N'', N'', N'', N'', 0, 0)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (490, N'Liên Chiểu', N'quan', N'lien-chieu', N'Quận Liên Chiểu', N'Liên Chiểu, Đà Nẵng', N'Quận Liên Chiểu, Thành phố Đà Nẵng', 490, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (491, N'Thanh Khê', N'quan', N'thanh-khe', N'Quận Thanh Khê', N'Thanh Khê, Đà Nẵng', N'Quận Thanh Khê, Thành phố Đà Nẵng', 491, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (492, N'Hải Châu', N'quan', N'hai-chau', N'Quận Hải Châu', N'Hải Châu, Đà Nẵng', N'Quận Hải Châu, Thành phố Đà Nẵng', 492, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (493, N'Sơn Trà', N'quan', N'son-tra', N'Quận Sơn Trà', N'Sơn Trà, Đà Nẵng', N'Quận Sơn Trà, Thành phố Đà Nẵng', 493, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (494, N'Ngũ Hành Sơn', N'quan', N'ngu-hanh-son', N'Quận Ngũ Hành Sơn', N'Ngũ Hành Sơn, Đà Nẵng', N'Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 494, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (495, N'Cẩm Lệ', N'quan', N'cam-le', N'Quận Cẩm Lệ', N'Cẩm Lệ, Đà Nẵng', N'Quận Cẩm Lệ, Thành phố Đà Nẵng', 495, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (497, N'Hòa Vang', N'huyen', N'hoa-vang', N'Huyện Hòa Vang', N'Hòa Vang, Đà Nẵng', N'Huyện Hòa Vang, Thành phố Đà Nẵng', 497, 48)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (502, N'Tam Kỳ', N'thanh-pho', N'tam-ky', N'Thành phố Tam Kỳ', N'Tam Kỳ, Quảng Nam', N'Thành phố Tam Kỳ, Tỉnh Quảng Nam', 502, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (503, N'Hội An', N'thanh-pho', N'hoi-an', N'Thành phố Hội An', N'Hội An, Quảng Nam', N'Thành phố Hội An, Tỉnh Quảng Nam', 503, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (504, N'Tây Giang', N'huyen', N'tay-giang', N'Huyện Tây Giang', N'Tây Giang, Quảng Nam', N'Huyện Tây Giang, Tỉnh Quảng Nam', 504, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (505, N'Đông Giang', N'huyen', N'dong-giang', N'Huyện Đông Giang', N'Đông Giang, Quảng Nam', N'Huyện Đông Giang, Tỉnh Quảng Nam', 505, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (506, N'Đại Lộc', N'huyen', N'dai-loc', N'Huyện Đại Lộc', N'Đại Lộc, Quảng Nam', N'Huyện Đại Lộc, Tỉnh Quảng Nam', 506, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (507, N'Điện Bàn', N'thi-xa', N'dien-ban', N'Thị xã Điện Bàn', N'Điện Bàn, Quảng Nam', N'Thị xã Điện Bàn, Tỉnh Quảng Nam', 507, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (508, N'Duy Xuyên', N'huyen', N'duy-xuyen', N'Huyện Duy Xuyên', N'Duy Xuyên, Quảng Nam', N'Huyện Duy Xuyên, Tỉnh Quảng Nam', 508, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (509, N'Quế Sơn', N'huyen', N'que-son', N'Huyện Quế Sơn', N'Quế Sơn, Quảng Nam', N'Huyện Quế Sơn, Tỉnh Quảng Nam', 509, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (510, N'Nam Giang', N'huyen', N'nam-giang', N'Huyện Nam Giang', N'Nam Giang, Quảng Nam', N'Huyện Nam Giang, Tỉnh Quảng Nam', 510, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (511, N'Phước Sơn', N'huyen', N'phuoc-son', N'Huyện Phước Sơn', N'Phước Sơn, Quảng Nam', N'Huyện Phước Sơn, Tỉnh Quảng Nam', 511, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (512, N'Hiệp Đức', N'huyen', N'hiep-duc', N'Huyện Hiệp Đức', N'Hiệp Đức, Quảng Nam', N'Huyện Hiệp Đức, Tỉnh Quảng Nam', 512, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (513, N'Thăng Bình', N'huyen', N'thang-binh', N'Huyện Thăng Bình', N'Thăng Bình, Quảng Nam', N'Huyện Thăng Bình, Tỉnh Quảng Nam', 513, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (514, N'Tiên Phước', N'huyen', N'tien-phuoc', N'Huyện Tiên Phước', N'Tiên Phước, Quảng Nam', N'Huyện Tiên Phước, Tỉnh Quảng Nam', 514, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (515, N'Bắc Trà My', N'huyen', N'bac-tra-my', N'Huyện Bắc Trà My', N'Bắc Trà My, Quảng Nam', N'Huyện Bắc Trà My, Tỉnh Quảng Nam', 515, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (516, N'Nam Trà My', N'huyen', N'nam-tra-my', N'Huyện Nam Trà My', N'Nam Trà My, Quảng Nam', N'Huyện Nam Trà My, Tỉnh Quảng Nam', 516, 49)
INSERT [dbo].[quan_huyens] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_tinhthanhpho]) VALUES (517, N'Núi Thành', N'huyen', N'nui-thanh', N'Huyện Núi Thành', N'Núi Thành, Quảng Nam', N'Huyện Núi Thành, Tỉnh Quảng Nam', 517, 49)
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (1, N'Bánh ổ mặn', N'Bánh ổ mặn được làm từ thành phần chủ yếu là bột gạo pha với ít bột mì cùng với nước cốt dừa, thêm chút gia vị đường, muối và được chế biến bằng phương pháp hấp cách thủy. Nước bột bánh sau k', 20000, 5, N'BanhMan1.png', 1, 100, 1)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (2, N'Panna cotta', N'Panna cotta thực chất là một món kem nấu của Ý. Món ăn này được làm ra bằng cách đun liu riu kem, sữa, đường và gelatin với nhau, sau đó để lạnh cho đông lại.
Panna cotta có nguồn gốc từ vùn', 20000, 0, N'BanhNgot1.png', 1, 323, 2)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (3, N'Biscotti', N'Không phải tự nhiên mà người ta gọi Biscotti là chiếc bánh “thách thức thời gian”. Bánh xuất hiện từ thế kỉ XVIII, đã tồn tại, gắn bó với người dân nơi đây. Khác hẳn với những loại bánh ngọt ', 13000, 2, N'BanhNgot2.png', 1, 1238, 2)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (4, N'Tartufo di Pizzo', N'Bánh Tartufo di Pizzo là đặc sản vùng Calabria và có nguồn gốc từ thời cổ xưa. Trong một chiếc bánh tartufo di pizzo thường gồm nhiều hơn hai hương vị khác nhau, thành phần chủ yếu là kem, vớ', 40000, 5, N'BanhNgot3.png', 0, 3853, 2)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (5, N'Bánh Cannoli ', N'Đúng như tên gọi, bánh cannoli bao gồm một lớp pastry được uốn cong thành hình chiếc ống, bên trong có nhân kem ngọt, hoặc thêm hoa quả. Kích thước của món bánh này có thể thay đổi tùy theo v', 30000, 4, N'BanhNgot4.png', 0, 5302, 2)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (6, N'Cam ép nguyên chất', N'Nước cam ép nguyên chất 
Ngày hè oi bức với nhiệt độ ngoài trời có khi lên tới 40 độ C 
Làm sao lại phải đi ra ngoài trong khi bạn hoàn toàn có thể ngồi tại chỗ và gọi cho mình ly nước cam mát ngọt thiên nhiên đầy năng lượng 
Nước ép cam tươi nguyên chất tại Lắc Coffee được chắt lọc từ những trái cam tươi ngon, chín mọng, cho ra sản phẩm là chai nước cam đỏ tươi ngọt dịu hòa vị chua thanh cùng với đá mát lạnh', 15000, 0, N'NuocUong.png', 1, 123, 3)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (7, N'Nước chanh đá', N'Chanh là một loại hoa quả được rất nhiều chị em phụ nữ yêu thích vì giá trị dinh dưỡng cao và tác dụng làm đẹp, giảm cân tự nhiên của chúng. Nhưng ít người biết hết được những công dụng bảo vệ sức khỏe tuyệt vời của chúng như nâng cao sức đề kháng và phòng ngừa một số bệnh.', 20000, 0, N'NuocUong1.png', 0, 32, 3)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (8, N'Đài Loan socola', N'Trà sữa là một món ăn vặt, là thức uống giải khát quen thuộc, đặc biệt là đối với trẻ nhỏ. Với hương vị thơm ngon béo ngậy của socola, đậm đà dễ uống, trà đen mát giải nhiệt, dùng kèm với trân châu dai dai hoặc thạch rau câu giòn, không ít người “mê mẩn” món trà sữa socola.', 45000, 2, N'TraSua1.png', 1, 462, 4)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (12, N'Bánh ép 23', N'32333', 12000, 0, N'1555069357498icon.jpg', 0, 0, 1)
INSERT [dbo].[sanpham] ([id], [tensanpham], [mota], [giagoc], [khuyenmai], [anhchinh], [tinhtrang], [luotthich], [id_loaisp]) VALUES (13, N'Bánh ép 23', N'33333', 23333, 0, N'15550625902044.jpg', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
SET IDENTITY_INSERT [dbo].[taikhoan] ON 

INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (10, N'admin', N'hunghihi@gmail.com', N'123456', N'1', N'Hung Cute', N'avata.png')
INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (11, N'kh', N'khachhang@gmail.com', N'12345678', N'0', N'Anymous', N'avata.png')
INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (14, N'hunghihi', N'kidxizaiqb@gmail.com', N'123456', N'0', N'hung', N'avata.png')
INSERT [dbo].[taikhoan] ([id], [tentaikhoan], [email], [matkhau], [phanquyen], [tenhienthi], [hinhanh]) VALUES (17, N'hunghihi2', N'kakalot2@gmail.com', N'123456', N'0', N'hungdaik', N'avata.png')
SET IDENTITY_INSERT [dbo].[taikhoan] OFF
INSERT [dbo].[tinh_thanh_phos] ([id], [ten], [tenkhongdau], [donvi], [tendaydu], [code]) VALUES (0, N'', N'', N'', N'', 0)
INSERT [dbo].[tinh_thanh_phos] ([id], [ten], [tenkhongdau], [donvi], [tendaydu], [code]) VALUES (48, N'Đà Nẵng', N'da-nang', N'thanh-pho', N'Thành phố Đà Nẵng', 48)
INSERT [dbo].[tinh_thanh_phos] ([id], [ten], [tenkhongdau], [donvi], [tendaydu], [code]) VALUES (49, N'Quảng Nam', N'quang-nam', N'tinh', N'Tỉnh Quảng Nam', 49)
INSERT [dbo].[tinh_thanh_phos] ([id], [ten], [tenkhongdau], [donvi], [tendaydu], [code]) VALUES (0, N'', N'', N'', N'', 0)
INSERT [dbo].[tinh_thanh_phos] ([id], [ten], [tenkhongdau], [donvi], [tendaydu], [code]) VALUES (48, N'Đà Nẵng', N'da-nang', N'thanh-pho', N'Thành phố Đà Nẵng', 48)
INSERT [dbo].[tinh_thanh_phos] ([id], [ten], [tenkhongdau], [donvi], [tendaydu], [code]) VALUES (49, N'Quảng Nam', N'quang-nam', N'tinh', N'Tỉnh Quảng Nam', 49)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20194, N'Hòa Hiệp Bắc', N'phuong', N'hoa-hiep-bac', N'Phường Hòa Hiệp Bắc', N'Hòa Hiệp Bắc, Liên Chiểu, Đà Nẵng', N'Phường Hòa Hiệp Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 20194, 490)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20195, N'Hòa Hiệp Nam', N'phuong', N'hoa-hiep-nam', N'Phường Hòa Hiệp Nam', N'Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng', N'Phường Hòa Hiệp Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 20195, 490)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20197, N'Hòa Khánh Bắc', N'phuong', N'hoa-khanh-bac', N'Phường Hòa Khánh Bắc', N'Hòa Khánh Bắc, Liên Chiểu, Đà Nẵng', N'Phường Hòa Khánh Bắc, Quận Liên Chiểu, Thành phố Đà Nẵng', 20197, 490)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20198, N'Hòa Khánh Nam', N'phuong', N'hoa-khanh-nam', N'Phường Hòa Khánh Nam', N'Hòa Khánh Nam, Liên Chiểu, Đà Nẵng', N'Phường Hòa Khánh Nam, Quận Liên Chiểu, Thành phố Đà Nẵng', 20198, 490)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20200, N'Hòa Minh', N'phuong', N'hoa-minh', N'Phường Hòa Minh', N'Hòa Minh, Liên Chiểu, Đà Nẵng', N'Phường Hòa Minh, Quận Liên Chiểu, Thành phố Đà Nẵng', 20200, 490)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20203, N'Tam Thuận', N'phuong', N'tam-thuan', N'Phường Tam Thuận', N'Tam Thuận, Thanh Khê, Đà Nẵng', N'Phường Tam Thuận, Quận Thanh Khê, Thành phố Đà Nẵng', 20203, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20206, N'Thanh Khê Tây', N'phuong', N'thanh-khe-tay', N'Phường Thanh Khê Tây', N'Thanh Khê Tây, Thanh Khê, Đà Nẵng', N'Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', 20206, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20207, N'Thanh Khê Đông', N'phuong', N'thanh-khe-dong', N'Phường Thanh Khê Đông', N'Thanh Khê Đông, Thanh Khê, Đà Nẵng', N'Phường Thanh Khê Đông, Quận Thanh Khê, Thành phố Đà Nẵng', 20207, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20209, N'Xuân Hà', N'phuong', N'xuan-ha', N'Phường Xuân Hà', N'Xuân Hà, Thanh Khê, Đà Nẵng', N'Phường Xuân Hà, Quận Thanh Khê, Thành phố Đà Nẵng', 20209, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20212, N'Tân Chính', N'phuong', N'tan-chinh', N'Phường Tân Chính', N'Tân Chính, Thanh Khê, Đà Nẵng', N'Phường Tân Chính, Quận Thanh Khê, Thành phố Đà Nẵng', 20212, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20215, N'Chính Gián', N'phuong', N'chinh-gian', N'Phường Chính Gián', N'Chính Gián, Thanh Khê, Đà Nẵng', N'Phường Chính Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 20215, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20218, N'Vĩnh Trung', N'phuong', N'vinh-trung', N'Phường Vĩnh Trung', N'Vĩnh Trung, Thanh Khê, Đà Nẵng', N'Phường Vĩnh Trung, Quận Thanh Khê, Thành phố Đà Nẵng', 20218, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20221, N'Thạc Gián', N'phuong', N'thac-gian', N'Phường Thạc Gián', N'Thạc Gián, Thanh Khê, Đà Nẵng', N'Phường Thạc Gián, Quận Thanh Khê, Thành phố Đà Nẵng', 20221, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20224, N'An Khê', N'phuong', N'an-khe', N'Phường An Khê', N'An Khê, Thanh Khê, Đà Nẵng', N'Phường An Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 20224, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20225, N'Hòa Khê', N'phuong', N'hoa-khe', N'Phường Hòa Khê', N'Hòa Khê, Thanh Khê, Đà Nẵng', N'Phường Hòa Khê, Quận Thanh Khê, Thành phố Đà Nẵng', 20225, 491)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20227, N'Thanh Bình', N'phuong', N'thanh-binh', N'Phường Thanh Bình', N'Thanh Bình, Hải Châu, Đà Nẵng', N'Phường Thanh Bình, Quận Hải Châu, Thành phố Đà Nẵng', 20227, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20230, N'Thuận Phước', N'phuong', N'thuan-phuoc', N'Phường Thuận Phước', N'Thuận Phước, Hải Châu, Đà Nẵng', N'Phường Thuận Phước, Quận Hải Châu, Thành phố Đà Nẵng', 20230, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20233, N'Thạch Thang', N'phuong', N'thach-thang', N'Phường Thạch Thang', N'Thạch Thang, Hải Châu, Đà Nẵng', N'Phường Thạch Thang, Quận Hải Châu, Thành phố Đà Nẵng', 20233, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20236, N'Hải Châu  I', N'phuong', N'hai-chau-i', N'Phường Hải Châu  I', N'Hải Châu  I, Hải Châu, Đà Nẵng', N'Phường Hải Châu  I, Quận Hải Châu, Thành phố Đà Nẵng', 20236, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20239, N'Hải Châu II', N'phuong', N'hai-chau-ii', N'Phường Hải Châu II', N'Hải Châu II, Hải Châu, Đà Nẵng', N'Phường Hải Châu II, Quận Hải Châu, Thành phố Đà Nẵng', 20239, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20242, N'Phước Ninh', N'phuong', N'phuoc-ninh', N'Phường Phước Ninh', N'Phước Ninh, Hải Châu, Đà Nẵng', N'Phường Phước Ninh, Quận Hải Châu, Thành phố Đà Nẵng', 20242, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20245, N'Hòa Thuận Tây', N'phuong', N'hoa-thuan-tay', N'Phường Hòa Thuận Tây', N'Hòa Thuận Tây, Hải Châu, Đà Nẵng', N'Phường Hòa Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng', 20245, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20246, N'Hòa Thuận Đông', N'phuong', N'hoa-thuan-dong', N'Phường Hòa Thuận Đông', N'Hòa Thuận Đông, Hải Châu, Đà Nẵng', N'Phường Hòa Thuận Đông, Quận Hải Châu, Thành phố Đà Nẵng', 20246, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20248, N'Nam Dương', N'phuong', N'nam-duong', N'Phường Nam Dương', N'Nam Dương, Hải Châu, Đà Nẵng', N'Phường Nam Dương, Quận Hải Châu, Thành phố Đà Nẵng', 20248, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20251, N'Bình Hiên', N'phuong', N'binh-hien', N'Phường Bình Hiên', N'Bình Hiên, Hải Châu, Đà Nẵng', N'Phường Bình Hiên, Quận Hải Châu, Thành phố Đà Nẵng', 20251, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20254, N'Bình Thuận', N'phuong', N'binh-thuan', N'Phường Bình Thuận', N'Bình Thuận, Hải Châu, Đà Nẵng', N'Phường Bình Thuận, Quận Hải Châu, Thành phố Đà Nẵng', 20254, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20257, N'Hòa Cường Bắc', N'phuong', N'hoa-cuong-bac', N'Phường Hòa Cường Bắc', N'Hòa Cường Bắc, Hải Châu, Đà Nẵng', N'Phường Hòa Cường Bắc, Quận Hải Châu, Thành phố Đà Nẵng', 20257, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20258, N'Hòa Cường Nam', N'phuong', N'hoa-cuong-nam', N'Phường Hòa Cường Nam', N'Hòa Cường Nam, Hải Châu, Đà Nẵng', N'Phường Hòa Cường Nam, Quận Hải Châu, Thành phố Đà Nẵng', 20258, 492)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20263, N'Thọ Quang', N'phuong', N'tho-quang', N'Phường Thọ Quang', N'Thọ Quang, Sơn Trà, Đà Nẵng', N'Phường Thọ Quang, Quận Sơn Trà, Thành phố Đà Nẵng', 20263, 493)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20266, N'Nại Hiên Đông', N'phuong', N'nai-hien-dong', N'Phường Nại Hiên Đông', N'Nại Hiên Đông, Sơn Trà, Đà Nẵng', N'Phường Nại Hiên Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 20266, 493)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20269, N'Mân Thái', N'phuong', N'man-thai', N'Phường Mân Thái', N'Mân Thái, Sơn Trà, Đà Nẵng', N'Phường Mân Thái, Quận Sơn Trà, Thành phố Đà Nẵng', 20269, 493)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20272, N'An Hải Bắc', N'phuong', N'an-hai-bac', N'Phường An Hải Bắc', N'An Hải Bắc, Sơn Trà, Đà Nẵng', N'Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng', 20272, 493)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20275, N'Phước Mỹ', N'phuong', N'phuoc-my', N'Phường Phước Mỹ', N'Phước Mỹ, Sơn Trà, Đà Nẵng', N'Phường Phước Mỹ, Quận Sơn Trà, Thành phố Đà Nẵng', 20275, 493)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20278, N'An Hải Tây', N'phuong', N'an-hai-tay', N'Phường An Hải Tây', N'An Hải Tây, Sơn Trà, Đà Nẵng', N'Phường An Hải Tây, Quận Sơn Trà, Thành phố Đà Nẵng', 20278, 493)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20281, N'An Hải Đông', N'phuong', N'an-hai-dong', N'Phường An Hải Đông', N'An Hải Đông, Sơn Trà, Đà Nẵng', N'Phường An Hải Đông, Quận Sơn Trà, Thành phố Đà Nẵng', 20281, 493)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20284, N'Mỹ An', N'phuong', N'my-an', N'Phường Mỹ An', N'Mỹ An, Ngũ Hành Sơn, Đà Nẵng', N'Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 20284, 494)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20285, N'Khuê Mỹ', N'phuong', N'khue-my', N'Phường Khuê Mỹ', N'Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng', N'Phường Khuê Mỹ, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 20285, 494)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20287, N'Hoà Quý', N'phuong', N'hoa-quy', N'Phường Hoà Quý', N'Hoà Quý, Ngũ Hành Sơn, Đà Nẵng', N'Phường Hoà Quý, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 20287, 494)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20290, N'Hoà Hải', N'phuong', N'hoa-hai', N'Phường Hoà Hải', N'Hoà Hải, Ngũ Hành Sơn, Đà Nẵng', N'Phường Hoà Hải, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 20290, 494)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20260, N'Khuê Trung', N'phuong', N'khue-trung', N'Phường Khuê Trung', N'Khuê Trung, Cẩm Lệ, Đà Nẵng', N'Phường Khuê Trung, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20260, 495)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20305, N'Hòa Phát', N'phuong', N'hoa-phat', N'Phường Hòa Phát', N'Hòa Phát, Cẩm Lệ, Đà Nẵng', N'Phường Hòa Phát, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20305, 495)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20306, N'Hòa An', N'phuong', N'hoa-an', N'Phường Hòa An', N'Hòa An, Cẩm Lệ, Đà Nẵng', N'Phường Hòa An, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20306, 495)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20311, N'Hòa Thọ Tây', N'phuong', N'hoa-tho-tay', N'Phường Hòa Thọ Tây', N'Hòa Thọ Tây, Cẩm Lệ, Đà Nẵng', N'Phường Hòa Thọ Tây, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20311, 495)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20312, N'Hòa Thọ Đông', N'phuong', N'hoa-tho-dong', N'Phường Hòa Thọ Đông', N'Hòa Thọ Đông, Cẩm Lệ, Đà Nẵng', N'Phường Hòa Thọ Đông, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20312, 495)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20314, N'Hòa Xuân', N'phuong', N'hoa-xuan', N'Phường Hòa Xuân', N'Hòa Xuân, Cẩm Lệ, Đà Nẵng', N'Phường Hòa Xuân, Quận Cẩm Lệ, Thành phố Đà Nẵng', 20314, 495)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20293, N'Hòa Bắc', N'xa', N'hoa-bac', N'Xã Hòa Bắc', N'Hòa Bắc, Hòa Vang, Đà Nẵng', N'Xã Hòa Bắc, Huyện Hòa Vang, Thành phố Đà Nẵng', 20293, 497)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20296, N'Hòa Liên', N'xa', N'hoa-lien', N'Xã Hòa Liên', N'Hòa Liên, Hòa Vang, Đà Nẵng', N'Xã Hòa Liên, Huyện Hòa Vang, Thành phố Đà Nẵng', 20296, 497)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20299, N'Hòa Ninh', N'xa', N'hoa-ninh', N'Xã Hòa Ninh', N'Hòa Ninh, Hòa Vang, Đà Nẵng', N'Xã Hòa Ninh, Huyện Hòa Vang, Thành phố Đà Nẵng', 20299, 497)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20302, N'Hòa Sơn', N'xa', N'hoa-son', N'Xã Hòa Sơn', N'Hòa Sơn, Hòa Vang, Đà Nẵng', N'Xã Hòa Sơn, Huyện Hòa Vang, Thành phố Đà Nẵng', 20302, 497)
INSERT [dbo].[xa_phuongs] ([id], [ten], [donvi], [tenkhongdau], [tendaydu], [tenthuong], [tenhanhchinh], [code], [id_quanhuyen]) VALUES (20308, N'Hòa Nhơn', N'xa', N'hoa-nhon', N'Xã Hòa Nhơn', N'Hòa Nhơn, Hòa Vang, Đà Nẵng', N'Xã Hòa Nhơn, Huyện Hòa Vang, Thành phố Đà Nẵng', 20308, 497)
/****** Object:  Index [chitiethoadon_id_hoadon_foreign]    Script Date: 8/6/2020 10:21:51 PM ******/
CREATE NONCLUSTERED INDEX [chitiethoadon_id_hoadon_foreign] ON [dbo].[chitiethoadon]
(
	[id_hoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [chitiethoadon_id_sanpham_foreign]    Script Date: 8/6/2020 10:21:51 PM ******/
CREATE NONCLUSTERED INDEX [chitiethoadon_id_sanpham_foreign] ON [dbo].[chitiethoadon]
(
	[id_sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [chitietsanpham_id_sanpham_foreign]    Script Date: 8/6/2020 10:21:51 PM ******/
CREATE NONCLUSTERED INDEX [chitietsanpham_id_sanpham_foreign] ON [dbo].[chitietsanpham]
(
	[id_sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [sanpham_id_loaisp_foreign]    Script Date: 8/6/2020 10:21:51 PM ******/
CREATE NONCLUSTERED INDEX [sanpham_id_loaisp_foreign] ON [dbo].[sanpham]
(
	[id_loaisp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [taikhoan_email_unique]    Script Date: 8/6/2020 10:21:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [taikhoan_email_unique] ON [dbo].[taikhoan]
(
	[email] ASC
)
WHERE ([email] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_hoadon] FOREIGN KEY([id_hoadon])
REFERENCES [dbo].[hoadon] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_hoadon]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_sanpham] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[sanpham] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_sanpham]
GO
ALTER TABLE [dbo].[chitietsanpham]  WITH CHECK ADD  CONSTRAINT [FK_chitietsanpham_sanpham] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[sanpham] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitietsanpham] CHECK CONSTRAINT [FK_chitietsanpham_sanpham]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_loaisanpham] FOREIGN KEY([id_loaisp])
REFERENCES [dbo].[loaisanpham] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_loaisanpham]
GO
USE [master]
GO
ALTER DATABASE [WebBanHang] SET  READ_WRITE 
GO
