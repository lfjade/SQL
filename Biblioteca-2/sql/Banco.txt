create database biblioteca2;
use biblioteca2;

create table palavras_chave (
id_palavras_chave int PRIMARY KEY auto_increment,
nome varchar(45)

);

create table livros (
ISBN int PRIMARY KEY auto_increment,
titulo varchar(100)

);


create table associados (
codigo int PRIMARY KEY auto_increment,
nome varchar(100),
endereco varchar(100)
);

create table editoras (
id_editoras int PRIMARY KEY auto_increment,
nome varchar(100)
);

create table palavras_chave_livros (
id_palavras_chave int,
ISBN_livros int,
foreign key (id_palavras_chave) references palavras_chave (id_palavras_chave),
foreign key (ISBN_livros) references livros (ISBN)
);

create table autores (
id_autores int primary key auto_increment,
nome varchar(100)
);

create table autores_livros (
autores_idautores int,
livros_idlivros int,
foreign key (autores_idautores) references autores (id_autores),
foreign key (livros_idlivros) references livros (ISBN)
);

create table exemplares (
id_exemplares int primary key auto_increment,
livros_idlivros int,
numero int,
foreign key (livros_idlivros) references livros (ISBN)
);

create table editoras_exemplares (
editoras_ideditoras int,
exemplares_idexemplares INT,
livros_idlivros int,
foreign key (editoras_ideditoras) references editoras (id_editoras),
foreign key (exemplares_idexemplares) references exemplares (id_exemplares),
foreign key (livros_idlivros) references livros (ISBN)
);

create table emprestimos (
associados_codigo INT,
exemplares_idexemplares INT,
data_emprestimo DATE,

foreign key (associados_codigo) references associados (codigo),
foreign key (exemplares_idexemplares) references exemplares (id_exemplares)

);