create database hospital;
use hospital;

create table enfermeiras (
CRE int auto_increment primary key,
nome varchar(100),
Enfermeira chefe int
);

alter table Enfermeiras add foreign key (Enfermeira_chefe) references Enfermeiras (CRE);

create table Alas (
idAlas int auto_increment primary key,
nome varchar(100),
Enfermeiras_CRE int,
foreign key (Enfermeiras_CRE) references Enfermeiras (CRE)
);


create table Medicos (
CRM int auto_increment primary key,
nome varchar(100),
especialidade varchar(100)
);

create table Plano_Saude (
nome ENUM('UniBad', 'TroncoDoIpê', 'Carbongs') primary key,
telefone varchar(20)
);

create table Plano_Saude_Medicos (
Plano_Saude_nome ENUM('UniBad', 'TroncoDoIpê', 'Carbongs'),
Medicos_CRM int,

foreign key (Plano_Saude_nome) references Plano_Saude (nome),
foreign key (Medicos_CRM) references Medicos (CRM)
);

create table Pacientes (
idPacientes int auto_increment primary key,
nome varchar(100)
);


create table Atendimento (
idAtendimento int auto_increment primary key,
data_hora datetime,
idPacientes int,
idAlas int,

foreign key (idPacientes) references Pacientes (idPacientes),
foreign key (idAlas) references Alas (idAlas)
);


create table Atendimento_Medicos (
idPacientes int,
Medicos_CRM int,
foreign key (idPacientes) references Pacientes (idPacientes),
foreign key (Medicos_CRM) references Medicos (CRM)

);