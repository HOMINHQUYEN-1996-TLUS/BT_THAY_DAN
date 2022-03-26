create database QLPK

use QLPK

go
create table manager_login(
	username char(100) not null primary key,
	password char(100)
)

go
create table customer_login(
	sdt char(10) not null primary key
)

insert into manager_login(username,password) values ('admin','1')
insert into customer_login(sdt) values ('0938872403')
insert into customer_login(sdt) values ('0923467749')
insert into customer_login(sdt) values ('0923468888')
insert into customer_login(sdt) values ('0943467777')

select * from manager_login
select * from customer_login

select username,password from manager_login

select sdt from customer_login

CREATE TABLE Bacsi(
	ID_bacsi char(20) NOT NULL PRIMARY KEY,
	HoTen nvarchar(100),
	Birthday char(30),
	GioiTinh char(10),
	DiaChi NVARCHAR (100)
)

CREATE TABLE khachhang(
	ID_khachhang char(20) NOT NULL PRIMARY KEY,
	HoTen nvarchar(100),
	Birthday char(30),
	GioiTinh char(10),
	DiaChi NVARCHAR (100)
)

GO

CREATE TABLE PhongBan (
	ID_PhongBan char(20) NOT NULL PRIMARY KEY,
	TenPhong NVARCHAR(100),
	ID_bacsi char(20) FOREIGN KEY (ID_bacsi) REFERENCES Bacsi(ID_bacsi),
	ID_khachhang char(20) FOREIGN KEY (ID_khachhang) REFERENCES khachhang(ID_khachhang)
)

GO 

CREATE table HoaDon(
	ID_HoaDon char(20) NOT NULL PRIMARY KEY,
	ID_bacsi char(20) FOREIGN KEY (ID_bacsi) REFERENCES Bacsi(ID_bacsi),
	ID_PhongBan char(20) FOREIGN KEY (ID_PhongBan) REFERENCES PhongBan(ID_PhongBan),
	NgayThang char(100),
	TongTien char(20)
)

GO

CREATE TABLE DichVu(
	ID_DichVu char(20) NOT NULL PRIMARY KEY,
	TenDichVu NVARCHAR(200),
	GiaDichVu char(20)
)

ALTER TABLE PhongBan
  ADD ID_DichVu char(20) FOREIGN KEY (ID_DichVu) REFERENCES DichVu(ID_DichVu);

insert INTO Bacsi (ID_bacsi,HoTen,Birthday,GioiTinh,DiaChi)
VALUES ('BS001','Nguyen Van A','10/09/1975','Nam','Ha Noi'),
	('BS002','Nguyen Van B','10/09/1982','Nam','Can Tho'),
	('BS003','Nguyen Thi C','10/09/1979','Nu','HCM')

insert into khachhang (ID_khachhang,HoTen,Birthday,GioiTinh,DiaChi) VALUES
('KH001','Tran A','10/09/1992','Nam','Ha Noi'),
('KH002','Tran B','10/09/1999','Nam','Phu Yen'),
('KH003','Tran Thi C','10/09/2001','Nu','Binh Dinh')

insert into PhongBan (ID_PhongBan,TenPhong,ID_bacsi,ID_khachhang) VALUES
('PB001','Kham Rang 1','BS001','KH001'),
('PB002','Kham Rang 2','BS001','KH002'),
('PB003','Kham Rang 3','BS002','KH001'),
('PB004','Kham Rang 4','BS001','KH001'),
('PB005','Kham Rang 5','BS001','KH003')

insert into HoaDon (ID_HoaDon,ID_bacsi,ID_PhongBan,NgayThang,TongTien) VALUES
('HD001','BS001','PB001','26/03/2022','500000'),
('HD002','BS001','PB002','22/03/2022','450000'),
('HD003','BS002','PB003','19/01/2021','890000'),
('HD004','BS001','PB004','07/03/2021','600000'),
('HD005','BS001','PB005','19/08/2019','500000')

insert into DichVu (ID_DichVu,TenDichVu,GiaDichVu) VALUES
('DV001','Nhổ Răng Khôn','250000'),
('DV002','Trám Răng','300000'),
('DV003','Tẩy Răng','400000'),
('DV004','Lấy Cao Răng','150000')