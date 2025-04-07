-- 1. Listar o nome e o telefone dos clientes, ordenados alfabeticamente de forma decrescente pelo nome.
 select nome, telefone from cliente order by nome desc

-- 2. Listar a descrição, o valor e a quantidade em estoque dos produtos cujo valor seja superior a 15.
select descricao, valor, quantidade_estoque from produto where quantidade_estoque>15

-- 3. Listar todos os campos das vendas realizadas no dia 2 de abril de 2024. 
select * from venda where data>'2024-04-02'

-- 4. Listar o código, a descrição e o valor dos produtos que estão com o estoque zerado.
select codigo, descricao, valor from produto where quantidade_estoque=0

-- 5. Listar, em ordem alfabética crescente pela descrição, o código, a descrição e a quantidade em estoque dos produtos com valor igual ou inferior a 15.
select codigo, descricao, quantidade_estoque from produto where valor <=15