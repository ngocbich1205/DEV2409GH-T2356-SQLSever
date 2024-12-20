﻿create database QLSINHVIEN
GO
USE [QLSINHVIEN]
GO
/****** Object:  Table [dbo].[Ketqua]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ketqua](
	[MaSV] [nvarchar](3) NOT NULL,
	[MaMH] [nvarchar](2) NOT NULL,
	[Diem] [real] NULL,
 CONSTRAINT [Prk_MaSV_MAMH] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKH] [nvarchar](2) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [Prk_KHOA_khoa] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](2) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[Sotiet] [tinyint] NULL,
 CONSTRAINT [Prk_MONHOC_MaMH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[NoiSinh] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](2) NOT NULL,
	[HocBong] [float] NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [Prk_SINHVIEN_MaSV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'03', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'04', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'05', 3.9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'01', 4.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'05', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'08', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'01', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'02', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'03', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'04', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'08', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'01', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'04', 4)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'04', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'08', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'01', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'03', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'04', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'05', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'06', 6)
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'DT', N'Điện tử')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TR', N'Triết')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'01', N'Cơ sở dữ liệu', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'02', N'Trí tuệ nhân tạo', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'03', N'Toán rời rạc ứng dụng', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'04', N'Đồ họa ứng dụng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'05', N'Tiếng Anh cơ bản', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'06', N'Tin học văn phòng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'07', N'Pháp luật đại cương', 30)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'08', N'Anh chuyên Ngành', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'09', N'PTTK Hệ thống', 60)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A01', N'Nguyễn Thị', N'Vân', 0, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A02', N'Trần Văn', N'Chính', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A04', N'Trần Anh', N'Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A10', N'Trần Thị', N'Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A11', N'Nguyễn Thành', N'Nam', 0, CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Cà Mau', N'AV', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A12', N'Nguyễn Quang', N'Quyền', 0, CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'Đồng Nai', N'DT', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B01', N'Hoàng Thanh', N'Mai', 1, CAST(N'1992-08-12T00:00:00' AS SmallDateTime), N'Hải Phòng', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B03', N'Đố Văn', N'Lâm', 0, CAST(N'1994-02-26T00:00:00' AS SmallDateTime), N'Bình Định', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B04', N'Bùi Kim', N'Dung', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hµ Néi', N'TH', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C01', N'Hà Quang', N'Anh', 0, CAST(N'1985-03-11T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C03', N'Lê Quang', N'Lưu', 0, CAST(N'1985-02-23T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T03', N'Hoàng Thị Hải', N'Yến', 1, CAST(N'1989-09-10T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T06', N'Nguyễn Văn', N'Thắng', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 1500000, NULL)
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [Def_SINHVIEN_HocBong]  DEFAULT ((0)) FOR [HocBong]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Makh] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Makh]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Mamh] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Mamh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [Frk_SINHVIEN_Makh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khoa] ([MaKH])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [Frk_SINHVIEN_Makh]
GO
/*
Bài 1
1. cho biết danh sách các môn học, gồm các thông tin sau:Mã môn học, Tên môn học, số tiết.
*/
Select*from MonHoc
GO
Select MaMH as [Mã môn học], TenMH as [Tên mon học], Sotiet [Số tiết]
from MonHoc
Go
/*2*/
Select MaSV as 'Mã sinh viên', HoSV as [ Họ sinh viên], TenSV as [Ten sinh viên], HocBong [Học Bổng]
from SinhVien
order by MaSV ASC
GO
/*3*/
Select MaSV,TenSV,Phai, NgaySinh
From SinhVien
order by TenSV ASC
GO
/*4*/
Select HoSV + ' ' + TenSV as [họ và tên sinh viên]
		,[NgaySinh] as [ngày sinh],HocBong as [học bổng]
from SinhVien
order by NgaySinh asc, 3 ASC
go
/*5. danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin :Mã môn, tên môn, sô tiết */
--so sánh tương đối
select MaMH, TenMH, Sotiet
From MonHoc
where TenMH Like N'T%'
go
--6. liệt kê danh sách nhugwx sinh viên có chữ cái cuối cùng trong tên là i, gồm các thông tin: họ và tên sinh viên, ngày sinh, phái 
select [HoSV],[TenSV],[Phai],[NgaySinh]
from SinhVien
where TenSV Like N'%i'
go
--7. danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm các thông tin: Mã khoa, tên khoa 
select MaKH, TenKH
from Khoa
where TenKH Like N'_N%'
go
--8. liệt kê những sinh viên mà họ có chứa chữ Thị
select*from SinhVien
where HoSV Like N'%thị%'
go
--9. 
select MaSV, HoSV, TenSV, Phai, HocBong
from SinhVien
where TenSV like N'[a-m]%'
go
--10.
select MaSV, HoSV, TenSV, NgaySinh, NoiSinh, HocBong
from SinhVien
where TenSV like N'%[a-m]%'
order by 2 ASC
go
--11.cho biết danh sach các sinh viên của khoa anh văn, gồm các thông tin sau:mã sinh viên, họ tên sinh viên, ngày sinh, mã khoa
select MaSV, HoSV, NgaySinh,MaKH
from SinhVien 
where MaKH like 'AV'
go
--12.
select MaSV, HoSV, NgaySinh
from SinhVien
where MaKH like 'AV'
order by NgaySinh desc
--13.
select MaSV, HoSV, MaKH, HocBong
from SinhVien
where HocBong >'500000'
order by MaKH desc
--14. liệt kê danh sách sinh viên sinh vào ngày 20/12/1987, gồm các thong tin: họ và tên sinh viên, mã khoa, học bổng
select HoSV, MaKH, HocBong, Convert(Char(10),NgaySinh ,103) as [NgaySinh]
from SinhVien
where day(NgaySinh)=20 and Month (NgaySinh)=12 and Year(NgaySinh)=1987
go
--15.
select HoSV, MaKH, HocBong, Convert(Char(10),NgaySinh ,103) as [NgaySinh]
from SinhVien
where Convert (char(10),NgaySinh,103) >'20/12/1977'
order by NgaySinh desc
go
--16.
select HoSV, MaKH, NoiSinh, HocBong
from SinhVien
where HocBong > 100000 and NoiSinh like N'%Tp.HCM%'
go
--17
select *
from SinhVien
Where MaKH = 'AV' or MaKH= 'TR'
go
Select *
From SinhVien
Where  MaKH IN ('AV','TR')
GO
--18
select MaSV,NgaySinh, NoiSinh, HocBong
from SinhVien
where NgaySinh BETWEEN '1986-01-01' AND '1992-06-05'
GO
--19
SELECT MaSV, NgaySinh, Phai, MaKH
FROM SinhVien
WHERE HocBong BETWEEN 200000 AND 800000
GO
--20
SELECT MaMH, TenMH, SoTiet
FROM MonHoc
WHERE SoTiet > 40 AND SoTiet < 60
GO
--21
SELECT SV.MaSV, SV.HoSV, SV.TenSV, SV.Phai
FROM SinhVien SV
JOIN Khoa KH ON SV.MaKH = KH.MaKH
WHERE SV.Phai = 'false' AND KH.MaKH = 'AV'
GO
--22
SELECT HoSV, TenSV, NoiSinh, NgaySinh
FROM SinhVien
WHERE NoiSinh = N'Hà Nội' AND NgaySinh > '1990-01-01'
GO
--23
SELECT MaSV, HoSV, TenSV
FROM SinhVien
WHERE Phai = 'True' AND (HoSV LIKE '%N%' OR TenSV LIKE '%N%')
GO
--24
SELECT *
FROM SinhVien
WHERE Phai = 0 AND MaKH ='TH' AND NgaySinh < '1986-05-30'
go
--25
SELECT HoSV, TenSV, 
       CASE 
           WHEN Phai = 'False' THEN '0' 
           WHEN Phai = 'True' THEN '1' 
       END AS GioiTinh, 
       NgaySinh
FROM SinhVien
go
--26
SELECT MaSV, DATEDIFF(YEAR, NgaySinh, GETDATE()) AS Tuoi, NoiSinh, MaKH
FROM SinhVien;
go
--27
SELECT MaSV, DATEDIFF(YEAR, NgaySinh, GETDATE()) AS Tuoi, HocBong
FROM SinhVien
where DATEDIFF(YEAR, NgaySinh, GETDATE())>20
go
--28
SELECT 
    sv.HoSV, sv.TenSV,
    DATEDIFF(YEAR, sv.NgaySinh, GETDATE()) AS Tuoi, 
    k.TenKH
FROM 
    SinhVien sv
JOIN 
    Khoa k ON sv.MaKH = k.MaKH
WHERE 
    DATEDIFF(YEAR, sv.NgaySinh, GETDATE()) BETWEEN 20 AND 30
	go
--bài 2
--1.Liệt kê danh sách sinh viên gồm các thông tin sau: Họ và tên sinh viên, Giới tính, Tuổi, Mã khoa. Trong đó, Giới tính hiển thị dạng Nam/Nữ tùy theo giá trị của field Phai là True hay False. Tuổi sẽ được tính bằng cách lấy năm hiện hành trừ cho năm sinh. Danh sách được sắp xếp theo thứ tự Tuổi giảm dần.
SELECT 
    sv.HoSV, 
    CASE 
        WHEN Phai = 0 THEN 'Nam' 
        ELSE 'Nữ' 
    END AS GioiTinh, 
    DATEDIFF(YEAR, sv.NgaySinh, GETDATE())  AS Tuoi, 
    MaKH AS MaKhoa
FROM 
    SinhVien sv
ORDER BY 
    Tuoi DESC;
go
--2.Danh sách sinh viên sinh vào tháng 2 năm 1994, gồm các thông tin: Họ tên sinh viên, Phái, Ngày sinh. Trong đó, Ngày sinh chỉ lấy giá trị ngày của trường NGAYSINH. Sắp xếp dữ liệu giảm dần theo cột Ngày sinh. sql sever
SELECT 
    HoSV, 
    CASE 
        WHEN Phai = 0 THEN 'Nam' 
        ELSE 'Nữ' 
    END AS GioiTinh, 
    DAY(NgaySinh) AS NgaySinh
FROM 
    SinhVien
WHERE 
    MONTH(NgaySinh) = 2 
    AND YEAR(NgaySinh) = 1994
ORDER BY 
    NgaySinh DESC
go
--3 sắp xếp dữ liệu giảm dần theo cột ngày sinh
SELECT*
FROM 
    SinhVien

ORDER BY 
    NgaySinh DESC
go
--4
SELECT 
    MaSV, 
    CASE 
        WHEN Phai = 1 THEN N'Nam' 
        ELSE N'Nữ' 
    END AS Phai, 
    MaKH, 
    CASE 
        WHEN HocBong > 500000 THEN N'Học bổng cao' 
        ELSE N'Mức trung bình' 
    END AS MucHocBong
FROM 
    SinhVien
	GO
--5
SELECT 
     HoSV + ' ' + TenSV as [họ và tên sinh viên],
    MaMH,
    Diem
FROM 
    SinhVien sv join Khoa kh on sv.MaKH= kh.MaKH 
	join Ketqua kq on sv.MaSV=kq.MaSV
ORDER BY 
    HoSV ASC, MaMH ASC
	GO
--6
SELECT 
    HoSV + ' ' + TenSV as [họ và tên sinh viên],CASE 
        WHEN Phai = 1 THEN N'Nam' 
        ELSE N'Nữ' 
    END AS Phai,
    TenKH
FROM 
    SinhVien sv join Khoa kh on sv.MaKH=kh.MaKH
WHERE 
    TenKH = N'Anh Văn'
	go
--7 
SELECT 
    K.TenKH,
    CONCAT(S.HoSV, ' ', S.TenSV) AS HoTen,
    mh.TenMH,
    mh.Sotiet,
    KQ.Diem
FROM 
    SinhVien S
JOIN 
    Khoa K ON S.MaKH = K.MaKH
JOIN 
	Ketqua KQ ON S.MaSV = KQ.MaSV
JOIN 
    MonHoc mh ON KQ.MaMH = mh.MaMH
WHERE 
    TenKH = N'Tin Học'
	GO
--8. kết quả học tập của sinh viên, gồm các thông tin: Họ và tên sinh viên, Mã khoa, Tên môn học, Điểm thi, Loại. trong đó loại sẽ là giỏi nếu điểm thi >8, từ 6 đến 8 thì loại là khá, nhỏ hơn 6 thì loại là trung bình
SELECT 
    CONCAT(S.HoSV, ' ', S.TenSV) AS HoTen,
    S.MaKH,
    M.TenMH,
    kq.Diem AS DiemThi,
    CASE 
        WHEN kq.Diem > 8 THEN 'Giỏi'
        WHEN kq.Diem BETWEEN 6 AND 8 THEN 'Khá'
        ELSE 'Trung Bình'
    END AS Loai
FROM 
    SinhVien S
JOIN 
    Ketqua kq ON S.MaSV = kq.MaSV
JOIN 
    MonHoc M ON kq.MaMH = M.MaMH
Go
--bài 3
--1. cho biết trung bình điểm thi theo từng môn, gồm các thông tin: Mã môn, tên môn, trung bình điểm thi
select mh.MaMH,mh.TenMH, AVG(Diem) as trungbinhdiemthi
from MonHoc mh join Ketqua kq on mh.MaMH=kq.MaMH
GROUP BY mh.MaMH, mh.TenMH
GO
--2. danh sách số môn thi của từng sinh viên, gồm các thông tin: họ tên sinh viên, Tên khoa, tổng số môn thi
SELECT 
     sv.HoSV + ' ' + TenSV as [họ và tên sinh viên],
	 kh.TenKH, Count(MaMH) as tongsomonthi
from SinhVien sv join Khoa kh on sv.MaKH=kh.MaKH
	join Ketqua kq on sv.MaSV=kq.MaSV
	GROUP BY sv.HoSV + ' ' + TenSV,kh.TenKH
	GO
--3. Tổng điểm thi của từng sinh viên, các thông tin: tên sinh viên, tên khoa, phái, tổng điểm thi
SELECT 
    CONCAT(sv.HoSV, ' ', sv.TenSV) AS [họ và tên sinh viên],
    K.TenKH,
    CASE WHEN sv.Phai = 1 THEN 'True' ELSE 'False' END AS Phai,
    SUM(kq.Diem) AS TongDiemThi
FROM 
    SinhVien sv
JOIN 
    Ketqua kq ON sv.MaSV = kq.MaSV
JOIN 
    Khoa K ON sv.MaKH = K.MaKH
GROUP BY 
    sv.MaSV, sv.HoSV, sv.TenSV, K.TenKH, sv.Phai
	GO
--4.cho biết tổng số sinh viên ở mỗi khoa, gồm các thông tin: tên khoa, tổng số sinh viên 
SELECT 
    K.TenKH,
    COUNT(S.MaSV) AS TongSoSinhVien
FROM 
    Khoa K
JOIN 
    SinhVien S ON K.MaKH = S.MaKH
GROUP BY 
    K.TenKH
	GO
--5. cho biết điểm cao nhất của mỗi sinh viên, gồm thông tin: họ tên sinh viên, điểm
SELECT 
    CONCAT(S.HoSV, ' ', S.TenSV) AS HoTen,
    MAX(kq.Diem) AS DiemCaoNhat
FROM 
    SinhVien S
JOIN 
    Ketqua kq ON S.MaSV = kq.MaSV
GROUP BY 
    S.MaSV, S.HoSV, S.TenSV
	GO
--6.Thông tin của môn học có số tiết nhiều nhất: Tên môn học, số tiết
SELECT TOP 1 -- lấy 30% top 30 percent
    TenMH,
    Sotiet
FROM 
    MonHoc
ORDER BY 
    Sotiet DESC
GO
	
--7. cho biết học bổng cao nhất của từng khoa, gồ mã khoa, tên khoa, học bổng cao nhất
SELECT 
    K.MaKH,
    K.TenKH,
    MAX(S.HocBong) AS HocBongCaoNhat
FROM 
    Khoa K
JOIN 
    SinhVien S ON K.MaKH = S.MaKH
GROUP BY 
    K.MaKH, K.TenKH,HocBong
	GO
--8. cho biết điểm cao nhất của mỗi môn, gồm: tên môn, điểm cao nhất
SELECT 
    M.TenMH,
    MAX(kq.Diem) AS DiemCaoNhat
FROM 
    MonHoc M
JOIN 
    Ketqua kq ON M.MaMH = kq.MaMH
GROUP BY 
    M.TenMH
GO
--9.thống kê số sinh viên học của từng môn, thông tin có: mã môn, tên môn, số sinh viên đang học
select mh.MaMH, mh.TenMH, Count(kq.MaSV) AS Soinhviendanghoc
FROM 
    MonHoc mh
JOIN 
    Ketqua kq ON mh.MaMH = kq.MaMH
GROUP BY 
    mh.MaMH, mh.TenMH
Go
--10.cho biết môn nào có điểm thi cao nhất, gồm các thông tin:tên môn, số tiết, tên sinh viên, điểm
SELECT TOP 1
    M.TenMH,
    M.Sotiet,
    CONCAT(S.HoSV, ' ', S.TenSV) AS HoTen,
    kq.Diem
FROM 
    MonHoc M
JOIN 
    Ketqua kq ON M.MaMH = kq.MaMH
JOIN 
    SinhVien S ON kq.MaSV = S.MaSV
ORDER BY 
    kq.Diem DESC
Go
--11.cho biết khoa nào có đông sinh viên nhất, gồm mã khoa, tên khoa, tổng số sinh viên.
SELECT TOP 1
    K.MaKH,
    K.TenKH,
    COUNT(S.MaSV) AS TongSoSinhVien
FROM 
    Khoa K
JOIN 
    SinhVien S ON K.MaKH = S.MaKH
GROUP BY 
    K.MaKH, K.TenKH
ORDER BY 
    TongSoSinhVien DESC
GO
--12.cho biết khoa nào có sinh viên lảnh học bổng cao nhất, gồm các thông tin sau: tên khoa, họ tên sinh viên, học bổng
SELECT TOP 1
    K.TenKH,
    CONCAT(S.HoSV, ' ', S.TenSV) AS HovaTen,
    S.HocBong
FROM 
    Khoa K
JOIN 
    SinhVien S ON K.MaKH = S.MaKH
ORDER BY 
    S.HocBong DESC
GO
--13.cho biết sinh viên của khoa tin học có học bổng cao nhất, gồm các thông tin: mã sinh viên, họ sinh viên, tên sinh viên, tên khoa, học bổng
SELECT TOP 1
  MaSV, HoSV, TenSV, TenKH, HocBong
from SinhVien sv join Khoa kh on sv.MaKH=kh.MaKH
where kh.MaKH = 'TH'
GO
--14.cho biết sinh viên nào có điểm môn cơ sở dữ liệu lớn nhất, gồm thông tin:họ sinh viên, tên môn, điểm
SELECT TOP 1
    HoSV,
    TenMH,
    Diem
FROM 
    SinhVien S
JOIN 
    Ketqua KQ ON S.MaSV = KQ.MaSV
JOIN 
    MonHoc M ON KQ.MaMH = M.MaMH
	WHERE 
    KQ.MaMH = '01'
ORDER BY 
    KQ.Diem DESC
GO
--15.cho biết 3 sinh viên có điểm thi môn đồ họa thấp nhất, thông tin: họ sinh viên, tên khoa, tên môn, điểm
SELECT TOP 3
    S.HoSV,
    K.TenKH,
    M.TenMH,
    KQ.Diem
FROM 
    SinhVien S
JOIN 
    Ketqua KQ ON S.MaSV = KQ.MaSV
JOIN 
    MonHoc M ON KQ.MaMH = M.MaMH
JOIN 
    Khoa K ON S.MaKH = K.MaKH
WHERE 
    KQ.MaMH = '04'
ORDER BY 
    KQ.Diem ASC
GO
--16.cho biết khoa nào có nhiều sinh viên nữ nhất, gồm thông tin: mã khoa, tên khoa
SELECT TOP 1
    K.MaKH,
    K.TenKH,
    COUNT(S.MaSV) AS SoSinhVienNu
FROM 
    Khoa K
JOIN 
    SinhVien S ON K.MaKH = S.MaKH
WHERE 
    S.Phai = 0
GROUP BY 
    K.MaKH, K.TenKH
ORDER BY 
    SoSinhVienNu DESC
GO
--17. thống kê sinh viên theo khoa, gồm các thông tin: mã khoa, tên khoa, tổng số sinh viên, tổng số sinh viên nữ
SELECT 
    K.MaKH,
    K.TenKH,
    COUNT(S.MaSV) AS TongSoSinhVien,
    SUM(CASE WHEN S.Phai = 0 THEN 1 ELSE 0 END) AS TongSoSinhVienNu
FROM 
    Khoa K
JOIN 
    SinhVien S ON K.MaKH = S.MaKH
GROUP BY 
    K.MaKH, K.TenKH
GO
--18
SELECT  SV.HoSV + ' ' + TenSV as [họ và tên sinh viên], SV.TenSV, KH.TenKH,
       CASE WHEN MIN(KQ.Diem) >= 4 THEN N'Đậu' END AS ketqua
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
JOIN Khoa KH ON SV.MaKH = KH.MaKH
GROUP BY SV.HoSV + ' ' + TenSV, SV.TenSV, KH.TenKH
GO
 --19
 select HoSV + ' ' + TenSV as [họ và tên sinh viên], TenKH, Diem as [ketqua],Phai
from SinhVien sv join Ketqua kq on sv.MaSV=kq.MaSV
 join Khoa kh on sv.MaKH=kh.MaKH
 where Diem >= 4 
 --20
 select TenMH, Diem
 from Ketqua kq join MonHoc mh on kq.MaMH=mh.MaMH
 where Diem >=4
 --21
 SELECT MH.MaMH, MH.TenMH
FROM MonHoc MH
JOIN Ketqua KQ ON MH.MaMH = KQ.MaMH
GROUP BY MH.MaMH, MH.TenMH
HAVING MIN(KQ.Diem) >= 5;
GO
--22
SELECT MH.MaMH, MH.TenMH,
       SUM(CASE WHEN KQ.Diem >= 5 THEN 1 ELSE 0 END) AS soluongdo,
       SUM(CASE WHEN KQ.Diem < 5 THEN 1 ELSE 0 END) AS soluongrot
FROM MonHoc MH
JOIN Ketqua KQ ON MH.MaMH = KQ.MaMH
GROUP BY MH.MaMH, MH.TenMH
GO
--23
SELECT MH.MaMH, MH.TenMH
FROM MonHoc MH
JOIN Ketqua KQ ON MH.MaMH = KQ.MaMH
GROUP BY MH.MaMH, MH.TenMH
HAVING MIN(KQ.Diem) >= 5;
--24
SELECT SV.MaSV, SV.TenSV, SV.MaKH
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
GROUP BY SV.MaSV, SV.TenSV, SV.MaKH
HAVING MIN(KQ.Diem) >= 5;
--Câu 25 Danh sách các sinh viên rớt trên 2 môn, gồm mã sinh viên, họ sinh viên, tên sinh viên và mã khoa.
SELECT SV.MaSV, SV.HoSV, SV.TenSV, SV.MaKH
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
WHERE KQ.Diem < 5
GROUP BY SV.MaSV, SV.HoSV, SV.TenSV, SV.MaKH
HAVING COUNT(KQ.MaMH) > 2;
--Câu 26 Danh sách những khoa có nhiều hơn 10 sinh viên, gồm mã khoa, tên khoa, và tổng số sinh viên của khoa.
SELECT KH.MaKH, KH.TenKH, COUNT(SV.MaSV) AS TongSinhVien
FROM Khoa KH
JOIN SinhVien SV ON KH.MaKH = SV.MaKH
GROUP BY KH.MaKH, KH.TenKH
HAVING COUNT(SV.MaSV) > 10;
--Câu 27 Danh sách những sinh viên thi nhiều hơn 4 môn, gồm mã sinh viên, họ tên sinh viên, số môn thi.
SELECT SV.MaSV, SV.HoSV, SV.TenSV, COUNT(KQ.MaMH) AS SoMonThi
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
GROUP BY SV.MaSV, SV.HoSV, SV.TenSV
HAVING COUNT(KQ.MaMH) > 4;
--Câu 28 Danh sách các khoa có 5 sinh viên nam trở lên, gồm mã khoa, tên khoa và tổng số sinh viên nam.
SELECT KH.MaKH, KH.TenKH, COUNT(SV.MaSV) AS TongSinhVienNam
FROM Khoa KH
JOIN SinhVien SV ON KH.MaKH = SV.MaKH
WHERE SV.Phai = 'False'
GROUP BY KH.MaKH, KH.TenKH
HAVING COUNT(SV.MaSV) >= 5;
--Câu 29 Danh sách những sinh viên có điểm trung bình trên 4, gồm họ tên sinh viên, tên khoa, giới tính và điểm trung bình.
SELECT SV.HoSV, SV.TenSV, KH.TenKH, SV.Phai, AVG(KQ.Diem) AS DiemTrungBinh
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
JOIN Khoa KH ON SV.MaKH = KH.MaKH
GROUP BY SV.MaSV, SV.HoSV, SV.TenSV, KH.TenKH, SV.Phai
HAVING AVG(KQ.Diem) > 4;
--Câu 30 Danh sách các môn có trung bình điểm thi lớn hơn 6, gồm mã môn, tên môn và trung bình điểm.
SELECT MH.MaMH, MH.TenMH, AVG(KQ.Diem) AS TrungBinhDiem
FROM MonHoc MH
JOIN Ketqua KQ ON MH.MaMH = KQ.MaMH
GROUP BY MH.MaMH, MH.TenMH
HAVING AVG(KQ.Diem) > 6;

-- Bài 4. Sử dụng tham số trong truy vấn
--1.cho biết danh sách những sinh viên của một khoa, gồm: mã sinh viên, họ tên sinh viên, giới tính,tên khoa. trong đó, giá trị mã khoa cần xem danh sách sinh viên sẽ được người dùng nhập khi thực thi câu truy vấn
DECLARE @MaKhoa VARCHAR(2) ='AV';

SELECT 
    MaSV,
     HoSV + ' ' + TenSV as [họ và tên sinh viên],
    CASE 
        WHEN SinhVien.Phai = 0 THEN N'Nam' 
        ELSE N'Nữ' 
    END AS GioiTinh,
    TenKH
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    SinhVien.MaKH = @MaKhoa
GO
--2. liệt kê danh sách sinh viên có điểm môn cơ sở dữ liệu lớn hơn một giá trị bất kỳ do người sử dụng nhập vào khi thực thi câu truy vấn, thông tin gồm: mã sinh viên, họ tên sinh viên, tên môn, điểm 
DECLARE @Diem INT =5; 

SELECT 
    SinhVien.MaSV,
    SinhVien.HoSV + ' ' + TenSV as [họ và tên sinh viên],
   MonHoc.TenMH,
    Ketqua.Diem 
FROM 
    Ketqua
JOIN 
    SinhVien ON Ketqua.MaSV = SinhVien.MaSV
JOIN 
    MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE 
    MonHoc.MaMH = '01' 
    AND Ketqua.Diem > @Diem
GO
--3.cho kết quả thi của các sinh viên theo môn, tên môn cần xem kết quả sẽ được nhập vào khi thực thi câu truy vấn. thông tin hiển thị gồm: Mã sinh viên, tên khoa, tên môn, điểm
DECLARE @MaSinhVien Varchar(3) = 'A01'; 
DECLARE @MaMonHoc NVARCHAR(50) = '01'; 

SELECT 
    SinhVien.MaSV,
    HoSV + ' ' + TenSV as [họ và tên sinh viên],
    TenKH,
    TenMH,
    Diem 
FROM 
    Ketqua
JOIN 
    SinhVien ON Ketqua.MaSV = SinhVien.MaSV
JOIN 
    MonHoc ON Ketqua.MaMH = MonHoc.MaMH
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    SinhVien.MaSV = @MaSinhVien 
    AND MonHoc.MaMH = @MaMonHoc;
GO
-- bài 5.Truy vấn con
--1.danh sách sinh viên chưa thi môn nào, thông tin gồm: mã sinh viên, mã khoa, phái
SELECT DISTINCT 
    SinhVien.MaSV, 
    HoSV + ' ' + TenSV as [họ và tên sinh viên], 
    Khoa.MaKH, 
    CASE 
        WHEN SinhVien.Phai = 0 THEN 'Nam' 
        ELSE N'Nữ' 
    END AS Phai
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
LEFT JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV
WHERE 
    Ketqua.Diem IS NULL;
GO
--2. danh sách những sinh viên chưa thi môn cơ sở dữ liệu, gồm các thông tin: mã sinh viên, họ và tên sinh viên, mã khoa.
SELECT DISTINCT 
    SinhVien.MaSV, 
   HoSV + ' ' + TenSV as [họ và tên sinh viên], 
    Khoa.MaKH
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
LEFT JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV
           AND Ketqua.MaMH = (SELECT MaMH FROM MonHoc WHERE MaMH = '01')
WHERE 
    Ketqua.Diem IS NULL;
GO
--3.cho biết môn nào chưa có sinh viên thi, gồm thông tin về: mã môn, tên môn, số tiết
SELECT 
    MonHoc.MaMH, 
    MonHoc.TenMH, 
    MonHoc.Sotiet
FROM 
    MonHoc
LEFT JOIN 
    Ketqua ON MonHoc.MaMH = Ketqua.MaMH
WHERE 
    Ketqua.MaMH IS NULL;
GO
--4. khoa nào chưa có sinh viên học
SELECT 
    Khoa.MaKH, 
    Khoa.TenKH
FROM 
    Khoa
LEFT JOIN 
    SinhVien ON Khoa.MaKH = SinhVien.MaKH
WHERE 
    SinhVien.MaSV IS NULL;
GO
--5.cho biết những sinh viên của khoa anh văn chưa thi môn cơ sở dữ liệu.
SELECT DISTINCT 
    SinhVien.MaSV, 
     HoSV + ' ' + TenSV as [họ và tên sinh viên], 
    Khoa.TenKH
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
LEFT JOIN 
    Ketqua ON SinhVien.MaSV = Ketqua.MaSV 
           AND Ketqua.MaMH = (SELECT MaMH FROM MonHoc WHERE TenMH = 'Cơ sở dữ liệu')
WHERE 
    Ketqua.Diem IS NULL 
    AND Khoa.MaKH = 'AV';
GO
--6.cho biết môn nào chưa có sinh viên khoa lý thi
SELECT DISTINCT 
    MonHoc.TenMH
FROM 
    MonHoc
LEFT JOIN 
    Ketqua ON MonHoc.MaMH = Ketqua.MaMH
LEFT JOIN 
    SinhVien ON Ketqua.MaSV = SinhVien.MaSV
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    Ketqua.MaSV IS NULL 
    AND Khoa.TenKH = 'Anh văn';
GO
--7.danh sách những sinh viên có điểm thi môn đồ họa nhỏ hơn điểm thi môn đồ họa nhỏ nhất của sinh viên khoa tin học.
SELECT TOP 1 
    HoSV + ' ' + TenSV as [họ và tên sinh viên], 
    Ketqua.Diem
FROM 
    Ketqua
JOIN 
    SinhVien ON Ketqua.MaSV = SinhVien.MaSV
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    Ketqua.MaMH = (SELECT MaMH FROM MonHoc WHERE MaMH = '04') 
    AND Khoa.MaKH = 'TH'
ORDER BY 
    Ketqua.Diem ASC;
	GO
--8. liệt kê những sinh viên sau sinh viên có tuổi nhỏ nhất trong khoa anh văn
SELECT TOP 1 
    HoSV + ' ' + TenSV as [họ và tên sinh viên], 
    SinhVien.NgaySinh, 
    Khoa.TenKH
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    Khoa.MaKH = 'AV'
ORDER BY 
    SinhVien.NgaySinh DESC;
GO
--9.cho biết những sinh viên có học bổng lớn hơn tổng học bổng của những sinh viên thuộc khoa triết
SELECT 
    MaSV, 
    HoSV + ' ' + TenSV as [họ và tên sinh viên], 
    HocBong
FROM 
    SinhVien
WHERE 
    SinhVien.HocBong > (SELECT SUM(HocBong) FROM SinhVien WHERE MaKH = (SELECT MaKH FROM Khoa WHERE MaKH = 'TR'));
GO
--10.danh sách sinh viên có nơi sinh cùng với nơi sinh của sinh viên có học bổng lớn nhất trong khoa lý
SELECT TOP 1 
    HoSV + ' ' + TenSV as [họ và tên sinh viên], 
    NgaySinh, 
    HocBong
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    Khoa.TenKH = N'Anh văn'
ORDER BY 
    SinhVien.HocBong DESC;

--11.danh sách sinh viên có điểm cao nhất ứng với mỗi môn, gồm thông tin:mã sinh viên, họ tên sinh viên, tên môn, điểm.
SELECT 
    Ketqua.MaSV, 
    HoSV + ' ' + TenSV as [họ và tên sinh viên], 
    Ketqua.MaMH, 
    MonHoc.TenMH, 
    Ketqua.Diem
FROM 
    Ketqua
JOIN 
    SinhVien ON Ketqua.MaSV = SinhVien.MaSV
JOIN 
    MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE 
    Ketqua.Diem = (SELECT MAX(Diem) FROM Ketqua WHERE Ketqua.MaMH = MonHoc.MaMH);
GO
--12.các sinh viên có học bổng cao nhất theo từng khoa, gồm mã sinh viên, tên khoa, học bổng.
SELECT 
    SinhVien.MaSV, 
    HoSV + ' ' + TenSV as [họ và tên sinh viên], 
    Khoa.MaKH, 
    SinhVien.HocBong
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    SinhVien.HocBong = (SELECT MAX(HocBong) FROM SinhVien WHERE MaKH = Khoa.MaKH);
GO
--Bài 6
--1. thêm một sinh viên mới
INSERT INTO SinhVien values (N'C02',N'Lê Thành',N'Nguyên',0, CAST(N'1980-10-20T00:00:00' AS SmallDateTime), N'TP.HCM', N'TH', 85000, NULL)
--2.thêm một môn học mới
INSERT INTO MonHoc values (10,N'Xử lý ảnh',45)
--3. thêm một khoa mới
INSERT INTO Khoa values (N'CT','Công trình')
--4.thêm một sinh viên mới
INSERT INTO SinhVien values (N'C04',N'Nguyễn Trần','Quân',0, GETDATE(),N'Huế',N'CT',950000,Null)
--5.thêm vào bảng kết quả
INSERT INTO Ketqua (MaSV, MaMH, Diem)
SELECT MaSV, '10', 7
FROM SinhVien
WHERE MaKH = 'TH';
--6.thêm vào bảng kết quả
INSERT INTO Ketqua (MaSV, MaMH, Diem)
SELECT 'C04', MaMH, 8
FROM MonHoc;
--bài 7
--1.Viết câu truy vấn để tạo bảng có tên DeleteTable gồm các thông tin sau: mã sinh viên, họ tên sinh viênphasi,ngày sinh,nơi sinh,tên khoa, học bổng 
create table DeleteTable(
	MaSV nvarchar(3) NOT NULL primary key,
	HoTenSV nvarchar(15) NOT NULL,
	Phai bit NOT NULL,
	NgaySinh smalldatetime NOT NULL,
	NoiSinh nvarchar(100) NOT NULL,
	TenKH nvarchar(2) NOT NULL,
	HocBong float NULL,
)
INSERT [dbo].[DeleteTable] ([MaSV], [HoTenSV], [Phai], [NgaySinh], [NoiSinh], [TenKH], [HocBong] ) VALUES (N'A02', N'Trần Văn An', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000)
INSERT [dbo].[DeleteTable] ([MaSV], [HoTenSV], [Phai], [NgaySinh], [NoiSinh], [TenKH], [HocBong] ) VALUES (N'A03', N'Lê Thu Bạch', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0)
INSERT [dbo].[DeleteTable] ([MaSV], [HoTenSV], [Phai], [NgaySinh], [NoiSinh], [TenKH], [HocBong]) VALUES (N'A04', N'Trần Anh Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000)
INSERT [dbo].[DeleteTable] ([MaSV], [HoTenSV], [Phai], [NgaySinh], [NoiSinh], [TenKH], [HocBong]) VALUES (N'A10', N'Trần Thị Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0)
--2.xóa tất cả những sinh viên không có học bổng trong bảng deletetable
DELETE FROM DeleteTable
WHERE HocBong IS NULL OR HocBong = 0;

--3.xóa tất cả những sinh viên trong bảng deletetable sinh vào ngày 20/12/1987
DELETE FROM DeleteTable
WHERE NgaySinh = '1987-12-20';

--4.xóa tất cả những sinh viên trong bảng deletetable sinh trước tháng 3 năm 1987
DELETE FROM DeleteTable
WHERE NgaySinh < '1987-03-01';

--5.xóa tất cả những sinh viên nam của khoa tin học trong bảng deletetable
DELETE FROM DeleteTable
WHERE Phai = 0 and TenKH = 'TH';

--bài 8
--1
UPDATE MonHoc
SET Sotiet = 45
WHERE MaMH = '05';
--2
UPDATE SinhVien
SET HoSV = N'Trần Thanh', TenSV=N'Kỳ'
WHERE HoSV = N'Trần Thị' and TenSV=N'Mai';
--3
UPDATE SinhVien
SET Phai = 'False'
WHERE HoSV = N'Trần Thanh' and TenSV=N'Kỳ';
--4
UPDATE SinhVien
SET NgaySinh='1990-07-05'
Where HoSV=N'Trần Thị Thu' and TenSV=N'Thủy'
--5
UPDATE SinhVien
SET HocBong = HocBong + 100000
WHERE MaKH = 'AV';
--6
UPDATE Ketqua
SET Diem = CASE
	When Diem + 5 > 10 Then 10
	ELSE Diem +5
	END 
where MaMH ='02' AND MaSV IN (SELECT MaSV from SinhVien Where MaKH='AV');

--7
UPDATE SinhVien
SET HocBong = CASE
		when Phai='1' and MaKH =N'AV' THEN HocBong +100000
		when Phai='0' and MaKH =N'TH' THEN HocBong +150000
		ELSE HocBong +50000
END;

--8
UPDATE Ketqua
SET Diem = CASE 
		When MaSV IN (SELECT MaSV FROM SinhVien where MaKH =N'AV') then LEAST(Diem +2, 10)
		When MaSV IN (SELECT MaSV FROM SinhVien where MaKH =N'TH') then GREATEST(Diem-1,0)
		else Diem
		END
where MaMH='01';

--lab 05
--bài 1
--1 liệt kê các sinh viên có học bổng lớn hơn 100000 và sinh ở tp.HCM, gồm các thông tin: họ tên sinh viên,mã khoa, nơi sinh, học bổng
create view vw_SVien_HocBong
as
select HoSV, MaKH, NoiSinh, HocBong
from SinhVien
where HocBong > 100000 and NoiSinh like N'%Tp.HCM%'
go
select *from vw_SVien_HocBong
--2.danh sách các sinh viên của khoa Anh văn và khoa triết, gồm các thông tin : mã sinh viên, mã khoa, phái 
create view vw_SVien_AVan_Triet
as
	select MaSV,MaKH,Phai
	from SinhVien 
	where MaKH in ('AV','TR')
go
select*from vw_SVien_AVan_Triet
--3.cho biết những sinh viên có ngày sinh từ ngày 01/01/1986 đến ngày 05/06/1992, gồm các thông tin: Mã sinh viên, Ngày sinh, nơi sinh, học bổng.
create view vw_NgaySinh_SV
as
	select MaSV,NgaySinh,NoiSinh,HocBong
	from SinhVien
	where NgaySinh BETWEEN '1986-01-01' AND '1992-06-05'
go
select*from vw_NgaySinh_SV
--4.Danh sách những sinh viên có học bổng từ 200000 đến 800000 gồ các thông tin : mã sinh viên, ngày sinh, phái, khoa
create view vw_hocbong_SV
as
	select MaSV,NgaySinh,Phai,MaKH
	from SinhVien
	where HocBong BETWEEN 200000 AND 800000
go
select*from vw_hocbong_SV
--5.cho biết những môn học có số tiết lớn hơn 40 và nhỏ hơn 60, gồm các thông tin :mã môn học,tên môn học, số tiết 
create view vw_monhoc
as 
	SELECT MaMH, TenMH, SoTiet
	FROM MonHoc
	WHERE SoTiet > 40 AND SoTiet < 60
	GO
select*from vw_monhoc
--6.liệt kê những sinh viên nam của khoa anh văn, gồm các thông tin :mã sinh viên, họ tên sinh viên, phái 
create view vw_SVnam
as
	select MaSV,HoSV,TenSV,Phai
	from SinhVien
	where Phai=0 and MaKH='AV'
	go
select*from vw_SVnam
--7.danh sách sinh viên có nơi sinh ở hà nội và ngày sinh sau ngày 01/01/1990, gồm các thông tin: họ sinh viên, tên sinh viên, nơi sinh, ngày sinh 
create view vw_NoiSinhSV
as
	select HoSV,TenSV,NoiSinh,NgaySinh
	from SinhVien
	where NoiSinh = N'Hà Nội' AND NgaySinh > '1990-01-01'
go
select*from vw_NoiSinhSV
--8.liệt kê những sinh viên nữ, tên có chứa chữ N 
create view vw_SVNU
as
	select * from SinhVien
	where Phai= 1 and TenSV like '%N%'
go
select*from vw_SVNU
--9.danh sách các nam sinh viên khoa tin học có ngày sinh sau ngày 30/5/1986
create view vw_SVnam_TH
as
	select MaSV,HoSV,TenSV,MaKH
	from SinhVien
	where Phai = 0 AND MaKH ='TH' AND NgaySinh < '1986-05-30'
go
select * from vw_SVnam_TH
--10.liệt kê danh sách sinh viên gồm các thông tin sau:họ và tên sinh viên, Giới tính, ngày sinh. trong đó giới tính hiển thị ở dạng nam/nữ  tùy theo gia trị của field Phai là true hay false 
create view vw_SVPhai
as
	SELECT HoSV, TenSV, 
       CASE 
           WHEN Phai = 'False' THEN '0' 
           WHEN Phai = 'True' THEN '1' 
       END AS GioiTinh, 
       NgaySinh
FROM SinhVien
go
select*from vw_SVPhai
--11.cho biết danh sách sinh viên gồm các thông tin sau:mã sinh viên, tuổi, nơi sinh, mã khoa. trong đó tuổi sẽ được tính bằng cách lấy năm hiện hành trừ cho năm sinh
create view vw_SVTuoi
as 
	SELECT MaSV, DATEDIFF(YEAR, NgaySinh, GETDATE()) AS Tuoi, NoiSinh, MaKH
	FROM SinhVien
	go
select*from vw_SVTuoi
--12.danh sách những sinh viên có tuổi từ 20 đến 30, thông tin gồm:họ tên sinh viên, tuổi, tên khoa
create view vw_SVTuoi20_30
as
	SELECT 
    sv.HoSV, sv.TenSV,
    DATEDIFF(YEAR, sv.NgaySinh, GETDATE()) AS Tuoi, 
    k.TenKH
FROM 
    SinhVien sv
JOIN 
    Khoa k ON sv.MaKH = k.MaKH
WHERE 
    DATEDIFF(YEAR, sv.NgaySinh, GETDATE()) BETWEEN 20 AND 30
	go
select*from vw_SVTuoi20_30
--13.cho biết thông tin về mức học bổng của các sinh viên, gồm:mã sinh viên,phái,mã khoa, mức học bổng.trong đó, mức học bổng sẽ hiển thị là học bổng cao nếu giá trị của field học bổng lớn hơn 500000 và ngược lại hiển thị là mức trung bình 
create view vw_muchocbongSV
as
	SELECT 
    MaSV, 
    CASE 
        WHEN Phai = 1 THEN N'Nam' 
        ELSE N'Nữ' 
    END AS Phai, MaKH, 
    CASE 
        WHEN HocBong > 500000 THEN N'Học bổng cao' 
        ELSE N'Mức trung bình' 
    END AS MucHocBong
	FROM SinhVien
	GO
select*from vw_muchocbongSV
--14.danh sách sinh viên của khoa anh văn, điều kiện lọc phải sử dụng tên khoa, gồm các thông tin sau: họ tên sinh viên, giới tính, tên khoa. trong đó giới tính sẽ hiển thị dạng nam/nữ
create view vw_SVAnhvan
as 
	SELECT 
    HoSV + ' ' + TenSV as [họ và tên sinh viên],CASE 
        WHEN Phai = 1 THEN N'Nam' 
        ELSE N'Nữ' 
    END AS Phai,
    TenKH
FROM 
    SinhVien sv join Khoa kh on sv.MaKH=kh.MaKH
WHERE 
    TenKH = N'Anh Văn'
	go
select*from vw_SVAnhvan
--15.liệt kê bảng điểm của sinh viên khoa tin học, gồm các thông tin :tên khoa, học tên sinh viên, tên môn học, số tiết, số điêm
create view vw_bangdiemsv
as
	select TenKH,CONCAT(S.HoSV, ' ', S.TenSV) AS HoTen,
    TenMH,Sotiet,Diem
FROM SinhVien S JOIN 
    Khoa K ON S.MaKH = K.MaKH
JOIN 
	Ketqua KQ ON S.MaSV = KQ.MaSV
JOIN 
    MonHoc mh ON KQ.MaMH = mh.MaMH
WHERE 
    TenKH = N'Tin Học'
	GO
select*from vw_bangdiemsv
--16.kết quả học tập của sinh viên,gồm các thông tin: họ tên sinh viên, mã khoa, tên môn học, điểm thi, loại.trong đó, loại sẽ là giỏi nếu điểm thi>8, từ 6 đến 8 thì loại là khá, nhỏ hơn 6 thì loại là trung bình
create view vw_kqsinhvien
as
	SELECT CONCAT(HoSV, ' ',TenSV) AS HoTen,MaKH,TenMH,Diem AS DiemThi,
    CASE 
        WHEN Diem > 8 THEN 'Giỏi'
        WHEN Diem BETWEEN 6 AND 8 THEN 'Khá'
        ELSE 'Trung Bình'
    END AS Loai
FROM SinhVien S
JOIN 
    Ketqua kq ON S.MaSV = kq.MaSV
JOIN 
    MonHoc M ON kq.MaMH = M.MaMH
Go
select*from vw_kqsinhvien
--17. cho biết học bổng cao nhất của từng khoa, gồm mã khoa,tên khoa, học bổng cao nhất
create view vw_hocbongcaonhat
as
	SELECT K.MaKH,K.TenKH,MAX(S.HocBong) AS HocBongCaoNhat
FROM Khoa K JOIN SinhVien S ON K.MaKH = S.MaKH
GROUP BY K.MaKH, K.TenKH,HocBong
GO
select*from vw_hocbongcaonhat
--18.thống kê số sinh viên học của từng môn, thông tin có: mã môn, tên môn,số sinh viên đang học
create view vw_sosinhvien
as
	select mh.MaMH, mh.TenMH, Count(kq.MaSV) AS Soinhviendanghoc
	FROM MonHoc mh JOIN 
    Ketqua kq ON mh.MaMH = kq.MaMH
	GROUP BY mh.MaMH, mh.TenMH
Go
select*from vw_sosinhvien
--19.cho biết môn nào có điểm thi cao nhất, gồm các thông tin: tên môn, số tiết, tên sinh viên, điểm 
create view vw_diemcaonhat
as 
	SELECT TOP 1
    M.TenMH,M.Sotiet,CONCAT(S.HoSV, ' ', S.TenSV) AS HoTen,kq.Diem
	FROM MonHoc M JOIN Ketqua kq ON M.MaMH = kq.MaMH
	JOIN SinhVien S ON kq.MaSV = S.MaSV
	ORDER BY kq.Diem DESC
Go
select*from vw_diemcaonhat
--20 cho biết khoa nào có đông sinh viên nhất, gồm mã khoa, tên khoa, tổng số sinh viên
create view vw_khoa_sinhvien
as
	SELECT TOP 1
    K.MaKH,K.TenKH,COUNT(S.MaSV) AS TongSoSinhVien
	FROM Khoa K JOIN SinhVien S ON K.MaKH = S.MaKH
	GROUP BY K.MaKH, K.TenKH
	ORDER BY TongSoSinhVien DESC
GO
select *from vw_khoa_sinhvien
--21.cho biết khoa nào có sinh viên lảnh học bổng cao nhất, gồm các thông tin sau: tên khoa, họ tên sinh viên, học bổng
create view vw_svlanhhocbong
as
SELECT TOP 1
    K.TenKH,
    CONCAT(S.HoSV, ' ', S.TenSV) AS HovaTen,
    S.HocBong
FROM 
    Khoa K
JOIN 
    SinhVien S ON K.MaKH = S.MaKH
ORDER BY 
    S.HocBong DESC
GO
select*from vw_svlanhhocbong
--22.cho biết sinh viên của khoa tin học có học bổng cao nhất, gồm các thông tin: mã sinh viên, họ sinh viên, tên sinh viên, tên khoa, học bổng
create view vw_svkhoatinhoc
as
SELECT TOP 1
  MaSV, HoSV, TenSV, TenKH, HocBong
from SinhVien sv join Khoa kh on sv.MaKH=kh.MaKH
where kh.MaKH = 'TH'
GO
select*from vw_svkhoatinhoc
--23.cho biết sinh viên nào có điểm môn cơ sở dữ liệu lớn nhất, gồm thông tin:họ sinh viên, tên môn, điểm
create view vw_diemcosodulieu
as
SELECT TOP 1
    HoSV,TenMH,Diem
FROM SinhVien S
JOIN Ketqua KQ ON S.MaSV = KQ.MaSV
JOIN MonHoc M ON KQ.MaMH = M.MaMH
WHERE KQ.MaMH = '01'
ORDER BY KQ.Diem DESC
GO
select*from vw_diemcosodulieu
--24.cho biết 3 sinh viên có điểm thi môn đồ họa thấp nhất, thông tin: họ sinh viên, tên khoa, tên môn, điểm
create view vw_diemdohoa
as
SELECT TOP 3
    S.HoSV,K.TenKH,M.TenMH,KQ.Diem
FROM SinhVien S
JOIN 
    Ketqua KQ ON S.MaSV = KQ.MaSV
JOIN 
    MonHoc M ON KQ.MaMH = M.MaMH
JOIN 
    Khoa K ON S.MaKH = K.MaKH
WHERE KQ.MaMH = '04'
ORDER BY KQ.Diem ASC
GO
select*from vw_diemdohoa
--25.cho biết khoa nào có nhiều sinh viên nữ nhất, gồm thông tin: mã khoa, tên khoa
create view vw_khoanhieusvnu
as 
SELECT TOP 1
    K.MaKH,K.TenKH,COUNT(S.MaSV) AS SoSinhVienNu
FROM Khoa K
JOIN SinhVien S ON K.MaKH = S.MaKH
WHERE S.Phai = 0
GROUP BY K.MaKH, K.TenKH
ORDER BY SoSinhVienNu DESC
GO
select*from vw_khoanhieusvnu
--26.thống kê sinh viên theo khoa, gồm các thông tin: mã khoa, tên khoa, tổng số sinh viên, tổng số sinh vien nữ
create view vw_thongkesvien
as
SELECT K.MaKH,K.TenKH,
    COUNT(S.MaSV) AS TongSoSinhVien,
    SUM(CASE WHEN S.Phai = 0 THEN 1 ELSE 0 END) AS TongSoSinhVienNu
FROM Khoa K
JOIN SinhVien S ON K.MaKH = S.MaKH
GROUP BY K.MaKH, K.TenKH
GO
select*from vw_thongkesvien 
--27.cho biết kết quả học tập của sinh viên, gồm họ tên sinh viên, tên khoa,kết quả. trong đó, kết quả sẽ là đậu nếu không có môn nào có điểm nhỏ hơn 4 
create view vw_ketquahoctap
as
SELECT  SV.HoSV + ' ' + TenSV as [họ và tên sinh viên], SV.TenSV, KH.TenKH,
       CASE WHEN MIN(KQ.Diem) >= 4 THEN N'Đậu' END AS ketqua
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
JOIN Khoa KH ON SV.MaKH = KH.MaKH
GROUP BY SV.HoSV + ' ' + TenSV, SV.TenSV, KH.TenKH
GO
select*from vw_ketquahoctap
--28.danh sách những sinh viên không có môn nào nhỏ hơn 4 điểm, gồm các thông tin: họ tên sinh viên, khoa, phái 
create view vw_danhsachsv
as
select HoSV + ' ' + TenSV as [họ và tên sinh viên], TenKH, Diem as [ketqua],Phai
from SinhVien sv join Ketqua kq on sv.MaSV=kq.MaSV
 join Khoa kh on sv.MaKH=kh.MaKH
 where Diem >= 4
 go
 select*from vw_danhsachsv
--29.cho biết danh sách những môn không có điểm thi nhỏ hơn 4, gồm các thông tin: mã môn, tên môn.
create view vw_danhsachmonhoc
as
	select mh.MaMH,mh.TenMH
	from MonHoc mh join Ketqua kq on mh.MaMH=kq.MaMH
	where Diem >4
	group by mh.MaMH,mh.TenMH
	go
select*from vw_danhsachmonhoc
--30.cho biết những khoa không có sinh viên rớt, sinh viên rớt nếu điểm thi của môn nhỏ hơn 5, gồm các thông tin: mã khoa, tên khoa.
create view vw_sinhvienrot
as
SELECT k.MaKH,k.TenKH
FROM Khoa k
JOIN SinhVien sv on sv.MaKH=k.MaKH
join Ketqua kq on sv.MaSV=kq.MaSV
group by k.MaKH,k.TenKH
HAVING MIN(KQ.Diem) >= 5;
GO
select*from vw_sinhvienrot
--31.thống kê số sinh viên đậu và số sinh viên rớt của từng môn, biết rằng sinh viên rớt khi điểm của môn nhỏ hưn 5, gồm có :mã môn, tên môn, số sinh viên đậu, số sinh viên rớt 
create view vw_svdau_svrot
as
SELECT MH.MaMH, MH.TenMH,
       SUM(CASE WHEN KQ.Diem >= 5 THEN 1 ELSE 0 END) AS soluongdo,
       SUM(CASE WHEN KQ.Diem < 5 THEN 1 ELSE 0 END) AS soluongrot
FROM MonHoc MH
JOIN Ketqua KQ ON MH.MaMH = KQ.MaMH
GROUP BY MH.MaMH, MH.TenMH
GO
select*from vw_svdau_svrot
--32. cho biet môn nao không có sinh viên rớt, gồm có: mã môn, tên môn 
create view vw_khongcosvrot
as
SELECT MH.MaMH, MH.TenMH
FROM MonHoc MH
JOIN Ketqua KQ ON MH.MaMH = KQ.MaMH
GROUP BY MH.MaMH, MH.TenMH
HAVING MIN(KQ.Diem) >= 5
GO
select*from vw_khongcosvrot
--33.danh sách sinh viên khong có môn nào rớt, thông tin gồm:mã sinh viên, họ tên, mã khoa.
create view vw_svkhongcomonnaorot
as
SELECT SV.MaSV, SV.TenSV, SV.MaKH
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
GROUP BY SV.MaSV, SV.TenSV, SV.MaKH
HAVING MIN(KQ.Diem) >= 5
go
select*from vw_svkhongcomonnaorot
--34.danh sách các sinh viên rớt trên 2 môn, gồm mã sinh viên,họ sinh viên, tên sinh viên, mã khoa.
create view vw_svrottren2mon
as
SELECT SV.MaSV, SV.HoSV, SV.TenSV, SV.MaKH
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
WHERE Diem < 5
GROUP BY SV.MaSV, SV.HoSV, SV.TenSV, SV.MaKH
HAVING COUNT(MaMH) > 2
go
select*from vw_svrottren2mon
--35.Danh sách những khoa có nhiều hơn 10 sinh viên, gồm mã khoa, tên khoa, và tổng số sinh viên của khoa.
create view vw_khoanhieuhon10sv
as
SELECT KH.MaKH, KH.TenKH, COUNT(SV.MaSV) AS TongSinhVien
FROM Khoa KH
JOIN SinhVien SV ON KH.MaKH = SV.MaKH
GROUP BY KH.MaKH, KH.TenKH
HAVING COUNT(SV.MaSV) > 10
go
select*from vw_khoanhieuhon10sv
--36. Danh sách những sinh viên thi nhiều hơn 4 môn, gồm mã sinh viên, họ tên sinh viên, số môn thi.
create view vw_svthinhieuhon4mon
as 
SELECT SV.MaSV, SV.HoSV, SV.TenSV, COUNT(KQ.MaMH) AS SoMonThi
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
GROUP BY SV.MaSV, SV.HoSV, SV.TenSV
HAVING COUNT(KQ.MaMH) > 4
select*from vw_svthinhieuhon4mon
--37 Danh sách các khoa có 5 sinh viên nam trở lên, gồm mã khoa, tên khoa và tổng số sinh viên nam.
create view vw_khoaco5svnam
as
SELECT KH.MaKH, KH.TenKH, COUNT(SV.MaSV) AS TongSinhVienNam
FROM Khoa KH
JOIN SinhVien SV ON KH.MaKH = SV.MaKH
WHERE SV.Phai = 'False'
GROUP BY KH.MaKH, KH.TenKH
HAVING COUNT(SV.MaSV) >= 5
go
select*from vw_khoaco5svnam
--38.Danh sách những sinh viên có điểm trung bình trên 4, gồm họ tên sinh viên, tên khoa, giới tính và điểm trung bình.
create view vw_diemtrungbinhtren4
as
SELECT SV.HoSV, SV.TenSV, KH.TenKH, SV.Phai, AVG(KQ.Diem) AS DiemTrungBinh
FROM SinhVien SV
JOIN Ketqua KQ ON SV.MaSV = KQ.MaSV
JOIN Khoa KH ON SV.MaKH = KH.MaKH
GROUP BY SV.MaSV, SV.HoSV, SV.TenSV, KH.TenKH, SV.Phai
HAVING AVG(KQ.Diem) > 4
go
select*from vw_diemtrungbinhtren4 
--39  Danh sách các môn có trung bình điểm thi lớn hơn 6, gồm mã môn, tên môn và trung bình điểm.
create view vw_TBdiemthilonhon6
as
SELECT MH.MaMH, MH.TenMH, AVG(KQ.Diem) AS TrungBinhDiem
FROM MonHoc MH
JOIN Ketqua KQ ON MH.MaMH = KQ.MaMH
GROUP BY MH.MaMH, MH.TenMH
HAVING AVG(KQ.Diem) > 6
select*from vw_TBdiemthilonhon6