CREATE TABLE products(
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  sku_code CHAR(8) UNIQUE NOT NULL,
  price NUMERIC(10,2) CHECK (price > 0),
  stock_quantity INT DEFAULT 0 CHECK (stock_quantity >= 0),
  is_available BOOLEAN DEFAULT TRUE,
  category TEXT NOT NULL,
  adden_on DATE DEFAULT CURRENT_DATE,
  last_update TIMESTAMP DEFAULT NOW()
);

INSERT INTO products (name, sku_code, price , stock_quantity, is_available, category)
VALUES
('Wireless Mouse', 'WM123456', 699.99, 50, TRUE, 'Electronics'),
('Bluetooth Speaker', 'BS234567', 1499.00, 30, TRUE, 'Electronics'),
('Laptop Stand', 'LS345678', 799.50, 20, TRUE, 'Accessories'),
('USB-C Hub', 'UC456789', 1299.99, 15, TRUE, 'Accessories'),
('Notebook', 'NB567890', 99.99, 100, TRUE, 'Stationery'),
('Pen Set', 'PS678901', 199.00, 200, TRUE, 'Stationery'),
('Coffee Mug', 'CM789012', 299.00, 75, TRUE, 'Home & Kitchen'),
('LED Desk Lamp', 'DL890123', 899.00, 40, TRUE, 'Home & Kitchen'),
('Yoga Mat', 'YM901234', 499.00, 25, TRUE, 'Fitness'),
('Water Bottle', 'WB012345', 349.00, 60, TRUE, 'Fitness');

select * from products

--Q1. Show the name and price of all products.
select name, price from products;

--Q2. Show all products where the category is 'Electronics'.
select * from products where category = 'Electronics'

--Q3. Group products by category. Show each category once.
select category from products group by category;

--Q4. Show categories that have more than 1 product. (Use after GROUP BY)
select category, count(*) from products
group by category
having count(*) > 1;

--Q5. Show all products sorted by price in ascending order.
select * from products order by price;

--Q6. Show only the first 3 products from the table.
select * from products limit 3;

--Q7. Show product name as "Item_Name" and price as "Item_Price".
select name as Item_name, price as Item_price from products;

--Q8. Show all the unique categories from the products
select distinct category from products; 