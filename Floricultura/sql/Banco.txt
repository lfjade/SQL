create database floricultura;
use floricultura;

create table clientes (
idclientes int primary key auto_increment,
rg varchar(15),
nome varchar(100),
telefone varchar(20),
endereco varchar(100)
);

create table produtos (
idprodutos int primary key auto_increment,
nome varchar(100),
preco decimal(8,2),
quantidade_estoque int
);

create table vendas (
idvendas int primary key auto_increment,
data_venda date,
valor_total decimal(10,2),
clientes_idclientes int,
foreign key (clientes_idclientes) references clientes (idclientes)
);

create table vendas_produtos (
produtos_idprodutos int,
vendas_idvendas int,
foreign key (produtos_idprodutos) references produtos (idprodutos),
foreign key (vendas_idvendas) references vendas (idvendas)
);