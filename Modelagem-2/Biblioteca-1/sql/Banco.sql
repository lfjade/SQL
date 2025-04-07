create database biblioteca1;
use biblioteca1;

create table editora (
codigo_editora int primary key auto_increment,
nome varchar(45),
email varchar(45)

);

create table autor (
codigo_autor int primary key auto_increment,
nome varchar(45),
formacao varchar(45)

);


create table copia (
numeroDaCopia int primary key auto_increment,
data_de_aquisicao DATE

);


create table livro (
ISBN int primary key auto_increment,
titulo varchar(45),
numero_paginas int,
preco DECIMAL(8,2),
numeroDaCopia_id int,
editora_id int,
foreign key (numeroDaCopia_id) REFERENCES copia (numeroDaCopia),
foreign key (editora_id) references editora (codigo_editora)
);


create table livro_autor (
livro_ISBN int,
autor_codigo_autor int,

foreign key (livro_ISBN) references livro (ISBN),
foreign key (autor_codigo_autor) references autor (codigo_autor)

);