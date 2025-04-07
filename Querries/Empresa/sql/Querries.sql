-- 1. Exibir todos os dados presentes na tabela product:
select * from product

-- 2. Exibir os nomes dos produtos com um preço unitário maior ou igual a 24.99.
select procut_name from product where unit_price>=24.99

-- 3. Exibir dados de todos os produtos em categorias com ID 3 ou 8 e com preço unitário acima de 15.00.
select * from product where (category_id=8 || category_id=3) and unit_price>15.00

-- 4. Selecione os nomes dos produtos junto com suas categorias. Exiba duas colunas: product_name e category_name.
select product.procut_name, category.name from product join category on category.category_id=product.category_id

-- 5. Para cada compra, exiba o ID da compra, o nome do produto, o preço unitário no momento da compra e a quantidade de itens de cada produto.

select purchase.purchase_id, product.procut_name, purchase_item;unit_price, purchase_item.quantity from purchase join purchase_item on purchase.purchase_id=purchase_item.purchase_id join product on purchase_item.product_id=product.product_id

-- 6. Para cada compra, exiba todas as categorias de produtos comprados nessa compra. Mostre cada categoria apenas uma vez para cada compra.

select pur.purchase_id, cat.name from purchase as pur join purchase_item as pi on pur.purchase_id=pi.purchase_id join product as pro on pi.product_id = pro.product_id join category as cat on pro.category_id = cat.category_id

-- 7.  Exiba os dados de todas as categorias. Classifique as categorias por nome em ordem crescente (A a Z).
select * from category order by name

-- 8. Mostre os sobrenomes, os nomes e as datas de nascimento dos funcionários. Classifique os resultados por idade do funcionário em ordem crescente(Dica: use a colunabirth_date ).
select last_name, first_name, birth_date from employee order by birth_date asc

-- 9. Exibir dados de todos os produtos, classificando os resultados pelo número de unidades em ordem decrescente e pelo nome do produto em ordem crescente.
select * from product order by quantity_per_unit desc, procut_name asc

-- 10. Para cada categoria de produto, mostre seu nome e encontre o preço unitário médio. Exiba duas colunas: nome e average_unit_price.
select c.name, avg(p.unit_price) from product p join category c on p.category_id=c.category_id group by c.name

-- 11. Conte quantos clientes vivem em cada cidade, exceto em Knoxville e Stockton. Classifique os resultados pelo nome da cidade em ordem crescente. Exiba duas colunas: city e customers_quantity.
select customer.city, count(*) as customers_quantity from customer where city not in ('Knoxville', 'Stockton') group by city order by city asc

-- 12. Para cada categoria, encontre o número de produtos descontinuados. Mostre apenas as categorias com pelo menos três produtos descontinuados. Classifique as linhas pelo número de produtos descontinuados em ordem decrescente. Exiba duas colunas: name (o nome da categoria) e discontinued_products_number.
select category.name, count(product.discontinued) as discontinued_products_number from category join product on category.category_id=product.category_id group by category.name having count (product.discontinued)>3 order by category.name desc

-- 13. Exibir o sobrenome e o nome dos funcionários com data de contratação desconhecida.
select first_name, last_name from employee where hire_date=NULL

-- 14. Contar o número de funcionários com datas de nascimento e de contratação desconhecidas.
select count(*) from employee where birth_date=NULL and hire_date=NULL

-- 15.  Para cada cliente que fez uma compra, exiba o ID de cada compra feita por esse cliente e a porcentagem de dinheiro gasto nessa compra em relação a todo o dinheiro gasto por esse cliente.
select p.purchase_id, p.customer_id, p.total_price, round((p.total_price/c.total_spent)*100, 2) as percentage from purchase p join (select customer_id, sum(total_price) as total_spent from purchase group by customer_id) c on p.customer_id=c.customer_id order by p.customer_id, p.purchase_id