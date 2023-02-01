-- We want to start fresh, so delete the database if it already exists
DROP DATABASE IF EXISTS calamitous_coffee;

-- Create the database
CREATE database calamitous_coffee;

-- Activate the database
use calamitous_coffee;

-- Creating a table for coffee
CREATE TABLE coffee_table(
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    region VARCHAR(255) NOT NULL,
    roast VARCHAR(255) NOT NULL
);

-- Filling up the coffee table
INSERT INTO coffee_table VALUES (1, "brown water", "montreal", "medium");
INSERT INTO coffee_table VALUES (2, "pumpkin spice latte", "lost angeles", "light");
INSERT INTO coffee_table VALUES (3, "5 hour energy shot", "compton", "light");
INSERT INTO coffee_table VALUES (4, "toxic espresso", "okinawa", "medium");
INSERT INTO coffee_table VALUES (5, "vodka", "st. petersburg", "light");
INSERT INTO coffee_table VALUES (6, "liquid caffeine", "oblivion", "heavy");

-- Creating a table for customers
CREATE TABLE customer_table(
    id int PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    origin varchar(255) NOT NULL,
    age int NOT NULL,
    alias varchar(255) NOT NULL
);

-- Populating customers table
INSERT INTO customer_table VALUES (1, "michael", "shillyshally", "calgary", 20, "jester");
INSERT INTO customer_table VALUES (2, "hugh", "mungus", "montreal", 49, "mastadon");
INSERT INTO customer_table VALUES (3, "ragnar", "ragnarson", "montreal", 300, "viking");
INSERT INTO customer_table VALUES (4, "bill", "bill", "vancouver", 34, "killer");
INSERT INTO customer_table VALUES (5, "bob", "nightblood", "ottawa", 109, "death");

-- Creating a table for orders
-- This table represents the relation between a coffee and a customer
-- This table doesn't have a primary key, it is a weak identity and is identified by ()
CREATE TABLE order_table(
    coffee_id INT, 
    FOREIGN KEY (coffee_id) REFERENCES coffee_table(id),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES coffee_table(id)
);

-- Populating order table
INSERT INTO order_table VALUES (1, 2);
