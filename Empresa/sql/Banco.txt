create database empresa;
use empresa;

create table empregados (
idempregados int primary key auto_increment,
nome varchar(100),
cpf varchar(20),
endereco varchar(100),
salario varchar(45),
supervisor int
);


alter table empregados add constraint supervisor foreign key (supervisor) references empregados(idempregados);

create table departamentos (
iddepartamento int primary key auto_increment,
nome varchar(100),
gerente int,
data_gerente DATETIME,

foreign key (gerente) references empregados (idempregados)

);

create table projetos (
iddprojetos int primary key auto_increment,
nome varchar(100),
local varchar(100),
departamentos_iddepartamento int,

foreign key (departamentos_iddepartamento) references departamentos (iddepartamento)

);


create table empregados_projetos (
empregados_idempregados int,
projetos_idprojetos int,
horas_trabalhadas int,

foreign key (empregados_idempregados) references empregados (idempregados),
foreign key (projetos_idprojetos) references projetos (iddprojetos)

);