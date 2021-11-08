/*
create database Final_Odev
Create table Bankalar(
Banka_Ad nvarchar(max) not null,
Banka_No int primary key not null,
Banka_Adres nvarchar(max) not null, 
)

Create table Subeler(
Sube_No int primary key not null,
Sube_Adres nvarchar(max) not null,
)
*/

/*
drop table Subeler
drop database Final_Odev
*/

/*
truncate table Hesaplar

truncate table Kredii 
*/

/*
alter table Subeler
add Sube_No nvarchar(max) primary key

alter table Subeler
Sube_No int primary key

alter table Musteriler
add constraint PK_Musteri_No primary key (Musteri_No)

alter table Hesaplar add constraint fk_Sube_Hesap_No
foreign key (Hesap_No) references Sube-Musteri-Hesap(Hesap_No)
*/

/*

select *from Musteriler

select Musteri_Ad from Musteriler

Select Banka_Ad, Banka_Adres from Bankalar

select *from Musteriler where=Musteri_No=9

select *from Musteriler where Musteri_Ad='Ahmet' AND Musteri_No=1

select *from Musteriler where Musteri_No in (3,7)

select distinct Musteri_No from Musteriler
*/

/*
insert into Bankalar (Banka_Ad, Banka_No,Banka_Adres)
values ('Alternatif Bank',10,10) 

insert into hesaplar (Hesap_No, Hesap_Bakiye) values (11,5500)
*/

/*
delete from Bankalar

delete from Bankalar where Banka_No=7

delete from Musteriler where Musteri_No>4 and Musteri_No<7
*/

/*
update Hesaplar set Hesap_Bakiye=100000 where Hesap_No=4

update Musteriler set Musteri_Ad='Ahmet' and Musteri_Adres='Sivas' where Musteri_No=1
*/

/*
select *from Hesaplar
where Hesap_Bakiye between 3000 and 500000

select *from Subeler
where Sube_No between 3 and 7
*/

/*
select Hesap_No, AVG(Hesap_Bakiye) 
from Hesaplar 
group by Hesap_No 
having max(Hesap_Bakiye)>7000;
*/

/*
select avg(Hesap_Bakiye) 'Ortalama Bakiye' from Hesaplar
select max(Hesap_Bakiye) 'En Yüksek Bakiye' from Hesaplar
select min(Hesap_Bakiye) 'En Düþük Kredi Miktarý' from Hesaplar
select sum(Hesap_Bakiye) 'Toplam Miktar' from Hesaplar
select count(Musteri_Ad) from Musteriler
*/

/*
select Musteriler.Musteri_Ad,Hesaplar.Hesap_Bakiye
from Musteriler
inner join Hesaplar on Musteriler.Musteri_No=Hesaplar.Hesap_No

select Musteriler.Musteri_Ad,Hesaplar.Hesap_Bakiye
from Musteriler
left join Hesaplar on Musteriler.Musteri_No=Hesaplar.Hesap_No

select Musteriler.Musteri_Ad,Hesaplar.Hesap_Bakiye
from Musteriler
right join Hesaplar on Musteriler.Musteri_No=Hesaplar.Hesap_No
*/

/*
select *from Musteriler where Musteri_Ad in(select Hesaplar.Hesap_No from Hesaplar where Hesap_Bakiye like 'a%')
*/

 /*
select FIRST(Musteri_Ad) from Musteriler

select top 1 Musteri_Ad from Musteriler 
order by Musteri_No ASC;

select last(Musteri_Ad)
from Musteriler

select top 1 Musteri_Ad from Musteriler
order by Musteri_No DESC
*/

/*
create trigger Triger_Listele on Musteriler
after insert
AS
Begin
select *from Musteriler
End

create trigger Triger_MusterilerSilinmesin on Musteriler
after delete
AS
Begin
raiserror('Müþteriler Tablosundan Kayýt Silinemez',1,1)
rollback transaction
End
*/

/*
create procedure MusterileriListele
as
select *from Musteriler
*/

/*
exec MusterileriListele
*/

/*
create Procedure HesaplarVeriEkle
as
insert into Hesaplar(Hesap_No,Hesap_Bakiye)
values(11,100)

exec HesaplarVeriEkle
*/

