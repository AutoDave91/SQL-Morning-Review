-- Create a table for the products

CREATE TABLE shoe(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	category VARCHAR(100),
	price FLOAT
);

-- QUERIES

-- 1. Add columns for the following categories:


ALTER TABLE shoe 
Add COLUMN style VARCHAR(100), 
Add COLUMN itemnum VARCHAR(100), 
Add COLUMN details TEXT, 
Add COLUMN rating FLOAT;


-- 2. Add new products to our table:

INSERT INTO shoe(name, category, price)
VALUES ('LiteRide Clog', 'men', 54.99);

-- 3. Show the range of prices of our products

SELECT * FROM shoe ORDER BY price ASC;

-- 4. Bring back all product items that cost 39.99.

SELECT * FROM shoe WHERE price = 39.99;

-- 5. Add data to columns in specific products

UPDATE shoe SET style='clog', itemnum = '#84926', details = 'Very comfortable', rating = 4.5 WHERE name='LiteRide Clog'

-- 6. Pulls back all the shoes from each separate category. 

SELECT * FROM shoe WHERE category = 'women';

-- 7. Get all crocs rated higher than 4.5.

SELECT * FROM shoe WHERE rating > 4.5

-- 8. Get all crocs that have ‘Classic’ in the name

SELECT * FROM shoe WHERE name LIKE '%Classic%'

-- 9. Get ten clog items in reverse alphabetical order

SELECT * FROM shoe WHERE style = 'clog' ORDER BY name DESC LIMIT 10;

-- 10. Get rid of the details column

ALTER TABLE shoe DROP COLUMN details;

-- 11. Get all mens shoes, showing only their name and price.

SELECT name, price FROM shoe WHERE category = 'mens' 

-- 12. Find lowest rated product, showing just the name, category, price, rating.

SELECT name, category, price, rating  FROM shoe ORDER BY rating ASC LIMIT 1

