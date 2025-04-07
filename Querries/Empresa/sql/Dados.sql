INSERT INTO employee (employee_id, last_name, first_name, birth_date, hire_date, address, city, country, reports_to) VALUES
(1, 'Smith', 'John', '1980-01-01', '2010-06-01', '123 Main St', 'New York', 'USA', NULL),
(2, 'Doe', 'Jane', '1985-02-02', '2012-07-15', '456 Elm St', 'Los Angeles', 'USA', 1),
(3, 'Brown', 'James', '1978-03-03', '2009-09-09', '789 Oak St', 'Chicago', 'USA', 1),
(4, 'Johnson', 'Emily', '1990-04-04', '2015-04-01', '101 Maple St', 'Houston', 'USA', 2),
(5, 'Williams', 'Michael', '1983-05-05', '2011-11-11', '202 Pine St', 'Phoenix', 'USA', 3),
(6, 'Jones', 'Sarah', '1992-06-06', '2017-03-03', '303 Cedar St', 'Philadelphia', 'USA', 2),
(7, 'Miller', 'David', '1975-07-07', '2008-02-02', '404 Birch St', 'San Antonio', 'USA', 4),
(8, 'Wilson', 'Jessica', '1988-08-08', '2013-12-12', '505 Spruce St', 'San Diego', 'USA', 5),
(9, 'Moore', 'Daniel', '1977-09-09', '2007-05-05', '606 Fir St', 'Dallas', 'USA', 4),
(10, 'Taylor', 'Laura', '1989-10-10', '2016-01-01', '707 Ash St', 'San Jose', 'USA', 6);

-- Inserindo registros na tabela 'customer'
INSERT INTO customer (customer_id, contact_name, company_name, contact_email, address, city, country) VALUES
(1, 'Alice Johnson', 'Tech Solutions', 'alice.johnson@techsolutions.com', '100 Tech St', 'New York', 'USA'),
(2, 'Bob Smith', 'Innovative Goods', 'bob.smith@innovativegoods.com', '200 Market St', 'Los Angeles', 'USA'),
(3, 'Charlie Brown', 'Best Services', 'charlie.brown@bestservices.com', '300 Service Rd', 'Chicago', 'USA'),
(4, 'Diana Prince', 'Heroic Supplies', 'diana.prince@heroicsupplies.com', '400 Hero St', 'Houston', 'USA'),
(5, 'Edward White', 'White Goods', 'edward.white@whitegoods.com', '500 White St', 'Phoenix', 'USA'),
(6, 'Fiona Black', 'Black Enterprises', 'fiona.black@blackenterprises.com', '600 Enterprise Rd', 'Philadelphia', 'USA'),
(7, 'George Green', 'Green Tech', 'george.green@greentech.com', '700 Green St', 'San Antonio', 'USA'),
(8, 'Hannah Blue', 'Blue Waves', 'hannah.blue@bluewaves.com', '800 Ocean Rd', 'San Diego', 'USA'),
(9, 'Ian Red', 'Red Apples', 'ian.red@redapples.com', '900 Apple St', 'Dallas', 'USA'),
(10, 'Julia Silver', 'Silver Services', 'julia.silver@silverservices.com', '1000 Silver Rd', 'San Jose', 'USA');

-- Inserindo registros na tabela 'purchase'
INSERT INTO purchase (purchase_id, customer_id, employee_id, total_price, purchase_date, shipped_date, ship_address, ship_city, ship_country) VALUES
(1, 1, 1, 250.00, '2023-01-01 10:00:00', '2023-01-02 10:00:00', '100 Tech St', 'New York', 'USA'),
(2, 2, 2, 500.00, '2023-02-01 11:00:00', '2023-02-03 11:00:00', '200 Market St', 'Los Angeles', 'USA'),
(3, 3, 3, 150.00, '2023-03-01 12:00:00', '2023-03-04 12:00:00', '300 Service Rd', 'Chicago', 'USA'),
(4, 4, 4, 300.00, '2023-04-01 13:00:00', '2023-04-05 13:00:00', '400 Hero St', 'Houston', 'USA'),
(5, 5, 5, 1000.00, '2023-05-01 14:00:00', '2023-05-06 14:00:00', '500 White St', 'Phoenix', 'USA'),
(6, 6, 6, 750.00, '2023-06-01 15:00:00', '2023-06-07 15:00:00', '600 Enterprise Rd', 'Philadelphia', 'USA'),
(7, 7, 7, 200.00, '2023-07-01 16:00:00', '2023-07-08 16:00:00', '700 Green St', 'San Antonio', 'USA'),
(8, 8, 8, 450.00, '2023-08-01 17:00:00', '2023-08-09 17:00:00', '800 Ocean Rd', 'San Diego', 'USA'),
(9, 9, 9, 600.00, '2023-09-01 18:00:00', '2023-09-10 18:00:00', '900 Apple St', 'Dallas', 'USA'),
(10, 10, 10, 350.00, '2023-10-01 19:00:00', '2023-10-11 19:00:00', '1000 Silver Rd', 'San Jose', 'USA');

INSERT INTO purchase (purchase_id, customer_id, employee_id, total_price, purchase_date, shipped_date, ship_address, ship_city, ship_country) VALUES
(11, 1, 2, 400.00, '2023-10-02 10:00:00', '2023-10-03 10:00:00', '101 Tech St', 'New York', 'USA'),
(12, 1, 3, 250.00, '2023-10-03 11:00:00', '2023-10-04 11:00:00', '102 Tech St', 'New York', 'USA');

-- Inserindo registros na tabela 'purchase_item'
INSERT INTO purchase_item (purchase_id, product_id, unit_price, quantity) VALUES
(1, 1, 25.00, 10),
(2, 2, 50.00, 10),
(3, 3, 15.00, 10),
(4, 4, 30.00, 10),
(5, 5, 100.00, 10),
(6, 6, 75.00, 10),
(7, 7, 20.00, 10),
(8, 8, 45.00, 10),
(9, 9, 60.00, 10),
(10, 10, 35.00, 10);

-- Inserindo registros na tabela 'category'
INSERT INTO category (category_id, name, description, parent_category_id) VALUES
(1, 'Electronics', 'Electronic devices and gadgets', NULL),
(2, 'Home Appliances', 'Appliances for home use', NULL),
(3, 'Clothing', 'Apparel and accessories', NULL),
(4, 'Books', 'Books and magazines', NULL),
(5, 'Sports', 'Sporting goods and equipment', NULL),
(6, 'Toys', 'Toys and games for children', NULL),
(7, 'Beauty', 'Beauty products and accessories', NULL),
(8, 'Furniture', 'Home and office furniture', NULL),
(9, 'Groceries', 'Food and beverages', NULL),
(10, 'Health', 'Healthcare products and medicines', NULL);

-- Inserindo registros na tabela 'product'
INSERT INTO product (product_id, product_name, category_id, quantity_per_unit, unit_price, units_in_stock, discontinued) VALUES
(1, 'Smartphone', 1, '1 unit', 699.99, 50, FALSE),
(2, 'Washing Machine', 2, '1 unit', 499.99, 30, FALSE),
(3, 'T-Shirt', 3, '1 unit', 19.99, 200, FALSE),
(4, 'Novel', 4, '1 unit', 9.99, 100, FALSE),
(5, 'Tennis Racket', 5, '1 unit', 79.99, 40, FALSE),
(6, 'Action Figure', 6, '1 unit', 14.99, 150, FALSE),
(7, 'Lipstick', 7, '1 unit', 24.99, 75, FALSE),
(8, 'Office Chair', 8, '1 unit', 89.99, 20, FALSE),
(9, 'Organic Apples', 9, '1 kg', 3.99, 100, FALSE),
(10, 'Vitamin C', 10, '1 bottle', 12.99, 60, FALSE);