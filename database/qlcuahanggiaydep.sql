USE [master]
GO
/****** Object:  Database [QuanLyCuaHangGiayDep]    Script Date: 02/06/2022 11:31:12 CH ******/
CREATE DATABASE [QuanLyCuaHangGiayDep]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyCuaHangGiayDep', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QuanLyCuaHangGiayDep.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyCuaHangGiayDep_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QuanLyCuaHangGiayDep_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyCuaHangGiayDep].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyCuaHangGiayDep', N'ON'
GO
USE [QuanLyCuaHangGiayDep]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MaCTSP] [int] NOT NULL,
	[MaDH] [int] NOT NULL,
	[Gia] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_CHIITETHOADON_1] PRIMARY KEY CLUSTERED 
(
	[MaCTSP] ASC,
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[MaPhieuNhap] [int] NOT NULL,
	[MaChiTietSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_CHITIETPHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETSANPHAM]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETSANPHAM](
	[MaChiTietSP] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaSize] [int] NOT NULL,
 CONSTRAINT [PK_CHITETSANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANHMUCSANPHAM]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCSANPHAM](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DANHMUCSANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [varchar](10) NULL,
	[MaKH] [varchar](10) NOT NULL,
	[ThoiGian] [date] NOT NULL,
	[SDTKH] [varchar](12) NOT NULL,
	[DiaChi] [nvarchar](70) NOT NULL,
	[GhiChu] [ntext] NOT NULL,
	[HinhThucThanhToan] [int] NOT NULL,
	[TinhTrangDonHang] [int] NOT NULL,
	[TongTien] [float] NOT NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[MaKH] [varchar](10) NOT NULL,
	[MaChiTietSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HINHTHUCTHANHTOAN]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHTHUCTHANHTOAN](
	[MaHTTT] [int] IDENTITY(1,1) NOT NULL,
	[KieuTT] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_HINHTHUCTHANHTOAN] PRIMARY KEY CLUSTERED 
(
	[MaHTTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [varchar](10) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [ntext] NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[MaTK] [varchar](10) NOT NULL,
	[Anh] [varchar](1000) NULL,
	[Phai] [bit] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAUSANPHAM]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAUSANPHAM](
	[MaMau] [int] IDENTITY(1,1) NOT NULL,
	[TenMau] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_MAUSANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[DiaChi] [nvarchar](225) NOT NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [varchar](10) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[CCCD] [varchar](15) NOT NULL,
	[DiaChi] [ntext] NOT NULL,
	[SDT] [varchar](11) NOT NULL,
	[MaTK] [varchar](10) NOT NULL,
	[Anh] [varchar](1000) NULL,
	[Phai] [bit] NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGian] [date] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaNCC] [int] NOT NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[MoTa] [ntext] NULL,
	[Gia] [float] NOT NULL,
	[GiamGia] [float] NULL CONSTRAINT [DF_SANPHAM_GiamGia]  DEFAULT ((0)),
	[MaDanhMuc] [int] NOT NULL,
	[Phai] [bit] NOT NULL,
	[HinhAnh] [varchar](70) NOT NULL,
	[MaMau] [int] NOT NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIZESANPHAM]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZESANPHAM](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_SIZESANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MaTK] [varchar](10) NOT NULL,
	[MatKhau] [varchar](100) NOT NULL,
	[MaVaiTro] [varchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRANGTHAIDONHANG]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTHAIDONHANG](
	[MaTTDH] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TRANGTHAIDONHANG] PRIMARY KEY CLUSTERED 
(
	[MaTTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VAITRO]    Script Date: 02/06/2022 11:31:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VAITRO](
	[MaVT] [varchar](10) NOT NULL,
	[TenVT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CHUCVU] PRIMARY KEY CLUSTERED 
(
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (2, 2, 550000, 1)
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (14, 16, 2500000, 3)
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (15, 15, 2500000, 1)
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (41, 13, 2500000, 1)
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (42, 13, 2500000, 1)
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (43, 13, 2500000, 1)
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (44, 14, 2500000, 1)
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (88, 18, 1450000, 4)
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (89, 17, 900000, 1)
INSERT [dbo].[CHITIETDONHANG] ([MaCTSP], [MaDH], [Gia], [SoLuong]) VALUES (96, 19, 100000, 2)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPhieuNhap], [MaChiTietSP], [SoLuong]) VALUES (1, 101, 2)
SET IDENTITY_INSERT [dbo].[CHITIETSANPHAM] ON 

INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (1, 10, 2, 4)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (2, 20, 2, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (3, 20, 2, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (4, 20, 2, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (5, 20, 4, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (6, 20, 4, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (7, 20, 4, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (8, 20, 5, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (9, 20, 5, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (10, 20, 5, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (11, 20, 6, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (12, 20, 6, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (13, 20, 6, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (14, 20, 7, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (15, 20, 7, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (16, 20, 7, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (17, 20, 8, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (18, 20, 8, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (19, 20, 8, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (20, 20, 9, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (21, 20, 9, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (22, 20, 9, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (23, 20, 10, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (24, 20, 10, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (25, 20, 10, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (26, 20, 11, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (27, 20, 11, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (28, 20, 11, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (29, 20, 12, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (30, 20, 12, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (31, 20, 12, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (32, 20, 13, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (33, 20, 13, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (34, 20, 13, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (35, 20, 14, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (36, 20, 14, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (37, 20, 14, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (38, 20, 15, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (39, 20, 15, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (40, 20, 15, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (41, 20, 16, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (42, 20, 16, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (43, 20, 16, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (44, 20, 17, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (45, 20, 17, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (46, 20, 17, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (47, 20, 18, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (48, 20, 18, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (49, 20, 18, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (50, 20, 19, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (51, 20, 19, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (52, 20, 19, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (53, 20, 20, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (54, 20, 20, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (55, 20, 20, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (56, 20, 21, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (57, 20, 21, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (58, 20, 21, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (59, 20, 22, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (60, 20, 22, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (61, 20, 22, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (62, 20, 23, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (63, 20, 23, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (64, 20, 23, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (65, 20, 24, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (66, 20, 24, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (67, 20, 24, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (68, 20, 25, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (69, 20, 25, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (70, 20, 25, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (71, 20, 26, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (72, 20, 26, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (73, 20, 26, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (74, 20, 27, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (75, 20, 27, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (76, 20, 27, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (77, 20, 28, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (78, 20, 28, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (79, 20, 28, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (80, 20, 29, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (81, 20, 29, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (82, 20, 29, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (83, 20, 30, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (84, 20, 30, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (85, 20, 30, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (86, 20, 31, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (87, 20, 31, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (88, 16, 31, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (89, 19, 32, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (90, 20, 32, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (91, 20, 32, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (92, 20, 33, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (93, 20, 33, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (94, 20, 33, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (95, 20, 34, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (96, 18, 34, 6)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (97, 20, 34, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (98, 0, 38, 5)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (99, 0, 38, 6)
GO
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (100, 0, 38, 7)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (101, 2, 2, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (103, 0, 39, 3)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (104, 0, 39, 4)
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [SoLuong], [MaSP], [MaSize]) VALUES (105, 0, 39, 5)
SET IDENTITY_INSERT [dbo].[CHITIETSANPHAM] OFF
SET IDENTITY_INSERT [dbo].[DANHMUCSANPHAM] ON 

INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Giày Thể Thao')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Giày da')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (4, N'Dép, SanDal')
INSERT [dbo].[DANHMUCSANPHAM] ([MaDanhMuc], [TenDanhMuc]) VALUES (5, N'Giày Cao Gót')
SET IDENTITY_INSERT [dbo].[DANHMUCSANPHAM] OFF
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([MaDH], [MaNV], [MaKH], [ThoiGian], [SDTKH], [DiaChi], [GhiChu], [HinhThucThanhToan], [TinhTrangDonHang], [TongTien], [TenNguoiNhan]) VALUES (2, N'NV1', N'KH3', CAST(N'2022-05-14' AS Date), N'0876', N'Q9 HCM', N'Chi gioa chieu', 1, 2, 550000, NULL)
INSERT [dbo].[DONHANG] ([MaDH], [MaNV], [MaKH], [ThoiGian], [SDTKH], [DiaChi], [GhiChu], [HinhThucThanhToan], [TinhTrangDonHang], [TongTien], [TenNguoiNhan]) VALUES (13, NULL, N'KH3', CAST(N'2022-05-29' AS Date), N'23', N'232', N'', 2, 1, 7530000, N'khach up ne update')
INSERT [dbo].[DONHANG] ([MaDH], [MaNV], [MaKH], [ThoiGian], [SDTKH], [DiaChi], [GhiChu], [HinhThucThanhToan], [TinhTrangDonHang], [TongTien], [TenNguoiNhan]) VALUES (14, NULL, N'KH3', CAST(N'2022-05-29' AS Date), N'23', N'232', N'', 2, 1, 2530000, N'khach up ne update')
INSERT [dbo].[DONHANG] ([MaDH], [MaNV], [MaKH], [ThoiGian], [SDTKH], [DiaChi], [GhiChu], [HinhThucThanhToan], [TinhTrangDonHang], [TongTien], [TenNguoiNhan]) VALUES (15, NULL, N'KH3', CAST(N'2022-05-30' AS Date), N'098762724', N'Q9 TP HCM', N'', 1, 5, 2000000, N'Nguyễn Trung Đức')
INSERT [dbo].[DONHANG] ([MaDH], [MaNV], [MaKH], [ThoiGian], [SDTKH], [DiaChi], [GhiChu], [HinhThucThanhToan], [TinhTrangDonHang], [TongTien], [TenNguoiNhan]) VALUES (16, NULL, N'KH3', CAST(N'2022-05-30' AS Date), N'098762824', N'Q9 TP HCM', N'', 2, 1, 6000000, N'Nguyễn Trung Đức')
INSERT [dbo].[DONHANG] ([MaDH], [MaNV], [MaKH], [ThoiGian], [SDTKH], [DiaChi], [GhiChu], [HinhThucThanhToan], [TinhTrangDonHang], [TongTien], [TenNguoiNhan]) VALUES (17, NULL, N'KH3', CAST(N'2022-05-31' AS Date), N'098762824', N'Q9 TP HCM', N'', 1, 1, 900000, N'Nguyễn Trung Đức')
INSERT [dbo].[DONHANG] ([MaDH], [MaNV], [MaKH], [ThoiGian], [SDTKH], [DiaChi], [GhiChu], [HinhThucThanhToan], [TinhTrangDonHang], [TongTien], [TenNguoiNhan]) VALUES (18, NULL, N'KH3', CAST(N'2022-05-31' AS Date), N'098762824', N'Q9 TP HCM', N'', 2, 1, 5800000, N'Nguyễn Trung Đức')
INSERT [dbo].[DONHANG] ([MaDH], [MaNV], [MaKH], [ThoiGian], [SDTKH], [DiaChi], [GhiChu], [HinhThucThanhToan], [TinhTrangDonHang], [TongTien], [TenNguoiNhan]) VALUES (19, NULL, N'KH1', CAST(N'2022-06-02' AS Date), N'24343', N'34343', N'', 2, 2, 200000, N'nguyen Đức ')
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
INSERT [dbo].[GIOHANG] ([MaKH], [MaChiTietSP], [SoLuong]) VALUES (N'KH3', 13, 3)
INSERT [dbo].[GIOHANG] ([MaKH], [MaChiTietSP], [SoLuong]) VALUES (N'KH3', 87, 2)
SET IDENTITY_INSERT [dbo].[HINHTHUCTHANHTOAN] ON 

INSERT [dbo].[HINHTHUCTHANHTOAN] ([MaHTTT], [KieuTT]) VALUES (1, N'ATM')
INSERT [dbo].[HINHTHUCTHANHTOAN] ([MaHTTT], [KieuTT]) VALUES (2, N'Thanh toán khi nhận hàng')
SET IDENTITY_INSERT [dbo].[HINHTHUCTHANHTOAN] OFF
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH1', N'nguyen', N'Đức ', CAST(N'2022-04-26' AS Date), N'34343', N'24343', N'TK8', N'16537125244262_cate.jpg', 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH2', N'nguyen quan', N'Đức', CAST(N'2022-04-27' AS Date), N'23424554', N'234', N'TK9', NULL, 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH3', N'Nguyễn Trung', N'Đức', CAST(N'2022-05-18' AS Date), N'Q9 TP HCM', N'098762824', N'TK10', N'165397978112879600032_963455200692780_3918348468581564416_o.jpg', 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH4', N'nguyen quan', N'ds', CAST(N'2022-04-27' AS Date), N'434', N'243', N'TK14', N'79532365_963455060692794_6893693599825788928_o.jpg', 1)
INSERT [dbo].[KHACHHANG] ([MaKH], [Ho], [Ten], [NgaySinh], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'KH5', N'Nguyễn', N'Thường', CAST(N'2022-05-13' AS Date), N'97 Man Thiện', N'123321', N'TK17', NULL, 1)
SET IDENTITY_INSERT [dbo].[MAUSANPHAM] ON 

INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (1, N'trắng')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (2, N'đen')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (3, N'đỏ')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (4, N'hồng')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (5, N'xanh dương')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (7, N'nâu')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (8, N'kem sữa')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (9, N'xám')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (10, N'trắng đen')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (11, N'tím')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (12, N'vàng')
INSERT [dbo].[MAUSANPHAM] ([MaMau], [TenMau]) VALUES (13, N'xanh lá')
SET IDENTITY_INSERT [dbo].[MAUSANPHAM] OFF
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (5, N'Shop 249', N'12345', N'81 Phạm Văn Đồng')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (6, N'Giày Dép Việt Thủy', N'123', N'123 Xô Viết Nghệ Tĩnh')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [SDT], [DiaChi]) VALUES (7, N'Nguyễn Xuân Thường', N'3345', N'97 Man Thiện')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV1', N'Nguyễn', N'Đức', CAST(N'2000-04-19' AS Date), N'2342543542', N'Q9 TP hcm', N'096772720', N'TK1', N'165396922333379532365_963455060692794_6893693599825788928_o.jpg', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV10', N'nggduyen quan', N'gdg', CAST(N'2022-05-04' AS Date), N'43', N'3r3r', N'2432', N'TK13', N'1654163363594nikeairforce1.jpg', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV11', N'Nguyễn', N'Thường', CAST(N'2022-05-15' AS Date), N'123123', N'97 Man Thiện', N'12345678', N'TK15', N'278976008_674178603688264_2468058955624321585_n.jpg', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV12', N'Nguyễn', N'Thường', CAST(N'2022-05-09' AS Date), N'123123', N'97 Man Thiện', N'13443', N'TK16', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV13', N'Nguyễn', N'Nhân viên', CAST(N'2022-05-31' AS Date), N'243987654', N'q9 hcm', N'098764324', N'TK18', N'1654181657536nikeairforce1.jpg', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV2', N'Nguyễn', N'ds', CAST(N'2022-04-04' AS Date), N'12334', N'ha noii', N'2312314', N'TK2', N'1654183051463nikeairforce1.jpg', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV3', N'dwdwd', N'32r', CAST(N'2022-05-02' AS Date), N'2342443', N'q9 hcm', N'342', N'TK3', NULL, 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV4', N'nguyen quan', N'fwe', CAST(N'2022-05-04' AS Date), N'2342443', N'123132', N'0987642434', N'TK4', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV5', N'Nguyễn qua', N'ds', CAST(N'2022-05-19' AS Date), N'2342443', N'2e3', N'3232344', N'TK5', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV6', N'Nguyễn', N'ds', CAST(N'2022-04-26' AS Date), N'23', N'23e23e32', N'232233', N'TK6', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV7', N'nguyen khach', N'Đức', CAST(N'2022-05-10' AS Date), N'3443', N'1423', N'3443433', N'TK7', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV8', N'nguyen quan', N'ds', CAST(N'2022-04-29' AS Date), N'2434', N'423', N'2342342', N'TK11', NULL, 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [Ho], [Ten], [NgaySinh], [CCCD], [DiaChi], [SDT], [MaTK], [Anh], [Phai]) VALUES (N'NV9', N'df', N'bgd', CAST(N'2022-05-05' AS Date), N'345', N'5', N'54545', N'TK12', NULL, 1)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] ON 

INSERT [dbo].[PHIEUNHAP] ([MAPN], [ThoiGian], [MaNV], [MaNCC], [TongTien]) VALUES (1, CAST(N'2022-05-29' AS Date), N'NV1', 5, 1100000)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (2, N'Giày Thể Thao Nam MWC NATT - 5359', N'Giày Thể Thao Nam MWC NATT - 5358 là mẫu giày được thiết kế theo phong cách hiện đại, màu sắc khỏe khoắn, sang trọng mang đến cho bạn 1 diện mạo hoàn toàn cá tính. Đặc biệt sản phẩm sử dụng chất liệu cao cấp có độ bền tối ưu giúp bạn thoải mái trong mọi hoàn cảnh.', 550000, 0, 2, 1, N'111.png', 10)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (4, N'Giày Thể Thao Nam MWC NATT - 5358', N'Giày Thể Thao Nam MWC NATT - 5358 là mẫu giày được thiết kế theo phong cách hiện đại, màu sắc khỏe khoắn, sang trọng mang đến cho bạn 1 diện mạo hoàn toàn cá tính. Đặc biệt sản phẩm sử dụng chất liệu cao cấp có độ bền tối ưu giúp bạn thoải mái trong mọi hoàn cảnh.', 550000, 0, 2, 1, N'112.png', 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (5, N'Giày Thể Thao Nam MWC NATT - 5355', N'Giày Thể Thao Nam MWC NATT - 5355', 550000, 0, 2, 1, N'113.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (6, N'Giày Thể Thao Nam MWC NATT - 5359', N'Giày Thể Thao Nam MWC NATT - 5359', 550000, 0, 2, 1, N'114.png', 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (7, N'Nike Jordan 1 Low Xanh Dương Vạch Đen REP', NULL, 2500000, 20, 2, 1, N'115.png', 5)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (8, N'MLB Bigball Chunky NY Trắng Đen REP', NULL, 1500000, 0, 2, 1, N'116.png', 10)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (9, N'Giày Thể Thao XSPORT MLB Chunky P Boston HỒNG REP', NULL, 1750000, 0, 2, 0, N'117.png', 4)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (10, N'GIÀY GÓT TRỤ MẠ VÀNG', N'Giày cao gót nữ Đông Hải G81I9 được thiết kế với phần gót mạ vàng sang trọng, thu hút mọi ánh nhìn trong từng bước chân. Phần mũi nhọn thon nhọn làm bật lên vẻ thanh lịch cùng gót cao 7cm vô cùng tôn dáng.', 1250000, 0, 5, 0, N'118.png', 8)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (11, N'SanDals Xuồng T-Strap Thanh Lịch', N'Sandals xuồng nữ T-Strap S5717 sở hữu phom giày ôm chân, vừa vặn khi di chuyển nhờ vào bộ ba quai ngang kết hợp với quai dây chữ T tinh tế. Phần đế xuồng da giúp tăng thêm sự hài hoà & vững chắc giúp mỗi bước đi thêm tự tin & an tâm.', 650000, 0, 5, 0, N'119.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (12, N'Giày Da Mềm Gót Trụ BLOCK-HEELS', N'Giày Cao Gót Đông Hải sở hữu thiết kế giày Pumps cổ điển với phần mũi nhọn kéo dài đôi chân thon gọn, kiểu dáng ôm chân nhưng không gò bó giúp thoải mái suốt ngày dài. Điểm nổi bật chính là phần gót trụ được cắt cạnh thành trụ tròn vững chắc trong mỗi bước đi.', 870000, 0, 5, 0, N'120.png', 5)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (13, N'SANDALS Cao Gót Nữ Da Kim Tuyến', N'Sandals cao gót nữ SHL86 với thiết kế Dây ngang dọc ôm trọn đôi chân, cùng nhiều chi tiết cách điệu lạ mắt, tạo cảm giác thoải mái, dễ đi nhưng cũng vô cùng sành điệu. Chất liệu kim tuyến sang trọng cùng phần gót vuông cao 5cm dễ dàng phối với nhiều trang phục khác nhau.', 650000, 0, 4, 0, N'121.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (14, N'Dép Cao Gót Nữ Đôi Quai Chéo', N'Dép cao gót nữ DHL89 được thiết kế ấn tượng với những sợi quai tròn mảnh kết hợp lại với nhau lạ mắt và chắc chắn. Phần gót cao 7cm tự tin tôn dáng kết hợp phần đế nguyên khối nâng đỡ tốt cho bàn chân, giúp di chuyển dễ dàng.', 750000, 0, 4, 0, N'122.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (15, N'BOOTS VENUS Nữ Cổ Cao Da Lộn', N'Boots Nữ cổ điển với thiết kế tối giản trong chi tiết, chất liệu da lộn sang trọng. Phần mũi thon chân cùng cổ cao thanh lịch. Gót nhỏ xinh chắc chắn với chiều cao 7cm tinh tế tôn dáng, phụ kiện ánh kim đính kèm là điểm nhấn nhẹ nhàng, hiện đại.', 2500000, 0, 5, 0, N'123.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (16, N'BOOTS VENUS Nữ Cổ Cao Da Lộn', N'Boots Nữ cổ điển với thiết kế tối giản trong chi tiết, chất liệu da lộn sang trọng. Phần mũi thon chân cùng cổ cao thanh lịch. Gót nhỏ xinh chắc chắn với chiều cao 7cm tinh tế tôn dáng, phụ kiện ánh kim đính kèm là điểm nhấn nhẹ nhàng, hiện đại. ', 2500000, 0, 5, 0, N'124.png', 7)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (17, N'BOOTS VENUS Nữ Gót Khối Cách Điệu', N'Boots Nữ gót khối tinh tế với chất liệu da thật được dập vân caro hiện đại. Phần mũi thon ôm chân kết hợp khóa dây kéo tiện lợi. Gót được thiết kế cách điệu lạ mắt và đúc nguyên khối vững chắc, chiều cao 7cm tôn dáng cho nàng tự tin thể hiện cá tính dù bất cứ đâu.', 2500000, 0, 5, 0, N'125.png', 7)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (18, N'BOOTS VENUS Nữ Gót Vuông Dập Vân Caro', N'Boots Nữ gót vuông tinh tế với chất liệu da thật được dập vân caro hiện đại. Phần mũi thon ôm chân kết hợp khóa dây kéo tiện lợi. Gót vuông vững chắc với chiều cao 5cm nhẹ nhàng cho nàng tự tin thể hiện cá tính dù bất cứ đâu.', 2750000, 0, 5, 0, N'126.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (19, N'Giày Cao Gót SLINGBACH Nơ Đôi', N'Giày Cao Gót Slingback Nơ Đôi sở hữu phần gót cao 5cm chắc chắn & vững vàng. Phần mũi nhọn giúp kéo dài đôi chân thon gọn & phần quai slingback giúp đôi chân luôn thoải mái & tự do.', 750000, 0, 5, 0, N'127.png', 8)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (20, N'Dép Nữ - D7425', N'Dép kẹp nữ Đông Hải D7425 thiết kế theo kiểu dáng đế bằng tiện lợi giúp người sử dụng dễ dàng trong việc di chuyển và vận động. Mặt sân cách điệu theo họa tiết thắt nơ nhẹ nhàng, tinh tế đem đến nét nữ tính và sự duyên dáng cho người sở hữu. Phần quai dép kẹp được làm bằng chất liệu da cao cấp mềm mại, ôm gọn đôi chân tạo cảm giác thoải mái, êm ái. Đế cao su chắc chắn có các rãnh chống trơn trượt hiệu quả. Dép kẹp nữ D7425 khoác lên mình 2 gam màu trẻ trung, năng động sẽ là lựa chọn lý tưởng để bạn diện chúng trong chuyến du lịch sắp tới của mình.', 450000, 0, 4, 0, N'132.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (21, N'SANDAL Nữ - S7423', N'Giày sandal nữ đế bằng Đông Hải S7423 mang kiểu dáng nhẹ nhàng, đơn giản. Thiết kế quai thanh mảnh, có thể co dãn tùy theo kích thước của bàn chân cùng chất liệu da bò cao cấp. Phần khuôn đế cao su chắc chắn, tạo nét với những đường gợn sóng, giúp bạn yên tâm khi di chuyển mà không lo trơn trượt. Với 3 gam màu thời thượng bạn có thể tự tin phối đồ cùng các loại quần, từ skinny jeans cho đến quần ống rộng và cả shorts. Giày sandal nữ S7423 sẽ là lựa chọn hoàn hảo cho những ai yêu thích sự thoải mái cũng như sự tiện lợi những lúc thời tiết thất thường như thế này.', 650000, 0, 4, 0, N'133.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (22, N'Dép Nữ - D7424', N'Dép nữ đế bằng Đông Hải D7424 với thiết kế quai chéo cách điệu cùng 3 gam màu nhã nhặn: trắng, hồng, đen sẽ mang đến cho phái đẹp sự dịu dàng, nữ tính và vô cùng trẻ trung. Chất liệu da bò mềm mại và có tính co giãn cao khiến cho đôi chân luôn được cảm thấy thoải mái nhất. Lớp lót chân êm ái cùng đế bằng được làm từ cao su hạn chế chống trơn trượt tối đa. Trong những ngày thời tiết nắng mưa thất thường thì dép nữ Đông Hải D7424 sẽ là sự lựa chọn ưu tiên hàng đầu cho phái đẹp.', 450000, 0, 4, 0, N'134.png', 4)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (23, N'Giày Tây Derby Mũi Trơn Cột Dây', N'Giày Tây Derby Mũi Trơn Cột Dây Đông Hải với kiểu dáng derby cột dây với phần trên giày mở rộng dễ dàng trong việc điều chỉnh độ rộng chật của giày phù hợp cho nhiều cỡ chân. Thiết kế đơn giản của giày tây derby mũi trơn thích hợp với những bộ suit mang vẻ trang trọng và lịch lãm. ', 2700000, 0, 3, 1, N'137.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (24, N'Giày Lười Da sần Đường Chỉ Nổi', N'Giày Lười Nam Đông Hải G0343 với chất liệu da sần tự nhiên, thiết kế đường chỉ nổi ở mũi giày. Đế cao su nguyên khối với tính chất đàn hồi tốt, phù hợp với nhiều loại trang phục khác nhau từ đi làm, đi chơi, dạo phố. ', 2500000, 0, 3, 1, N'138.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (25, N'Giày Nam Penny Loafer Dập Vân', N'Giày Nam Penny Loafer Dập Vân Đông Hải với kiểu dáng Penny Loafer phần da bắt ngang phần thân giày và khoét một lỗ hình kim cương cùng mặt thân trước dập vân thời trang. Đế cao su nguyên khối có các rãnh chống trơn, sản phẩm có 2 màu nâu đen dễ phối với nhiều loại trang phục và phù hợp với nhiều độ tuổi khác nhau.', 2700000, 0, 3, 1, N'146.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (26, N'Giày Tây Cao Nam Derby Wingtip', N'Giày cao nam G0615 sử dụng chất liệu da thật cao cấp mềm mại. Kiểu giày Derby với ưu điểm dễ dàng điều chỉnh độ rộng chật của dây giày nên có thể phù hợp với nhiều kiểu chân. Đế cao su chứa các rãnh chống trơn trượt. Đế giày cao 7cm được thiết kế tinh tế giúp các anh tự tin hơn về vóc dáng.', 2700000, 0, 3, 1, N'147.png', 7)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (27, N'Dép Nanm- D1810', N'Dép quai ngang nam Đông Hải D1810 thiết kế theo phong cách tối giản trẻ trung và năng động. Chế tác với hai quai ngang được cách điệu mềm mại ôm sát theo lườn chân tăng tính thoải mái khi di chuyển. Với chất liệu da bò cao cấp cùng lớp lót đế êm ái giúp giảm thiểu sự ma sát với đôi bàn chân kết hợp đế cao su có khả năng chống trơn trượt hiệu quả. Màu sắc trung tính phù hợp với nhiều độ tuổi và dễ dàng kết hợp cùng nhiều màu sắc trang phục khác nhau, là sự lựa chọn tuyệt vời cho những ngày đi chơi, đi du lịch.', 450000, 0, 4, 1, N'139.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (28, N'SANDALS Nam Quai', N'Sandals Nam S3216 sử dụng chất liệu da bò, đế cao su chắc chắn và phần quai được cách điệu các hoạ tiết lỗ nhỏ tạo điểm nhấn nổi bật giúp cho đôi chân luôn thoải mái trong cả ngày dài.', 800000, 0, 4, 1, N'149.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (29, N'Giày Adidas Nữ Duramo 9 EG2938', NULL, 800000, 0, 2, 0, N'154.png', 9)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (30, N'Sneakers Whale', N'Sneakers whale trang trí những đường màu dọc thân giày tạo thành những mảnh ghép cá tính, mạnh mẽ.', 1200000, 0, 2, 0, N'155.png', 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (31, N'Sneaker Gamer', N'Giày sneakers phối sọc màu cùng nhiều họa tiết trò chơi mang lại sự năng động, trẻ trung', 1450000, 0, 2, 0, N'156.png', 5)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (32, N'Sneaker Angelic Garden', N'Giày Sneakers kiểu dáng năng động, đế phối lượn sóng nổi bật', 900000, 0, 2, 0, N'157.png', 5)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (33, N'Trendy Elevated Flow', N'Sneakers đế đệm khí phối nhiều chất liệu thời thượng', 1250000, 0, 2, 0, N'158.png', 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (34, N'Sneaker Blooming', N'Sneaker blooming thời trang, trẻ trung, năng động', 100000, 0, 2, 0, N'159.png', 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (38, N'Giày Nike Air Force ‘White Gum Light Brown', N'Air Force 1 là 1 trong những sneaker định hướng đầu tiên của Nike. Đây sẽ luôn luôn là đôi giày thể thao bóng rổ đầu tiên có công nghệ đệm Air mang tính cách mạng của Swoosh bên trong gót chân của nó, và cũng là thử nghiệm đầu tiên của nó với kết cấu chống trượt u tiên của nhà thiết kế huyền thoại Nike Bruce Kilgore vào thế giới thiết kế giày thể thao bóng rổ.', 4190000, 0, 2, 1, N'1653741354742nikeairfor.png', 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MoTa], [Gia], [GiamGia], [MaDanhMuc], [Phai], [HinhAnh], [MaMau]) VALUES (39, N'Giày Converse Chuck Taylor Lo-fi Craft Ox', N'Mẫu giày Converse Chuck Taylor giúp cho người sử dụng có vẻ ngoài siêu chất và cá tính. Điểm nhấn nổi bật khác của sản phẩm ngoài họa tiết chữ V xếp chồng đó chính là  icon hình ngôi sao được cách điệu ở phần foxing tạo điểm nhấn và sự khác biệt so với các sản phẩm khác.', 1900000, 25, 2, 1, N'1654186923415converse1.jpg', 8)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[SIZESANPHAM] ON 

INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (1, N'36')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (2, N'37')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (3, N'38')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (4, N'39')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (5, N'40')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (6, N'41')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (7, N'42')
INSERT [dbo].[SIZESANPHAM] ([MaSize], [TenSize]) VALUES (8, N'43')
SET IDENTITY_INSERT [dbo].[SIZESANPHAM] OFF
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK1', N'4297F44B13955235245B2497399D7A93', N'QL', N'quanly@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK10', N'68ADB7C1811F11BBEA919D4D4EEBFDB2', N'KH', N'khachhang@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK11', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'fefer@gfg.gf', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK12', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'erger@gn.fs', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK13', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'nhanviwefen143@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK14', N'E10ADC3949BA59ABBE56E057F20F883E', N'KH', N'ggdf@gmail.com', 0)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK15', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'aloalo@gmi.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK16', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'aloal232o@gmi.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK17', N'E10ADC3949BA59ABBE56E057F20F883E', N'KH', N'aloal23211o@gmi.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK18', N'4297F44B13955235245B2497399D7A93', N'NV', N'mymemory2409@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK2', N'4297F44B13955235245B2497399D7A93', N'NV', N'nhanvien@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK3', N'D41D8CD98F00B204E9800998ECF8427E', N'NV', N'nhanvien143@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK4', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'nhanvieewn14@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK5', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'ntrung43@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK6', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'nhanvie32n143@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK7', N'E10ADC3949BA59ABBE56E057F20F883E', N'NV', N'fefer@gmail.om', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK8', N'4297F44B13955235245B2497399D7A93', N'KH', N'ntrungduc228@gmail.com', 1)
INSERT [dbo].[TAIKHOAN] ([MaTK], [MatKhau], [MaVaiTro], [Email], [TrangThai]) VALUES (N'TK9', N'E10ADC3949BA59ABBE56E057F20F883E', N'KH', N'khachhang111@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[TRANGTHAIDONHANG] ON 

INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (1, N'Đơn mới')
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (3, N'Đang giao')
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (4, N'Đã giao')
INSERT [dbo].[TRANGTHAIDONHANG] ([MaTTDH], [TrangThai]) VALUES (5, N'Đã hủy')
SET IDENTITY_INSERT [dbo].[TRANGTHAIDONHANG] OFF
INSERT [dbo].[VAITRO] ([MaVT], [TenVT]) VALUES (N'KH', N'khach hang')
INSERT [dbo].[VAITRO] ([MaVT], [TenVT]) VALUES (N'NV', N'nhan vien')
INSERT [dbo].[VAITRO] ([MaVT], [TenVT]) VALUES (N'QL', N'Quản lý')
SET ANSI_PADDING ON

GO
/****** Object:  Index [SDT_KH_DN]    Script Date: 02/06/2022 11:31:13 CH ******/
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [SDT_KH_DN] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_MATK_KH]    Script Date: 02/06/2022 11:31:13 CH ******/
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [UQ_MATK_KH] UNIQUE NONCLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SDT_NV_DN]    Script Date: 02/06/2022 11:31:13 CH ******/
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [SDT_NV_DN] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_MATK_NV]    Script Date: 02/06/2022 11:31:13 CH ******/
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [UQ_MATK_NV] UNIQUE NONCLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UNIQUE_EMAIL]    Script Date: 02/06/2022 11:31:13 CH ******/
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [UNIQUE_EMAIL] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_CHITETSANPHAM] FOREIGN KEY([MaCTSP])
REFERENCES [dbo].[CHITIETSANPHAM] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_CHITETSANPHAM]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_DONHANG] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DONHANG] ([MaDH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_DONHANG]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHIEUNHAP_CHITETSANPHAM] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[CHITIETSANPHAM] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [FK_CHITIETPHIEUNHAP_CHITETSANPHAM]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHIEUNHAP_PHIEUNHAP] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [FK_CHITIETPHIEUNHAP_PHIEUNHAP]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITETSANPHAM_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITETSANPHAM_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHITETSANPHAM_SIZESANPHAM] FOREIGN KEY([MaSize])
REFERENCES [dbo].[SIZESANPHAM] ([MaSize])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CHITETSANPHAM_SIZESANPHAM]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_HINHTHUCTHANHTOAN] FOREIGN KEY([HinhThucThanhToan])
REFERENCES [dbo].[HINHTHUCTHANHTOAN] ([MaHTTT])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_HOADON_HINHTHUCTHANHTOAN]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_TRANGTHAIDONHANG] FOREIGN KEY([TinhTrangDonHang])
REFERENCES [dbo].[TRANGTHAIDONHANG] ([MaTTDH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_HOADON_TRANGTHAIDONHANG]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_CHITETSANPHAM] FOREIGN KEY([MaChiTietSP])
REFERENCES [dbo].[CHITIETSANPHAM] ([MaChiTietSP])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_CHITETSANPHAM]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_TAIKHOAN] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TAIKHOAN] ([MaTK])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_TAIKHOAN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TAIKHOAN] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TAIKHOAN] ([MaTK])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHANVIEN]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_CHUCVU] FOREIGN KEY([MaVaiTro])
REFERENCES [dbo].[VAITRO] ([MaVT])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_CHUCVU]
GO
USE [master]
GO
ALTER DATABASE [QuanLyCuaHangGiayDep] SET  READ_WRITE 
GO
