create database escola_idiomas;
use escola idiomas;

create table professores (
idprofessores int primary key auto_increment,
nome varchar(100),
salario decimal(10,2),
data_nascimento date,
titulacao varchar(20)

);

create table turmas (
idturmas int primary key auto_increment,
idioma varchar(15),
professores_idprofessores int,
foreign key (professores_idprofessores) references professores (idprofessores)

);


create table alunos (
matricula int primary key auto_increment,
nome varchar(100),
nota1 varchar(5),
nota2 varchar(5),
nota3 varchar(5),
rua varchar(100),
numero varchar(7),
bairro varchar(20),
turmas_idturmas int,
foreign key (turmas_idturmas) references turmas (idturmas)
);