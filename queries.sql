-- Querying everything from the coffee table
SELECT * FROM coffee_table;

-- Querying only the names from the coffee table
SELECT name from coffee_table;

-- Querying everything from the customers table
SELECT * FROM customer_table;

-- Query customers from calgary or vancouver
SELECT * FROM customer_table WHERE origin = "calgary" OR origin = "vancouver";
