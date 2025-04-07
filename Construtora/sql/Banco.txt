create database construtora;
use construtora;

create table projetos (
idprojetos int primary key auto_increment,
departamentos_iddepartamentos int
);

create table projetos (
idprojetos int primary key auto_increment,
departamentos_iddepartamentos int
);

create table departamentos (
iddepartamentos int primary key auto_increment,
chefe int
);

create table empregados (
idempregados int primary key auto_increment,
nome varchar(100),
departamentos_iddepartamentos int
);

create table projetos_empregados (
projetos_idprojetos int,
empregados_idempregados int,

foreign key (projetos_idprojetos) references projetos (idprojetos),
foreign key (empregados_idempregados) references empregados (idempregados)
);


alter table projetos

add constraint departamentos_iddepartamentos foreign key (departamentos_iddepartamentos) references departamentos (iddepartamentos);

alter table departamentos

add constraint chefe foreign key (chefe) references empregados (idempregados);

alter table empregados

add constraint departamentos_iddepartamentos2 foreign key (departamentos_iddepartamentos) references departamentos (iddepartamentos);