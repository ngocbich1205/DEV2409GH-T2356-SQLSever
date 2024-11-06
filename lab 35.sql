create database QLSINHVIEN
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
	SELECT 
    M.TenMH,M.Sotiet,CONCAT(S.HoSV, ' ', S.TenSV) AS HoTen,kq.Diem
	FROM MonHoc M JOIN Ketqua kq ON M.MaMH = kq.MaMH
	JOIN SinhVien S ON kq.MaSV = S.MaSV

WHERE kq.Diem = (SELECT MAX(DIEM) FROM Ketqua WHERE MaMH = Ketqua.MaMH)
Go
select*from vw_diemcaonhat
drop view vw_diemcaonhat
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