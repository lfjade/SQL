-- Excluir o banco de dados (caso exista)
DROP DATABASE IF EXISTS unisenac02;

-- Criar o banco de dados
CREATE DATABASE unisenac02;

-- Usar o banco de dados
USE unisenac02;

-- Tabela Cliente
CREATE TABLE cliente (
  cpf VARCHAR(11) PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  telefone VARCHAR(15) NOT NULL
);

-- Tabela Produto
CREATE TABLE produto (
  codigo INT PRIMARY KEY,
  descricao VARCHAR(255) NOT NULL,
  valor DECIMAL(10, 2) NOT NULL,
  quantidade_estoque INT NOT NULL
);

-- Tabela venda
CREATE TABLE venda (
  numero_nf INT PRIMARY KEY AUTO_INCREMENT,
  data DATE NOT NULL,
  hora TIME NOT NULL,
  cliente_cpf VARCHAR(11),
  tipo_pagamento VARCHAR(50) NOT NULL,
  FOREIGN KEY (cliente_cpf) REFERENCES cliente(cpf)
);

-- Tabela Itens_venda
CREATE TABLE itens_venda (
  numero_nf INT,
  codigo_produto INT,
  quantidade INT NOT NULL,
  valor_venda DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (numero_nf, codigo_produto),
  FOREIGN KEY (numero_nf) REFERENCES venda(numero_nf),
  FOREIGN KEY (codigo_produto) REFERENCES produto(codigo)
);
