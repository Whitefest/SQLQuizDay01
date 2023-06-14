create database db_penerbit

create table tbl_pengarang(
ID BIGINT primary key identity (1,1) not null,
kd_pengarang varchar (7) not null,
nama varchar (30) not null,
alamat varchar (80) not null,
kota varchar (15) not null,
kelamin varchar (1) not null)

insert into tbl_pengarang(kd_pengarang, nama, alamat, kota, kelamin)
values
('P0001', 'Ashadi', 'Jl. Beo 25', 'Yogya', 'P'),
('P0002', 'Rian', 'Jl. Solo 123', 'Yogya', 'P'),
('P0003', 'Suwadi', 'Jl. Semangka 13', 'Bandung', 'P'),
('P0004', 'Siti', 'Jl. Durian 15', 'Solo', 'W'),
('P0005', 'Amir', 'Jl. Gajah 33', 'Kudus', 'P'),
('P0006', 'Suparman', 'Jl. Harimau 25', 'Jakarta', 'P'),
('P0007', 'Jaja', 'Jl. Singa 7', 'Bandung', 'P'),
('P0008', 'Saman', 'Jl. Naga 12', 'Yogya', 'P'),
('P0009', 'Anwar', 'Jl. Tidar 6A', 'Magelang', 'P'),
('P0010', 'Fatmawati', 'Jl. Renjana 4', 'Bogor', 'W')

create table tbl_gaji(
ID bigint Primary key identity (1,1) not null,
kd_pengarang varchar (7) not null,
nama varchar (30) not null,
gaji decimal (18,4) not null)

insert into tbl_gaji(kd_pengarang, nama, gaji) values
('P0002', 'Rian', 600000),
('P0005', 'Amir', 700000),
('P0004', 'Siti', 500000),
('P0003', 'Suwadi', 1000000),
('P0010', 'Fatmawati', 600000),
('P0008', 'Saman', 750000)




--no 1
select * from tbl_pengarang

--no 2
select count(kelamin) as jumlah, kelamin 
from tbl_pengarang 
group by kelamin 

--no 3
select kota from tbl_pengarang
select count(distinct kota) as jumlah_kota from tbl_pengarang  

--no 4
select kota from tbl_pengarang where id = 1

--no 5
select min(kd_pengarang) as kecil, 
max(kd_pengarang) as gede from tbl_pengarang 

--no 6
select min(gaji) as kecil, max(gaji) as gede from tbl_gaji

--no 7
select gaji from tbl_gaji
where gaji > 600000

--no 8
select sum(gaji) from tbl_gaji

--no 9
select tbl_pengarang.kota, sum(Gaji) [Total Gaji]
from tbl_gaji 
join tbl_pengarang on tbl_gaji.Kd_Pengarang = tbl_pengarang.Kd_Pengarang 
group by tbl_pengarang.Kota

--no 10
select * from tbl_pengarang where kd_pengarang between 'P0003' and 'P0006'

--no 11
select * from tbl_pengarang where kota = 'Yogya' or kota = 'Solo' or kota = 'Magelang'

--no 12
select * from tbl_pengarang where not kota = 'Yogya'

--no 13a
select * from tbl_pengarang where nama like 'i%'

--no 13b
select * from tbl_pengarang where nama like '%A%'

--no 13c
select * from tbl_pengarang where nama like '__a%'

--no 13d
select * from tbl_pengarang where nama not like 'n%'

--no 14
select * from tbl_pengarang as pengarang 
join tbl_gaji as gaji on gaji.kd_pengarang = pengarang.kd_pengarang

--no 15
select kota from tbl_pengarang as pengarang
join tbl_gaji as gaji on pengarang.kd_pengarang = gaji.kd_pengarang
where gaji.gaji < 1000000

--no 16
alter table tbl_pengarang alter column kelamin varchar(10) not null

--no 17
alter table tbl_pengarang add title varchar(12)

-- no 18
update tbl_pengarang set alamat = 'Jl. Cendrawasih 65', kota = 'Pekanbaru'
where nama = 'Rian'

--no 19
go create view vw_pengarang as select pengarang.kd_pengarang, pengarang.nama, pengarang.kota, gaji.gaji
from tbl_pengarang as pengarang
join tbl_gaji as gaji on pengarang.kd_pengarang =gaji.kd_pengarang 