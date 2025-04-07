create database academia;

use academia;

create table Instrutores(
idInstrutores int primary key auto_increment,
rg varchar(15),
nome varchar(100),
data_nasc date,
titulacao varchar(100)

);

create table Alunos(
idAlunos int primary key auto_increment,
nome varchar(100),
codigo_matricula VARCHAR(10),
data_matricula date,
endereco varchar(100),
data_nasc date,
altura decimal(5,2),
peso decimal (6,2)

);


create table presenca(
idAlunos int,
dia date,
presenca enum('s','n'),
foreign key (idAlunos) references Alunos (idAlunos)
);

create table Telefones(
idInstrutores int,
telefone varchar(25),
foreign key (idInstrutores) references Instrutores (idInstrutores)
);

create table Atividades(
idAtividades int primary key auto_increment,
nome varchar(100)
);


create table Turmas(
idTurmas int primary key auto_increment,
numero_alunos int,
horario time,
duracao time,
data_0 date,
data_f date,
monitor int,
idAtividades int,

foreign key (monitor) references Alunos (idAlunos),
foreign key (idAtividades) references Atividades (idAtividades)


);


create table Turmas_Alunos(
idTurmas int,
idAlunos int,
foreign key (idTurmas) references Turmas (idTurmas),
foreign key (idAlunos) references Alunos (idAlunos)
);


create table Instrutores_Turmas(
idInstrutores int,
idAlunos int,
foreign key (idInstrutores) references Instrutores (idInstrutores),
foreign key (idAlunos) references Alunos (idAlunos)
);