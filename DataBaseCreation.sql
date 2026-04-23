-- CREATE TABLE Customers(
-- 	customer_id BIGINT NOT NULL  PRIMARY KEY,
--     name varchar(255) NOT NULL unique,
--     city varchar(255) NOT NULL
-- );

-- create table Category (
-- 	category_id bigint not null primary key,
--     name varchar(255) not null unique,
--     date_added DATETIME not null default current_timestamp
-- );

-- create table products(
-- 	product_id bigint not null primary key,
--     name varchar(255) not null unique,
--     category_id bigint not null ,
--     price bigint not null,
--     date_added DATETIME not null default current_timestamp,
--     CONSTRAINT  FOREIGN key (category_id) references Category(category_id)
-- );

-- create table orders(
-- 	order_id bigint not null primary key,
--     customer_id bigint not null ,
--     date_added DATETIME not null default current_timestamp,
--     CONSTRAINT  FOREIGN key (customer_id) references Customers(customer_id)
-- );

-- create table order_items(
-- 	order_id bigint not null,
--     product_id bigint not null ,
--     quantity bigint not null,
--     date_added DATETIME not null default current_timestamp,
--     constraint primary key(order_id,product_id),
--     CONSTRAINT  FOREIGN key (order_id) references orders(order_id),
--     CONSTRAINT  FOREIGN key (product_id) references Products(product_id)
-- );

-- ALTER TABLE CUSTOMERS ADD COLUMN date_added datetime not null default current_timestamp;
-- SET FOReiGN_KEY_CHECKS = 0;
-- ALTER TABLE Customers 
-- MODIFY COLUMN customer_id BIGINT NOT NULL AUTO_INCREMENT;

-- ALTER TABLE Category 
-- MODIFY COLUMN category_id BIGINT NOT NULL AUTO_INCREMENT;


-- ALTER TABLE products 
-- MODIFY COLUMN product_id BIGINT NOT NULL AUTO_INCREMENT;

-- ALTER TABLE orders 
-- MODIFY COLUMN order_id BIGINT NOT NULL AUTO_INCREMENT;

-- SET FOReiGN_KEY_CHECKS = 1;

-- ALTER TABLE products DROP FOREIGN KEY products_ibfk_1;

-- ALTER TABLE products 
-- ADD CONSTRAINT fk_category 
-- FOREIGN KEY (category_id) REFERENCES Category(category_id) 
-- ON DELETE CASCADE;

-- ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_1;

-- ALTER TABLE orders 
-- ADD CONSTRAINT fk_customer 
-- FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) 
-- ON DELETE CASCADE;


-- ALTER TABLE order_items DROP FOREIGN KEY order_items_ibfk_1;
-- ALTER TABLE order_items 
-- ADD CONSTRAINT fk_order 
-- FOREIGN KEY (order_id) REFERENCES orders(order_id) 
-- ON DELETE CASCADE;

-- ALTER TABLE order_items DROP FOREIGN KEY order_items_ibfk_2;
-- ALTER TABLE order_items 
-- ADD CONSTRAINT fk_product 
-- FOREIGN KEY (product_id) REFERENCES products(product_id) 
-- ON DELETE CASCADE;

-- SHOW CREATE TABLE products;
-- ALTER TABLE Orders drop column date_added; 
-- ALTER TAbLE orders add column date_bought DATETIME not null default current_timestamp;

-- ALTER TABLE order_items DROP column date_added;





