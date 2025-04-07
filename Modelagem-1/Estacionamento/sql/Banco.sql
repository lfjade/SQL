create database estacionamento;
use estacionamento;

create table veiculos (
id_veiculos int primary key auto_increment,
tipo enum('Carro','Moto','Caminhão'),
placa varchar(10)
);

create table clientes (
id_clientes int primary key auto_increment,
nome varchar(100)
);

create table locacao (
clientes_id_clientes int,
veiculos_id_veiculo int,
tempo_horas int,
foreign key (clientes_id_clientes) references clientes (id_clientes),
foreign key (veiculos_id_veiculo) references veiculos (id_veiculos)
);