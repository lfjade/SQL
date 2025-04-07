create database produtos_limpeza;
use produtos limpeza;

create table Categorias (
idCategorias int primary key auto_increment,
nome varchar(100)
);

create table Clientes (
idClientes int primary key auto_increment,
nome varchar(100),
endereco varchar(100),
limite_credito decimal (10,2)
);

create table Pedidos (
idPedidos int primary key auto_increment,
nome varchar(100),
idClientes int,

foreign key (idClientes) references Clientes (idClientes)

);

create table Produtos (
idProdutos int primary key auto_increment,
nome varchar(100),
preco decimal (8,2)

);

create table Produtos_Categorias (
idProdutos int,
idCategorias int,

foreign key (idProdutos) references Produtos (idProdutos),
foreign key (idCategorias) references Categorias (idCategorias)

);


create table Produtos_Pedidos (
idProdutos int,
idPedidos int,
quantidade int,

foreign key (idProdutos) references Produtos (idProdutos),
foreign key (idPedidos) references Pedidos (idPedidos)

);