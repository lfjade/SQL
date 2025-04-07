create database escola;
use escola;

create table salas (
idsalas int auto_increment primary key,
nome varchar(100)
);

create table turmas (
idturmas int auto_increment primary key,
nome varchar(100)
);

create table professores (
idprofessores int auto_increment primary key,
nome varchar(100)
);


create table turmas_professores (
idturmas int,
idprofessores int,
foreign key (idturmas) references turmas (idturmas),
foreign key (idprofessores) references professores (idprofessores)
);

create table turmas_salas (
idsalas int,
idturmas int,
horario datetime,
foreign key (idsalas) references salas (idsalas),
foreign key (idturmas) references turmas (idturmas)
);