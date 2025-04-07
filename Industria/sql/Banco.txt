create database industria;
use industria;

create table funcionario (
idfuncionario int primary key auto_increment,
departamento_iddepartamento int,
dependente int

);

create table diretoria (
iddiretoria int primary key auto_increment,
funcionario_idfuncionario int,
foreign key (funcionario_idfuncionario) references funcionario (idfuncionario)

);

create table departamento (
iddepartamento int primary key auto_increment,
nome varchar(45),
diretoria_iddiretoria int,

foreign key (diretoria_iddiretoria) references diretoria (iddiretoria)

);

alter table funcionario add constraint dependente foreign key (dependente) references funcionario (idfuncionario)

alter table funcionario add constraint departamento_iddepartamento foreign key (departamento_iddepartamento) references departamento (iddepartamento)