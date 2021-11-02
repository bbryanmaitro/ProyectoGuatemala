create database DbCodingChallenge;
use DbCodingChallenge;
create table RolUsuario
(
  IdRol int primary key auto_increment,
  NombreRol varchar(50)
);
create table usuario
(
  idUsuario int primary key auto_increment,
  NameUser varchar(50),
  LastName varchar(50),
  age int,
  PhoneNumber varchar(50),
  Password varchar(50),
  IdRolUsuario int,
  Activo bit,
  FOREIGN KEY (IdRolUsuario) REFERENCES RolUsuario(IdRol)
);
create table meetings
(
   idmeetings int primary key auto_increment,
   idUsuarioMeetings int,
   HoursMeeting DATETIME,
   Activo bit,
   MediAmPm bit,
   FOREIGN KEY (idUsuarioMeetings) REFERENCES usuario(idUsuario)
);

insert into RolUsuario(IdRol,NombreRol)values(1,'Usuarios');
insert into RolUsuario(IdRol,NombreRol)values(2,'Adminitrador');

insert into usuario(idUsuario,NameUser,LastName,age,PhoneNumber,Password,IdRolUsuario,Activo)values(1,'Kyle','Perez',21,'502782963',MD5('123456'),1,1);
insert into usuario(idUsuario,NameUser,LastName,age,PhoneNumber,Password,IdRolUsuario,Activo)values(2,'Paul','Paul',22,'502762563',MD5('7891012'),1,1);
insert into usuario(idUsuario,NameUser,LastName,age,PhoneNumber,Password,IdRolUsuario,Activo)values(3,'Alex','Alex',23,'502762563',MD5('23456789'),1,1);
insert into usuario(idUsuario,NameUser,LastName,age,PhoneNumber,Password,IdRolUsuario,Activo)values(4,'Walter','Walter',26,'50276234',MD5('23456789'),1,1);
insert into usuario(idUsuario,NameUser,LastName,age,PhoneNumber,Password,IdRolUsuario,Activo)values(5,'Francisco','Franciscor',23,'50276234',MD5('23456789'),1,1);
insert into usuario(idUsuario,NameUser,LastName,age,PhoneNumber,Password,IdRolUsuario,Activo)values(6,'Sonya','Sonya',21,'50276234',MD5('23456789'),1,1);

-- Kyle meetings
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(1,1,'2021-10-31 01:30:00',1,0);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(2,1,'2021-10-31 02:30:00',1,0);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(3,1,'2021-10-31 06:00:00',1,0);

-- paul meetings
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(4,2,'2021-10-31 07:00:00',1,1);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(5,2,'2021-10-31 09:00:00',1,1);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(6,2,'2021-10-31 01:30:00',1,0);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(7,2,'2021-10-31 03:00:00',1,0);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(8,2,'2021-10-31 03:30:00',1,0);
-- alex meetings
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(9,3,'2021-10-31 08:00:00',1,1);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(10,3,'2021-10-31 09:30:00',1,1);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(11,3,'2021-10-31 12:30:00',1,0);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(12,3,'2021-10-31 03:00:00',1,0);
-- walter meetings
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(13,4,'2021-10-31 09:00:00',1,1);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(14,4,'2021-10-31 01:30:00',1,0);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(15,4,'2021-10-31 03:00:00',1,0);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(16,4,'2021-10-31 03:30:00',1,0);
-- francisco
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(17,5,'2021-10-31 08:00:00',1,1);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(18,5,'2021-10-31 09:00:00',1,1);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(19,5,'2021-10-31 06:00:00',1,0);
-- sonya
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(20,6,'2021-10-31 08:00:00',1,1);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(21,6,'2021-10-31 12:30:00',1,0);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(22,6,'2021-10-31 01:30:00',1,0);
insert into meetings(idmeetings,idUsuarioMeetings,HoursMeeting,Activo,MediAmPm)values(23,6,'2021-10-31 03:30:00',1,0);

select * from RolUsuario;
select * from usuario;
select * from meetings where idUsuarioMeetings = 1 ;
select * from meetings where idUsuarioMeetings = 2 ;
select * from meetings where idUsuarioMeetings = 3 ;
select * from meetings where idUsuarioMeetings = 4 ;
select * from meetings where idUsuarioMeetings = 5 ;
select * from meetings where idUsuarioMeetings = 6 ;
