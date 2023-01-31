-- We want to start fresh, so delete the database if it already exists
DROP DATABASE IF EXISTS calamitous_coffee;

-- Create the database
create database calamitous_coffee;

-- Activate the database
use calamitous_coffee;

-- Creating a table for coffee
create table coffee_table(id int, name varchar(255), region varchar(255), roast varchar(255));

-- Inserting a record into the coffee table
insert into coffee_table values (1, "brown water", "montreal", "medium");
