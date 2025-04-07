create database cds;
use cds;

create table CD (
idCD int primary key auto_increment,
titulo varchar(100)
);

create table musicas (
id_musicas int primary key auto_increment,
nome varchar(45),
duracao time,
CD_idCD int,

foreign key (CD_idCD) references CD (idCD)
);

create table compositores (
id_compositores int primary key auto_increment,
nome varchar(100),
cantores_idcantores int
);

create table cantores (
id_cantores int primary key auto_increment,
nome varchar(100),
compositores_idcompositores int,

foreign key (compositores_idcompositores) references compositores (id_compositores)
);

alter table compositores 
add constraint cantores_idcantores foreign key (cantores_idcantores) references cantores (id_cantores)

create table compositores_musicas (
compositores_idcompositores INT,
musicas_idmusicas INT,

foreign key (compositores_idcompositores) references compositores (id_compositores),
foreign key (musicas_idmusicas) references musicas (id_musicas)
);

create table cantores_musicas (
cantores_idcantores INT,
musicas_idmusicas INT,

foreign key (cantores_idcantores) references cantores (id_cantores),
foreign key (musicas_idmusicas) references musicas (id_musicas)
);