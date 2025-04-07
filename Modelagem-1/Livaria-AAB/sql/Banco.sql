create database livraria_aab;
use livraria_aab;


create table Clientes(
idClientes int primary key auto_increment,
nome varchar(100),
endereco varchar(100),
pf_pj enum('pf','pj'),
CPF_CNPJ varchar(25)


);

create table Editoras(
codigo_Editoras int primary key auto_increment,
endereco varchar(100),
telefone varchar(25),
gerente varchar(100)

);


create table Livros(
idLivros int primary key auto_increment,
codigo_Editoras int,
nome varchar(100),
assunto varchar(100),
ISBN varchar(100),
autor varchar(100),
qtd_estoque INT,

foreign key (codigo_Editoras) references Editoras (codigo_Editoras)

);


create table compras_Clientes(
idClientes int,
idLivros int,
data date,

foreign key (idClientes) references Clientes (idClientes),
foreign key (idLivros) references Livros (idLivros)
);