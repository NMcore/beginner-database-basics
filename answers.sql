-- ######################################################
1- 
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    age integer,
    height integer,
	city text,
  	favorite_color text
);

2-
INSERT INTO person
(name, favorite_color, city, height, age)
VALUES
-- ('Person 1', 'color-1', 'City-1', 100, 10);
-- ('Person 2', 'color-2', 'City-2', 200, 20);
-- ('Person 3', 'color-3', 'City-3', 300, 30);
-- ('Person 4', 'color-4', 'City-4', 400, 40);
('Person 5', 'color-5', 'City-5', 500, 50);

3- SELECT * FROM person ORDER BY height DESC;
4- SELECT * FROM person ORDER BY height ASC;
5- SELECT * FROM person ORDER BY age DESC;
6- SELECT * FROM person WHERE age > 20;
7- SELECT * FROM person WHERE age = 18;
8- SELECT * FROM person WHERE age < 20 OR age > 30;
9- SELECT * FROM person WHERE age != 27;
10- SELECT * FROM person WHERE favorite_color != 'red';
11- 
SELECT * FROM person 
WHERE favorite_color != 'red' 
AND favorite_color != 'blue';
12-
SELECT * FROM person 
WHERE favorite_color = 'orange' 
OR favorite_color = 'green';
13-
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');
14-
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

-- ######################################################
-- ######################################################
-- ######################################################

1-
CREATE TABLE orders ( 
    order_id SERIAL PRIMARY KEY, 
    person_id FLOAT, 
    product_name VARCHAR(50), 
    product_price FLOAT, 
    quantity FLOAT 
);

2-
INSERT INTO orders 
( person_id, product_name, product_price, quantity ) 
VALUES ( 0100, 'Product', 1.20, 20 );

3- SELECT * FROM orders;

4- SELECT SUM(quantity) FROM orders;

5- SELECT SUM(product_price * quantity) FROM orders;

6- 
SELECT SUM(product_price * quantity) 
FROM orders WHERE person_id = 0100;

-- ######################################################
-- ######################################################
-- ######################################################

1-
INSERT INTO artist ( name ) 
VALUES ( 'Billy' );
-- VALUES ( 'BOBBY' );
-- VALUES ( 'ROCKER' );

2-
SELECT * FROM artist 
ORDER BY name 
DESC LIMIT 10;

3-
SELECT * FROM artist 
ORDER BY name 
ASC LIMIT 5;

4-
SELECT * FROM artist 
WHERE name 
LIKE 'Black%';

5-
SELECT * FROM artist 
WHERE name 
LIKE '%Black%';

-- ######################################################
-- ######################################################
-- ######################################################

1-
SELECT first_name, last_name 
FROM employee 
WHERE city = 'Calgary';

2- SELECT MAX(birth_date) from employee;

3- SELECT MIN(birth_date) from employee;

4- 
-- SELECT * FROM employee (Nancy ID 2)
SELECT * FROM employee WHERE reports_to = 2;

5- SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

-- ######################################################
-- ######################################################
-- ######################################################

1- 
SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';

2- SELECT MAX(total) FROM invoice;

3- SELECT MIN(total) FROM invoice;

4- SELECT * FROM invoice WHERE total > 5;

5- SELECT COUNT(*) FROM invoice WHERE total < 5;

6- 
SELECT COUNT(*) FROM invoice 
WHERE billing_state in ('CA', 'TX', 'AZ');

7- SELECT AVG(total) FROM invoice;

8- SELECT SUM(total) FROM invoice;


DROP TABLE characters

SQL 5.3

CREATE TABLE characters (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT NOT NULL, 
is_force_sensitive BOOL NOT NULL
);



//May 22 SQL from Class

Inner Join: (basically just matches )

SELECT genre.name, track.name FROM track
JOIN genre
ON track.genre_id = genre.genre_id