create database db_entertainer

create table tbl_artis
(
kd_artis varchar(100) primary key,
nm_artis varchar(100) not null,
kelamin varchar(100) not null,
bayaran BIGint not null,
award int not null,
negara varchar(100) not null)

insert into tbl_artis 
(kd_artis, nm_artis, kelamin,bayaran, award, negara) 
values
('A001','ROBERT DOWNEY JR','PRIA',3000000000,2,'AS'),
('A002','ANGELINA JOLIE','WANITA',700000000,1,'AS'),
('A003','JACKIE CHAN','PRIA',200000000,7,'HK'),
('A004','JOE TASLIM','PRIA',350000000,1,'ID'),
('A005','CHELSEA ISLAN','WANITA',30000000,0,'ID')

CREATE TABLE tbl_film(
kd_film varchar(10) primary key,
nm_film varchar(55) not null,
genre varchar(55) not null,
artis varchar(55) not null,
produser varchar(55) not null,
pendapatan BIGint not null,
nominasi int not null
)

insert into tbl_film (kd_film, nm_film, genre, artis, produser, pendapatan, nominasi)
values
('F001', 'IRON MAN','G001','A001','PD01',2000000000, 3),
('F002', 'IRON MAN 2','G001','A001','PD01',1800000000,2),
('F003', 'IRON MAN 3','G001','A001','PD01',1200000000,0),
('F004', 'AVENGER: CIVIL WAR','G001','A001','PD01',2000000000,1),
('F005', 'SPIDERMAN HOME COMING','G001','A001','PD01',1300000000,0),
('F006', 'THE RAID','G001','A004','PD03',800000000,5),
('F007', 'FAST & FURIOUS','G001','A004','PD05',830000000,2),
('F008', 'HABIBIE DAN AINUN','G004','A005','PD03',670000000,4),
('F009', 'POLICE STORY','G001','A003','PD02',700000000,3),
('F010', 'POLICE STORY 2','G001','A003','PD02',710000000,1),
('F011', 'POLICE STORY 3','G001','A003','PD02',615000000,0),
('F012', 'RUSH HOUR','G003','A003','PD05',695000000,2),
('F013', 'KUNGFU PANDA','G003','A003','PD05',923000000,5)

CREATE TABLE produser(
kd_produser varchar(50) primary key,
nm_produser varchar(50) not null,
international varchar(50) not null)

insert into produser (kd_produser, nm_produser, international)
values
('PD01','MARVEL','YA'),
('PD02','HONGKONG CINEMA','YA'),
('PD03','RAPI FILM','TIDAK'),
('PD04','PARKIT','TIDAK'),
('PD05','PARAMOUNT PICTURE','YA')

CREATE TABLE negara(
kd_negara varchar(100) primary key,
nm_negara varchar(100) not null
)

insert into negara(kd_negara,nm_negara) values
('AS','AMERIKA SERIKAT'),
('HK','HONGKONG'),
('ID','INDONESIA'),
('IN','INDIA')

CREATE TABLE genre(
kd_genre varchar(50) primary key,
nm_genre varchar(50) not null)

insert into genre (kd_genre,nm_genre) values
('G001','ACTION'),
('G002','HORROR'),
('G003','COMEDY'),
('G004','DRAMA'),
('G005','THRILLER'),
('G006','FICTION')

SELECT * FROM tbl_artis

SELECT * FROM tbl_film

SELECT * FROM produser

SELECT * FROM negara

SELECT * FROM genre

--no 1
