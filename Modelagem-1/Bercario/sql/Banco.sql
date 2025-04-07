create database bercario;
use bercario;

create table maes (
idmaes int auto_increment primary key,
nome varchar(100),
endereco varchar(100),
telefone varchar(20),
data_nasc DATE
);

create table medicos (
idmedicos int auto_increment primary key,
CRM varchar(12),
celular varchar(20),
especialidade varchar(45)
);

create table bebes (
idmaes INT,
idmedicos int,
data_nasc DATE,
peso DECIMAL(4,2),
altura DECIMAL(5,2),
FOREIGN KEY (idmaes) references maes (idmaes),
foreign key (idmedicos) references medicos (idmedicos)
);