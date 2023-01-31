-- Querying everything from the coffee table
SELECT * FROM coffee_table;

-- Querying only the names from the coffee table
SELECT name from coffee_table;

-- Querying everything from the customers table
SELECT * FROM customer_table;

-- Query customers from calgary or vancouver
SELECT * FROM customer_table WHERE origin = "calgary" OR origin = "vancouver";

-- Query customers that have an age less than 50
SELECT * FROM customer_table WHERE age < 50;

-- Query customers not from calgary
SELECT * FROM customer_table WHERE NOT origin = "calgary"
