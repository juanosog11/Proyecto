--create database Empresa_Transporte

use Empresa_Transporte

create table tblUsuario(
usuario varchar(15) primary key not null,
contraseña varchar(15) not null
)

create table tblVehiculo(
Placa varchar(6) primary key not null,
Modelo varchar(30) not null,
Marca varchar(30) not null,
NroPasajeros int not null)

create table tblConductor(
CedulaC varchar(10) primary key not null,
TelefonoP varchar(10) not null,
NombreC varchar(30) not null)

create table tblConductorVehiculo(
CedulaC varchar(10) not null,
Placa varchar (6) not null,
foreign key (CedulaC) references tblConductor(CedulaC),
foreign key (Placa) references tblVehiculo(Placa))

create table tblEmpresa(
NitEmpresa varchar(30) primary key not null,
NombreE varchar(30) not null,
Responsable1 varchar(30) not null,
Responsable2 varchar(30),
Responsable3 varchar(30))

create table tblPasajero(
CedulaP varchar(10) primary key not null,
NombreP varchar(30) not null,
TelefonoP varchar(10) not null,
NitEmpresa varchar(30) not null,
foreign key (NitEmpresa) references tblEmpresa (NitEmpresa))

create table CentroCostos(
IdCC varchar(10) primary key not null,
NombreCC varchar(30) not null,
NitEmpresa varchar(30) not null
foreign key (NitEmpresa) references tblEmpresa (NitEmpresa))

create table tblServicio(
IdServicio int Identity(1,1) primary key,
FechaServicio date not null,
Origen varchar(30) not null,
Destino varchar(30) not null,
RecorridoAdicional1 varchar(30),
RecorridoAdicional2 varchar(30),
RecorridoAdicional3 varchar(30),
ValorServicio float not null,
FormaPago varchar(30) not null,
CedulaC varchar(10) not null,
NitEmpresa varchar(30) not null,
foreign key (NitEmpresa) references tblEmpresa (NitEmpresa),
foreign key (CedulaC) references tblConductor (CedulaC))

create table tblPasajeroServicio(
CedulaP varchar(10) not null,
IdServicio int not null,
foreign key (CedulaP) references tblPasajero (CedulaP),
foreign key (IdServicio) references tblServicio (IdServicio))

