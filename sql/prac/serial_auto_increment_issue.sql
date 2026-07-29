CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50)
);

--inserting id manually
INSERT INTO products(product_id, product_name)
VALUES (1, 'Mouse');

SELECT * FROM products;

--Check the Sequence Value
SELECT last_value
FROM products_product_id_seq;

--Insert Without Specifying the ID which will give error
INSERT INTO products(product_name)
VALUES ('Keyboard');

--synchronizing the sequence
SELECT setval(
    'products_product_id_seq',
    (SELECT MAX(product_id) FROM products)
);

--inserting again
INSERT INTO products(product_name)
VALUES ('Keyboard');

SELECT * FROM products;