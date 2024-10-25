drop database banda;
create database banda;
use banda;

create table delito(
Id_delito varchar(8) primary key ,
Fecha date,
Hora time,
Id_banda varchar(100),
Lugar varchar (200),
Descripcion varchar (1000)
);
create table jefe(
Id_jefe varchar(100) primary key,
Nombre_jefe varchar (100) null,
Edad int(100) null,
Antecedentes varchar (500) null
);
create table miembro(
Id_miembro varchar (50) primary key,
Apodo varchar(100),
Nombre varchar (100) null,
Apellido varchar (100) null,
Rango varchar (100) null,
Id_jefe varchar (100) null,
foreign key (Id_jefe) references jefe(Id_jefe)
);

create table responsables(
Id_delito varchar(8),
Id_miembro varchar (50),
Participaron int(100),
Heridos int(100),
Estado_proceso_legal set ('investigación', 'juicio', 'condenado'),
foreign key (Id_delito) references delito (Id_delito),
foreign key (Id_miembro) references miembro (Id_miembro),
primary key (id_delito, Id_miembro) 
);



create table perjuicio(
 



);