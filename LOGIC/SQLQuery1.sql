
--SQL 01--
--DDL--


CREATE DATABASE db_kampus;


CREATE TABLE mahasiswa 
(
id BIGINT PRIMARY KEY IDENTITY(1,1),
name VARCHAR (50) NOT NULL,
address VARCHAR (50) NOT NULL,
email VARCHAR (255) NULL
) 

go CREATE VIEW vw_mahasiswa as 
select * from mahasiswa go
--nambahin isi table
ALTER table mahasiswa add no_hp varchar(100) not null
--ngapus isi table
alter table mahasiswa drop column no_hp
--edit isi table
alter table mahasiswa alter column email varchar(100) not null

--DML--
insert into mahasiswa(name, address, email) values 
('banu','ciamis','banu@gmail.com'),
('nabu','cibitung','nabu@gmail.com'),
('abun','cikarang','abun@gmail.com'),
('nuba','cianjur','nuba@gmail.com')

select id,name,address,email from mahasiswa

update mahasiswa set name = 'uban' where id = 1

delete from mahasiswa where id = 1

create table biodata
(
id BIGINT primary key identity,
mahasiswa_id BIGINT,
tgl_lhr datetime not null,
gender varchar (10) not null
)

insert into biodata(mahasiswa_id,tgl_lhr,gender) values 
--('1','2020-08-19','gender'),
(2,'2018-08-12','gender'),
(3,'2009-01-09','gender')

select * from mahasiswa

update biodata set gender = 'cowok' where mahasiswa_id = 2
update biodata set gender = 'cewek'


select * from biodata

alter table biodata alter column tgl_lhr date

select * from biodata

update biodata set mahasiswa_id = 1

select * from biodata

--join
select mhs.id as id_mahasiswa, mhs.name as nama_mahasiswa, mhs.address as alamat, mhs.email as email, bio.tgl_lhr as tgl_lahir, bio.gender as gender
from mahasiswa as mhs
join biodata as bio on mhs.id = bio.mahasiswa_id
where mhs.id = 1

--order by(asc desc)
select * from biodata order by tgl_lhr desc

--between
select * from biodata where tgl_lhr between '2015-01-01' and '2021-01-01'


--like
select  * from mahasiswa 
where
--name like 'a%'
--name like '%a'
--name like '%a%'
--name like '_a%'
--name like 'a__%'
name like 'a%u'

--group by
select name from mahasiswa group by name

--having
select name, sum(id) as jumlah from mahasiswa group by name
having sum(id) > 5