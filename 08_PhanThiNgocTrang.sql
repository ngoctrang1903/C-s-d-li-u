use nhom08
go
--1
Create table NhanVien ( 
MaNV char(10) primary key, 
TenNV nvarchar(50), 
MaCV char(10), 
DiaChiNV nvarchar(50), 
SdtNV char(10), 
Email varchar(50), 
MaCN char(10), 
GioiTinh char(10),
MaLichLamViec char(10),
FOREIGN KEY (MaCV) REFERENCES Luong(MaCV),
FOREIGN KEY (MaLichLamViec) REFERENCES LichLamViec(MaLichLamViec),
FOREIGN KEY (MaCN) REFERENCES ChiNhanh(MaCN)
);
--2
Create table KhachHang 
( 
MaKH char(10) primary key, 
TenKH nvarchar(50), 
SdtKH char(10), 
EmailKH varchar(50), 
HangThanhVien varchar(20), 
NgaySinh datetime, 
DiaChi nvarchar(50), 
GioiTinhKh char(10)
);
--3
create table Luong ( 
MaCV char(10) primary key, 
HesoLuong decimal, 
TenCV nvarchar(50), 
MaNV char(10),
FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
 );
 --4
create table DonDatHang ( 
MaDH char(10) primary key, 
TongTien decimal(10,2), 
NgayDat datetime, 
MaKH char(10), 
MaSP char(10), 
FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
);
--5
create table HoaDon ( 
MaHD char(10) primary key, 
NgayLap datetime, 
MaSP char(10), 
TenSP nvarchar(50),
GiaTien decimal(10,2), 
MaPTTT char(10), 
MaNV char(10), 
TinhTrangTT nvarchar(50), 
DiachiNhanHang nvarchar(50), 
NgayNhanHang datetime, 
GhiChu Nvarchar(100),
FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP),
FOREIGN KEY (MaPTTT) REFERENCES PhuongThucThanhToan(MaPTTT),
FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);
--6
create table ChiNhanh ( 
MaCN char(10) primary key , 
Diachi nvarchar(50), 
MaNV char(10),
FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);
--7
create table LichLamViec ( 
MaLichLamViec char(10) primary key, 
MaNV char(10), 
NgayLamViec datetime, 
FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);
--8
create table SanPham ( 
MaSP char(10) primary key, 
TenSP Nvarchar (100),
MoTa nvarchar(50), 
GiaGoc decimal(10,2), 
GiaKM decimal(10,2), 
HinhAnh Nvarchar(20), 
HanSD datetime, 
MaLoaiSP char(10),
FOREIGN KEY (MaLoaiSP) REFERENCES LoaiSP(MaLoaiSP)
 );
 --9
create table PhuongThucThanhToan ( 
MaPTTT char(10) primary key, 
TenPTTT nvarchar(50), 
HinhAnhPTTT Nvarchar(20), 
MotaPTTT nvarchar(50),
 );
 --10
create table LoaiSP ( 
MaLoaiSP char(10) primary key, 
TenLoai nvarchar(50), 
);

use Lab8
go 

Create table NhanVien ( 
MaNV char(10) primary key, 
TenNV nvarchar(50), 
MaCV char(10), 
DiaChiNV nvarchar(50), 
SdtNV char(10), 
Email varchar(50), 
MaCN char(10), 
GioiTinh char(10),
MaLichLamViec char(10),
);

Create table KhachHang 
( 
MaKH char(10) primary key, 
TenKH nvarchar(50), 
SdtKH char(10), 
EmailKH varchar(50), 
HangThanhVien varchar(20), 
NgaySinh datetime, 
DiaChi nvarchar(50), 
);

create table Luong ( 
MaCV char(10) primary key, 
HesoLuong decimal, 
TenCV nvarchar(50), 
MaNV char(10)
 );

create table DonDatHang ( 
MaDH char(10) primary key, 
TongTien decimal, 
NgayDat datetime, 
MaKH char(10), 
MaSP char(10), 
);

create table HoaDon ( 
MaHD char(10) primary key, 
NgayLap datetime, 
MaSP char(10), 
TenSp nvarchar(50), 
GiaTien decimal, 
MaPTTT char(10), 
MaNV char(10), 
TinhTrangTT nvarchar(50), 
DiachiNhanHang nvarchar(50), 
NgayNhanHang datetime, 
);

create table ChiNhanh ( 
MaCN char(10) primary key , 
Diachi nvarchar(50), 
MaNV char(10), 
);

create table LichLamViec ( 
MaLichLamViec char(10) primary key, 
MaNV char(10), 
NgayLamViec datetime, 
);

create table SanPham ( 
MaSP char(10) primary key, 
MaKH char(10), 
MoTa nvarchar(50), 
GiaGoc decimal, 
GiaKM decimal, 
HinhAnh image, 
HanSD datetime, 
MaLoaiSP char(10),
 );

create table PhuongThucThanhToan ( 
MaPTTT char(10) primary key, 
TenPTTT nvarchar(50), 
HinhAnhPTTT image, 
MotaPTTT nvarchar(50),
 );

create table LoaiSP ( 
MaLoaiSP char(10) primary key, 
TenLoai nvarchar(50), 
);

insert into NhanVien
values 
	('NV01',N'Nguy?n Hoàng Phúc','TT01',N'730 L?c Long Quân, P9, Qu?n Tân Bình, TPHCM',0389442597,'nhphuc2101@gmail.com','CN01','nam','LLVTT01'),
	('NV02',N'Phan Th? Ng?c Trang','BH01',N'137/3 Nguy?n Du, P7, Qu?n Gò V?p, TPHCM',0905601785,'ngoctrangphan2@gmail.com','CN01','nu','LLVBH01'),
	('NV01',N'Nguy?n Th? Lotso','QL01',N'828 S? V?n H?nh, P13, Qu?n 10, TPHCM',0389442597,'nhphuc2101@gmail.com','CN02','nam','LLVQL01');
insert into KhachHang
Values
	('KH01',N'Nguy?n Th? Lan',0905015080,'lanthi03@gmail.com','Gold','07/02/2003',N'87 ? Lan Nguyên Phi, Ph??ng Hòa C??ng B?c, Qu?n H?i Châu, Tp ?à N?ng '),
	('KH01',N'Pat Th? Gam',0321441295,'patgaming02@gmail.com','Platinum','04/08/2003',N'82A Bình Th?i, Ph??ng 11, Qu?n 11, TP HCM'),
	('KH01',N'Hu V?n ?a',0342342224,'biahudamaidinh03@gmail.com','Diamond','03/02/2003',N'100 Bình Th?i, Ph??ng 14,  Qu?n 11, TP HCM');
insert into Luong
Values 
	('TT01','1.8',N'Nhân Viên Ti?p Th?','NV01'),
	('BH01','1.7',N'Nhân Viên Bán Hàng','NV02'),
	('PL01','2.2',N'Qu?n lí c?a hàng','NV03');
insert into DonDatHang
values
	('DH01','20,000','12/8/2023','KH01','3NADOL'),
	('DH02','15,000','1/8/2023','KH02','S4LONP4S'),
	('DH03','25,000','3/8/2023','KH03','893603');
insert into HoaDon
values
('HD01','3/8/2023','3NADOL','Thu?c gi?m ?au PANADOL','20,000','TM','NV01','Thanh Toán Thành Công','82A Bình Th?i, Ph??ng 11, Qu?n 11, TP HCM','14/8/2023'),
	('HD02','2/8/2023','S4LONP4S','Mi?ng dán gi?m ?au Salonpas','15,000','CK','NV02','Thanh Toán Thành Công','87 ? Lan Nguyên Phi, Ph??ng Hòa C??ng B?c, Qu?n H?i Châu, Tp ?à N?ng','5/8/2023'),
	('HD03','5/8/2023','893603','BETACOLD - S','25,000','CK','NV03','Thanh Toán Thành Công','82A Bình Th?i, Ph??ng 11, Qu?n 11, TP HCM','7/8/2023');
insert into ChiNhanh
values
	('CN01','23 Lý Th??ng Ki?t, Ph??ng 10, Qu?n 10, TP HCM','NV01'),
	('CN02','23 Lý Th??ng Ki?t, Ph??ng 10, Qu?n 10, TP HCM','NV01'),
	('CN03','23 Lý Th??ng Ki?t, Ph??ng 10, Qu?n 10, TP HCM','NV01');
Insert into LichLamViec
values 
               ('246', 'NV01', '2023-07-20'),
               ('357', 'NV02', '2023-07-21');
Insert into SanPham
values
               ('S4LONP4S', 'Mi?ng dán gi?m ?au Salonpas', 'Mi?ng dán gi?m ?au c?p t?c', '16,000', '15,000','03.png', '02/03/2030', '001'),
('3NADOL', 'Thu?c gi?m ?au Panadol', 'Thu?c h? s?t, gi?m ?au ??u', '21,000', '20,000','04.png', '03/04/2030', '002'),
('893603', 'BECACOL - S', '?i?u tr? các tri?u ch?ng c?m thông th??ng, viêm m?i d? ?ng, viêm m?i v?n m?ch, ...', '26,000', '25,000',[Hình ?nh], '03/03/2030', '002');
Insert into PhuongThucThanhToan
values
	('TM', 'Ti?n m?t','01.png', N'Thanh toán tr?c ti?p t?i qu?y'),
	('CK', 'Chuy?n kho?n','02.png', N'Thanh toán tr?c tuy?n thông qua ?ng d?ng ngân hàng');
Insert into LoaiSP
Values
	('001', 'Mi?ng dán gi?m ?au'),
	('002', 'Thu?c h? s?t');




