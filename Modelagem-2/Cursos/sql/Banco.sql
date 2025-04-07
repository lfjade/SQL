create database cursos;
use cursos;

create table instrutor (
idinstrutor int primary key auto_increment,
nome varchar(100),
telefone varchar(20)
);

create table cursos (
codigo int primary key auto_increment,
nome varchar(100),
preco decimal(8,2),
duracao int,
instrutor_idinstrutor int,

foreign key (instrutor_idinstrutor) references instrutor (idinstrutor)
);

create table estudantes (
idestudantes int primary key auto_increment,
nome varchar(100),
endereco varchar(100),
telefone varchar(20)
);

create table estudantes_cursos (
estudantes_idestudantes int,
cursos_codigo int,
foreign key (estudantes_idestudantes) references estudantes (idestudantes),
foreign key (cursos_codigo) references cursos (codigo)
);