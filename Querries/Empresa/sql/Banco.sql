/* DESCRIÇÃO DAS TABELAS:
employee: Contém detalhes do funcionário, como ID, nome, data de nascimento, endereço, cidade, país e supervisor imediato.
customer: Armazena informações do cliente, incluindo ID do cliente, nome, empresa, e-mail, endereço, cidade e país.
purchase: Registra detalhes de pedidos, incluindo ID do pedido, ID do cliente (quem fez o pedido), funcionário 
		(quem atendeu o pedido), preço total e detalhes de compra e envio.
purchase_item: Conecta compras a produtos por meio de ID, produto, preço unitário e quantidade.
category: Fornece insights sobre categorias de produtos usando ID da categoria, nome, descrição e ID da categoria principal.
product: Lista os produtos da loja e inclui o ID do produto, o nome do produto, o ID da categoria, a quantidade por unidade, 
		o preço unitário, as unidades em estoque e o status do produto. */
        
-- PARTE 1 - CRIAÇÃO DA DATABASE E SUAS TABELAS
DROP DATABASE IF EXISTS empresa;
CREATE DATABASE empresa;
USE empresa;

-- Criação da tabela 'employee'
CREATE TABLE employee (
    employee_id INTEGER PRIMARY KEY,
    last_name VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    birth_date DATE,
    hire_date DATE,
    address VARCHAR(128),
    city VARCHAR(30),
    country VARCHAR(30),
    reports_to INTEGER,
    FOREIGN KEY (reports_to) REFERENCES employee(employee_id)
);

-- Criação da tabela 'customer'
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    contact_name VARCHAR(30) NOT NULL,
    company_name VARCHAR(40),
    contact_email VARCHAR(128) NOT NULL,
    address VARCHAR(120),
    city VARCHAR(30),
    country VARCHAR(30)
);

-- Criação da tabela 'purchase'
CREATE TABLE purchase (
    purchase_id INTEGER PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    total_price DECIMAL(10,2) NOT NULL,
    purchase_date TIMESTAMP NOT NULL,
    shipped_date TIMESTAMP,
    ship_address VARCHAR(60),
    ship_city VARCHAR(30),
    ship_country VARCHAR(15),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

-- Criação da tabela 'purchase_item'
CREATE TABLE purchase_item (
    purchase_id INT,
    product_id INT,
    unit_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (purchase_id, product_id),
    FOREIGN KEY (purchase_id) REFERENCES purchase(purchase_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Criação da tabela 'category'
CREATE TABLE category (
    category_id INTEGER PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    description TEXT,
    parent_category_id INTEGER,
    FOREIGN KEY (parent_category_id) REFERENCES category(category_id)
);

-- Criação da tabela 'product'
CREATE TABLE product (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(40) NOT NULL,
    category_id INT,
    quantity_per_unit VARCHAR(20),
    unit_price DECIMAL(10,2),
    units_in_stock INT,
    discontinued BOOLEAN NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);