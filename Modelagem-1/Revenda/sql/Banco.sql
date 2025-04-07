create database revenda;
use revenda;

create table Clientes (
idClientes int primary key auto_increment,
nome varchar(100)

);

create table Usuarios (
idUsuarios int primary key auto_increment,
nome varchar(100)

);

create table Carros (
idCarros int primary key auto_increment,
nome varchar(100),
idUsuarios int,

foreign key (idUsuarios) references Usuarios (idUsuarios)
);

create table Propostas (
idCarros int,
idClientes int,
valor decimal (10,2),

foreign key (idCarros) references Carros (idCarros),
foreign key (idClientes) references Clientes (idClientes)
);