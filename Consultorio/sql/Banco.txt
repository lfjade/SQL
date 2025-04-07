create database consultorio;
use consultório

create table medicos(
CRM int primary key auto_increment,
nome varchar(45),
especialidade varchar(45),
telefone_residencial varchar(20),
telefone_celular varchar(20),

unique (CRM, especialidade)
);

create table pacientes(
matricula int primary key auto_increment,
nome varchar(100),
rg varchar(20),
cpf varchar(20),
genero varchar(20),
telefone_residencial varchar(20),
telefone_comercial varchar(20),
telefone_celular varchar(20),
convenio varchar(45)
);

create table consultas (
id_consultas int primary key auto_increment,
pacientes_matricula int,
data_hora DATETIME,
medicos_CRM int,
medicos_especialidade VARCHAR(45),

foreign key (pacientes_matricula) references pacientes (matricula),
foreign key (medicos_CRM, medicos_especialidade) references medicos (CRM, especialidade)
);