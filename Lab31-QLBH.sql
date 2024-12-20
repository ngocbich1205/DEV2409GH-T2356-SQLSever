USE [QLBH]
GO
/****** Object:  Table [dbo].[CTDONDH]    Script Date: 29/10/2024 10:49:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDONDH](
	[SoDh] [char](4) NOT NULL,
	[MaVTu] [char](4) NOT NULL,
	[SlDat] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPNHAP]    Script Date: 29/10/2024 10:49:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPNHAP](
	[SoPn] [char](4) NOT NULL,
	[MaVTu] [char](4) NOT NULL,
	[SLNhap] [int] NOT NULL,
	[DGNhap] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPXUAT]    Script Date: 29/10/2024 10:49:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPXUAT](
	[SoPx] [char](4) NOT NULL,
	[MaVTu] [char](4) NOT NULL,
	[SlXuat] [int] NOT NULL,
	[DgXuat] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDH]    Script Date: 29/10/2024 10:49:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDH](
	[SoDh] [char](4) NOT NULL,
	[NgayDh] [datetime] NOT NULL,
	[MaNhaCC] [char](3) NOT NULL,
 CONSTRAINT [PK_DONDH] PRIMARY KEY CLUSTERED 
(
	[SoDh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACC]    Script Date: 29/10/2024 10:49:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACC](
	[MaNhaCC] [char](3) NOT NULL,
	[TenNhaCC] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[DienThoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHACC] PRIMARY KEY CLUSTERED 
(
	[MaNhaCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PNHAP]    Script Date: 29/10/2024 10:49:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PNHAP](
	[SoPn] [char](4) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[SoDh] [char](4) NOT NULL,
 CONSTRAINT [PK_PNHAP] PRIMARY KEY CLUSTERED 
(
	[SoPn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PXUAT]    Script Date: 29/10/2024 10:49:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PXUAT](
	[SoPx] [char](4) NOT NULL,
	[NgayXuat] [datetime] NULL,
	[TenKh] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PXUAT] PRIMARY KEY CLUSTERED 
(
	[SoPx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONKHO]    Script Date: 29/10/2024 10:49:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONKHO](
	[NamThang] [char](6) NOT NULL,
	[MaVTu] [char](4) NOT NULL,
	[SLDau] [int] NOT NULL,
	[TongSLN] [int] NOT NULL,
	[TonSLX] [int] NOT NULL,
	[SLCuoi] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VATTU]    Script Date: 29/10/2024 10:49:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VATTU](
	[MaVTu] [char](4) NOT NULL,
	[TenVTu] [varchar](100) NOT NULL,
	[DvTinh] [varchar](10) NULL,
	[PhanTram] [real] NOT NULL,
 CONSTRAINT [PK_VATTU] PRIMARY KEY CLUSTERED 
(
	[MaVTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D001', N'DD01', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D001', N'DD02', 15)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D002', N'VD02', 30)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D003', N'TV14', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D003', N'TV29', 20)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D004', N'TL90', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D005', N'TV14', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D005', N'TV29', 20)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D006', N'TV14', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D006', N'TV29', 20)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D006', N'VD01', 20)
GO
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SLNhap], [DGNhap]) VALUES (N'N001', N'DD01', 8, 2500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SLNhap], [DGNhap]) VALUES (N'N001', N'DD02', 10, 3500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SLNhap], [DGNhap]) VALUES (N'N002', N'DD01', 2, 2500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SLNhap], [DGNhap]) VALUES (N'N002', N'DD02', 5, 3500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SLNhap], [DGNhap]) VALUES (N'N003', N'VD02', 30, 2500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SLNhap], [DGNhap]) VALUES (N'N004', N'TV14', 5, 2500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SLNhap], [DGNhap]) VALUES (N'N004', N'TV29', 12, 3500000.0000)
GO
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X001', N'DD01', 2, 3500000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X002', N'DD01', 1, 3500000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X002', N'DD02', 5, 4900000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X003', N'DD01', 3, 3500000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X003', N'DD02', 2, 4900000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X003', N'VD02', 10, 3250000.0000)
GO
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCC]) VALUES (N'D001', CAST(N'2012-01-15T00:00:00.000' AS DateTime), N'C03')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCC]) VALUES (N'D002', CAST(N'2012-01-30T00:00:00.000' AS DateTime), N'C01')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCC]) VALUES (N'D003', CAST(N'2012-02-10T00:00:00.000' AS DateTime), N'C02')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCC]) VALUES (N'D004', CAST(N'2012-02-17T00:00:00.000' AS DateTime), N'C05')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCC]) VALUES (N'D005', CAST(N'2012-01-03T00:00:00.000' AS DateTime), N'C02')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCC]) VALUES (N'D006', CAST(N'2012-12-03T00:00:00.000' AS DateTime), N'C05')
GO
INSERT [dbo].[NHACC] ([MaNhaCC], [TenNhaCC], [DiaChi], [DienThoai]) VALUES (N'C01', N'Le Minh Thanh', N'54, Kim Ma, Cau Giay, Ha Noi', N'08781024')
INSERT [dbo].[NHACC] ([MaNhaCC], [TenNhaCC], [DiaChi], [DienThoai]) VALUES (N'C02', N'Tran Quang Anh', N'145, Hung Vuong, Hai Duong', N'07698154')
INSERT [dbo].[NHACC] ([MaNhaCC], [TenNhaCC], [DiaChi], [DienThoai]) VALUES (N'C03', N'Bui Hong Phuong', N'154/85, Lê Chân, H?i Phòng', N'09600125')
INSERT [dbo].[NHACC] ([MaNhaCC], [TenNhaCC], [DiaChi], [DienThoai]) VALUES (N'C04', N'Vu Nh?t Th?ng', N'19/40 Huong L? 14 QTB HCM', N'08757757')
INSERT [dbo].[NHACC] ([MaNhaCC], [TenNhaCC], [DiaChi], [DienThoai]) VALUES (N'C05', N'Nguy?n Th? Thúy', N'178 Nguy?n Van Luông Ðà L?t', N'07964251')
INSERT [dbo].[NHACC] ([MaNhaCC], [TenNhaCC], [DiaChi], [DienThoai]) VALUES (N'C07', N'Cao Minh Trung', N'125 Le Quang Sung Nha Trang', N'chua co')
GO
INSERT [dbo].[PNHAP] ([SoPn], [NgayNhap], [SoDh]) VALUES (N'N001', CAST(N'2012-01-17T00:00:00.000' AS DateTime), N'D001')
INSERT [dbo].[PNHAP] ([SoPn], [NgayNhap], [SoDh]) VALUES (N'N002', CAST(N'2012-01-20T00:00:00.000' AS DateTime), N'D001')
INSERT [dbo].[PNHAP] ([SoPn], [NgayNhap], [SoDh]) VALUES (N'N003', CAST(N'2012-01-31T00:00:00.000' AS DateTime), N'D002')
GO
INSERT [dbo].[PXUAT] ([SoPx], [NgayXuat], [TenKh]) VALUES (N'X001', CAST(N'2012-01-17T00:00:00.000' AS DateTime), N'Nguyễn Ngọc Phương Nhi')
INSERT [dbo].[PXUAT] ([SoPx], [NgayXuat], [TenKh]) VALUES (N'X002', CAST(N'2012-01-25T00:00:00.000' AS DateTime), N'Nguyễn Hồng Phương')
INSERT [dbo].[PXUAT] ([SoPx], [NgayXuat], [TenKh]) VALUES (N'X003', CAST(N'2012-01-31T00:00:00.000' AS DateTime), N'Nguyễn Tuấn Tú')
GO
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SLDau], [TongSLN], [TonSLX], [SLCuoi]) VALUES (N'201201', N'DD01', 0, 10, 6, 4)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SLDau], [TongSLN], [TonSLX], [SLCuoi]) VALUES (N'201201', N'DD02', 0, 15, 7, 8)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SLDau], [TongSLN], [TonSLX], [SLCuoi]) VALUES (N'201201', N'VD02', 0, 30, 10, 20)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SLDau], [TongSLN], [TonSLX], [SLCuoi]) VALUES (N'201202', N'DD01', 4, 0, 0, 4)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SLDau], [TongSLN], [TonSLX], [SLCuoi]) VALUES (N'201202', N'DD02', 8, 0, 0, 8)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SLDau], [TongSLN], [TonSLX], [SLCuoi]) VALUES (N'201202', N'VD02', 20, 0, 0, 20)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SLDau], [TongSLN], [TonSLX], [SLCuoi]) VALUES (N'201202', N'TV14', 5, 0, 0, 5)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SLDau], [TongSLN], [TonSLX], [SLCuoi]) VALUES (N'201202', N'TV29', 12, 0, 0, 12)
GO
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'DD01', N'Ð?u DVD Hitachi 1 dia', N'B?', 40)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'DD02', N'Ð?u DVD Hitachi 3 dia', N'B? ', 40)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TL15', N'T? l?nh Sanyo 150 lit', N'Cái', 25)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TL90', N'T? l?nh Sanyo 90 lit', N'Cái', 20)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TV14', N'Tivi Sony 14 inches', N'Cái', 15)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TV21', N'Tivi Sony 21 inches', N'Cái', 10)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TV29', N'Tivi Sony 29 inches', N'Cái', 10)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'VD01', N'Ð?u VCD Sony 1 dia', N'B?', 30)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'VD02', N'Ð?u VCD Sony 3 dia', N'B?', 30)
GO
ALTER TABLE [dbo].[CTDONDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDONDH_VATTU] FOREIGN KEY([MaVTu])
REFERENCES [dbo].[VATTU] ([MaVTu])
GO
ALTER TABLE [dbo].[CTDONDH] CHECK CONSTRAINT [FK_CTDONDH_VATTU]
GO
ALTER TABLE [dbo].[CTPNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CTPNHAP_VATTU] FOREIGN KEY([MaVTu])
REFERENCES [dbo].[VATTU] ([MaVTu])
GO
ALTER TABLE [dbo].[CTPNHAP] CHECK CONSTRAINT [FK_CTPNHAP_VATTU]
GO
ALTER TABLE [dbo].[CTPXUAT]  WITH CHECK ADD  CONSTRAINT [FK_CTPXUAT_VATTU] FOREIGN KEY([MaVTu])
REFERENCES [dbo].[VATTU] ([MaVTu])
GO
ALTER TABLE [dbo].[CTPXUAT] CHECK CONSTRAINT [FK_CTPXUAT_VATTU]
GO
ALTER TABLE [dbo].[DONDH]  WITH CHECK ADD  CONSTRAINT [FK_DONDH_NHACC] FOREIGN KEY([MaNhaCC])
REFERENCES [dbo].[NHACC] ([MaNhaCC])
GO
ALTER TABLE [dbo].[DONDH] CHECK CONSTRAINT [FK_DONDH_NHACC]
GO
ALTER TABLE [dbo].[PNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PNHAP_DONDH] FOREIGN KEY([SoDh])
REFERENCES [dbo].[DONDH] ([SoDh])
GO
ALTER TABLE [dbo].[PNHAP] CHECK CONSTRAINT [FK_PNHAP_DONDH]
GO
ALTER TABLE [dbo].[TONKHO]  WITH CHECK ADD  CONSTRAINT [FK_TONKHO_VATTU] FOREIGN KEY([MaVTu])
REFERENCES [dbo].[VATTU] ([MaVTu])
GO
ALTER TABLE [dbo].[TONKHO] CHECK CONSTRAINT [FK_TONKHO_VATTU]
GO
