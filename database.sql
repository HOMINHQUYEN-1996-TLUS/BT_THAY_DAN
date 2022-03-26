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

