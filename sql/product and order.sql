CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category TEXT,
  price NUMERIC(10,2),
  stock_quantity INT,
  is_available BOOLEAN,
  added_on DATE
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  product_id INT,
  quantity INT,
  order_date DATE,
  customer_name VARCHAR(50),
  payment_method VARCHAR(50),
  CONSTRAINT fk_product FOREIGN KEY (product_id)
  REFERENCES products(product_id) ON DELETE CASCADE
);

select * from orders;
select * from products;

-- Show each order along with the product name and price
SELECT o.order_id, o.customer_name, p.product_name, p.price
FROM orders o
JOIN products p ON o.product_id = p.product_id;

-- Show all products even if they were never ordered
SELECT p.product_name, o.order_id
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id;

-- Show orders for only 'Electronics' category
SELECT o.order_id, o.order_date, p.product_name 
FROM orders o
JOIN products p 
ON o.product_id = p.product_id
WHERE p.category = 'Electronics';

-- 
