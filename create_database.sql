-- We want to start fresh, so delete the database if it already exists
DROP DATABASE IF EXISTS calamitous_coffee;

-- Create the database
CREATE database calamitous_coffee;

-- Activate the database
use calamitous_coffee;

-- Creating a table for coffee
CREATE table coffee_table(id int, name varchar(255), region varchar(255), roast varchar(255));

-- Filling up the coffee table
INSERT into coffee_table values (1, "brown water", "montreal", "medium");
INSERT into coffee_table values (2, "pumpkin spice latte", "lost angeles", "light");
INSERT into coffee_table values (3, "5 hour energy shot", "compton", "light");
INSERT into coffee_table values (4, "toxic espresso", "okinawa", "medium");
INSERT into coffee_table values (5, "vodka", "st. petersburg", "light");
INSERT into coffee_table values (6, "liquid caffeine", "oblivion", "heavy");

-- Creating a table for customers
CREATE table customer_table(id int, first_name varchar(255), last_name varchar(255), origin varchar(255), age int, alias varchar(255));

-- Populating customers table
INSERT into customer_table values (1, "michael", "shillyshally", "calgary", 20, "jester");
INSERT into customer_table values (2, "hugh", "mungus", "calgary", 49, "mastadon");
INSERT into customer_table values (3, "ragnar", "ragnarson", "calgary", 300, "viking");
INSERT into customer_table values (4, "bill", "bill", "calgary", 34, "killer");
INSERT into customer_table values (5, "bob", "nightblood", "calgary", 109, "death");
