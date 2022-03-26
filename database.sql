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